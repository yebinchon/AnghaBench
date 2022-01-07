
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int TrackerServerInfo ;
struct TYPE_4__ {int server_count; int servers; } ;
typedef TYPE_1__ TrackerServerGroup ;


 int FDFS_TRACKER_SERVER_DEF_PORT ;
 int * bsearch (int *,int ,int ,int,int ) ;
 int fdfs_parse_server_info (char*,int ,int *) ;
 int fdfs_server_sock_reset (int *) ;
 int insert_into_sorted_servers (TYPE_1__*,int *) ;
 int memset (int *,int ,int) ;
 int storage_cmp_server_info ;

__attribute__((used)) static int copy_tracker_servers(TrackerServerGroup *pTrackerGroup,
  const char *filename, char **ppTrackerServers)
{
 char **ppSrc;
 char **ppEnd;
 TrackerServerInfo destServer;
    int result;

 memset(&destServer, 0, sizeof(TrackerServerInfo));
    fdfs_server_sock_reset(&destServer);

 ppEnd = ppTrackerServers + pTrackerGroup->server_count;
 pTrackerGroup->server_count = 0;
 for (ppSrc=ppTrackerServers; ppSrc<ppEnd; ppSrc++)
 {
        if ((result=fdfs_parse_server_info(*ppSrc,
                        FDFS_TRACKER_SERVER_DEF_PORT, &destServer)) != 0)
        {
            return result;
        }

  if (bsearch(&destServer, pTrackerGroup->servers,
   pTrackerGroup->server_count,
   sizeof(TrackerServerInfo),
   storage_cmp_server_info) == ((void*)0))
  {
   insert_into_sorted_servers(pTrackerGroup, &destServer);
   pTrackerGroup->server_count++;
  }
 }
 return 0;
}

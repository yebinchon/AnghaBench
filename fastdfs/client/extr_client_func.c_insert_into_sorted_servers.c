
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TrackerServerInfo ;
struct TYPE_3__ {int server_count; int * servers; } ;
typedef TYPE_1__ TrackerServerGroup ;


 int memcpy (int *,int *,int) ;
 scalar_t__ storage_cmp_server_info (int *,int *) ;

__attribute__((used)) static void insert_into_sorted_servers(TrackerServerGroup *pTrackerGroup, TrackerServerInfo *pInsertedServer)

{
 TrackerServerInfo *pDestServer;
 for (pDestServer=pTrackerGroup->servers+pTrackerGroup->server_count;
  pDestServer>pTrackerGroup->servers; pDestServer--)
 {
  if (storage_cmp_server_info(pInsertedServer, pDestServer-1) > 0)
  {
   memcpy(pDestServer, pInsertedServer,
    sizeof(TrackerServerInfo));
   return;
  }

  memcpy(pDestServer, pDestServer-1, sizeof(TrackerServerInfo));
 }

 memcpy(pDestServer, pInsertedServer, sizeof(TrackerServerInfo));
}

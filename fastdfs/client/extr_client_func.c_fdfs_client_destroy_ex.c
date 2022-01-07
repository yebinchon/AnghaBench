
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ server_index; scalar_t__ server_count; int * servers; } ;
typedef TYPE_1__ TrackerServerGroup ;


 int free (int *) ;

void fdfs_client_destroy_ex(TrackerServerGroup *pTrackerGroup)
{
 if (pTrackerGroup->servers != ((void*)0))
 {
  free(pTrackerGroup->servers);
  pTrackerGroup->servers = ((void*)0);

  pTrackerGroup->server_count = 0;
  pTrackerGroup->server_index = 0;
 }
}

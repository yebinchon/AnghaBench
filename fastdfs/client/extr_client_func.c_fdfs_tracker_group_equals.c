
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int TrackerServerInfo ;
struct TYPE_4__ {scalar_t__ server_count; int * servers; } ;
typedef TYPE_1__ TrackerServerGroup ;


 int fdfs_server_equal (int *,int *) ;

bool fdfs_tracker_group_equals(TrackerServerGroup *pGroup1,
        TrackerServerGroup *pGroup2)
{
    TrackerServerInfo *pServer1;
    TrackerServerInfo *pServer2;
    TrackerServerInfo *pEnd1;

    if (pGroup1->server_count != pGroup2->server_count)
    {
        return 0;
    }

    pEnd1 = pGroup1->servers + pGroup1->server_count;
    pServer1 = pGroup1->servers;
    pServer2 = pGroup2->servers;
    while (pServer1 < pEnd1)
    {
        if (!fdfs_server_equal(pServer1, pServer2))
        {
            return 0;
        }

        pServer1++;
        pServer2++;
    }

    return 1;
}

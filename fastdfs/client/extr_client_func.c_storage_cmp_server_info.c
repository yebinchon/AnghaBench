
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int count; int * connections; } ;
typedef TYPE_1__ TrackerServerInfo ;
typedef int ConnectionInfo ;


 int storage_cmp_by_ip_and_port (int *,int *) ;

__attribute__((used)) static int storage_cmp_server_info(const void *p1, const void *p2)
{
 TrackerServerInfo *server1;
 TrackerServerInfo *server2;
 ConnectionInfo *pc1;
 ConnectionInfo *pc2;
 ConnectionInfo *end1;
 int res;

    server1 = (TrackerServerInfo *)p1;
    server2 = (TrackerServerInfo *)p2;

    res = server1->count - server2->count;
    if (res != 0)
    {
        return res;
    }

    if (server1->count == 1)
    {
        return storage_cmp_by_ip_and_port(server1->connections + 0,
                server2->connections + 0);
    }

    end1 = server1->connections + server1->count;
    for (pc1=server1->connections,pc2=server2->connections; pc1<end1; pc1++,pc2++)
    {
        if ((res=storage_cmp_by_ip_and_port(pc1, pc2)) != 0)
        {
            return res;
        }
    }

    return 0;
}

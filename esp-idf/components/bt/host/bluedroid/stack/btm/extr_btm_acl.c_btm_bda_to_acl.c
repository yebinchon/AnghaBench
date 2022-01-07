
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ tBT_TRANSPORT ;
struct TYPE_4__ {scalar_t__ transport; int remote_addr; scalar_t__ in_use; } ;
typedef TYPE_1__ tACL_CONN ;
typedef scalar_t__ UINT16 ;
struct TYPE_5__ {TYPE_1__* acl_db; } ;
typedef int BD_ADDR ;


 int BD_ADDR_LEN ;
 int BTM_TRACE_DEBUG (char*) ;
 scalar_t__ MAX_L2CAP_LINKS ;
 TYPE_2__ btm_cb ;
 int memcmp (int ,int ,int ) ;

tACL_CONN *btm_bda_to_acl (BD_ADDR bda, tBT_TRANSPORT transport)
{
    tACL_CONN *p = &btm_cb.acl_db[0];
    UINT16 xx;
    if (bda) {
        for (xx = 0; xx < MAX_L2CAP_LINKS; xx++, p++) {
            if ((p->in_use) && (!memcmp (p->remote_addr, bda, BD_ADDR_LEN))

                    && p->transport == transport

               ) {
                BTM_TRACE_DEBUG ("btm_bda_to_acl found\n");
                return (p);
            }
        }
    }


    return ((tACL_CONN *)((void*)0));
}

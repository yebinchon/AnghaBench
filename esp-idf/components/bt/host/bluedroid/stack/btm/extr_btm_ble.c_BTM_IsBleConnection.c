
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ transport; } ;
typedef TYPE_1__ tACL_CONN ;
typedef size_t UINT8 ;
typedef int UINT16 ;
struct TYPE_4__ {TYPE_1__* acl_db; } ;
typedef int BOOLEAN ;


 int BTM_TRACE_API (char*,int ) ;
 scalar_t__ BT_TRANSPORT_LE ;
 int FALSE ;
 size_t MAX_L2CAP_LINKS ;
 TYPE_2__ btm_cb ;
 size_t btm_handle_to_acl_index (int ) ;

BOOLEAN BTM_IsBleConnection (UINT16 conn_handle)
{

    UINT8 xx;
    tACL_CONN *p;

    BTM_TRACE_API ("BTM_IsBleConnection: conn_handle: %d", conn_handle);

    xx = btm_handle_to_acl_index (conn_handle);
    if (xx >= MAX_L2CAP_LINKS) {
        return FALSE;
    }

    p = &btm_cb.acl_db[xx];

    return (p->transport == BT_TRANSPORT_LE);



}

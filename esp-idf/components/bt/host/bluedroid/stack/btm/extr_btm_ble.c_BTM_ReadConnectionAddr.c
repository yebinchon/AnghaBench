
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBLE_ADDR_TYPE ;
struct TYPE_3__ {int * conn_addr; int conn_addr_type; } ;
typedef TYPE_1__ tACL_CONN ;
typedef int BD_ADDR ;


 int BD_ADDR_LEN ;
 int BTM_TRACE_DEBUG (char*,int ,int ) ;
 int BTM_TRACE_ERROR (char*) ;
 int BT_TRANSPORT_LE ;
 TYPE_1__* btm_bda_to_acl (int ,int ) ;
 int memcpy (int ,int *,int ) ;

void BTM_ReadConnectionAddr (BD_ADDR remote_bda, BD_ADDR local_conn_addr, tBLE_ADDR_TYPE *p_addr_type)
{
    tACL_CONN *p_acl = btm_bda_to_acl(remote_bda, BT_TRANSPORT_LE);

    if (p_acl == ((void*)0)) {
        BTM_TRACE_ERROR("No connection exist!");
        return;
    }
    memcpy(local_conn_addr, p_acl->conn_addr, BD_ADDR_LEN);
    * p_addr_type = p_acl->conn_addr_type;

    BTM_TRACE_DEBUG ("BTM_ReadConnectionAddr address type: %d addr: 0x%02x",
                     p_acl->conn_addr_type, p_acl->conn_addr[0]);
}

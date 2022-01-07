
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int inq_info; } ;
typedef TYPE_1__ tINQ_DB_ENT ;
typedef scalar_t__ tBT_TRANSPORT ;
typedef int tBTM_STATUS ;
typedef int tBTM_INQ_INFO ;
typedef int tBTM_CMPL_CB ;
typedef int * BD_ADDR ;


 int BTM_EXT_RMT_NAME_TIMEOUT ;
 int BTM_RMT_NAME_EXT ;
 int BTM_TRACE_API (char*,...) ;
 scalar_t__ BT_TRANSPORT_LE ;
 int btm_ble_read_remote_name (int *,int *,int *) ;
 int btm_initiate_rem_name (int *,int *,int ,int ,int *) ;
 TYPE_1__* btm_inq_db_find (int *) ;

tBTM_STATUS BTM_ReadRemoteDeviceName (BD_ADDR remote_bda, tBTM_CMPL_CB *p_cb
                                       , tBT_TRANSPORT transport)
{
    tBTM_INQ_INFO *p_cur = ((void*)0);
    tINQ_DB_ENT *p_i;

    BTM_TRACE_API ("BTM_ReadRemoteDeviceName: bd addr [%02x%02x%02x%02x%02x%02x]\n",
                   remote_bda[0], remote_bda[1], remote_bda[2],
                   remote_bda[3], remote_bda[4], remote_bda[5]);


    if ((p_i = btm_inq_db_find (remote_bda)) != ((void*)0)) {
        p_cur = &p_i->inq_info;
    }
    BTM_TRACE_API ("no device found in inquiry db\n");


    if (transport == BT_TRANSPORT_LE) {
        return btm_ble_read_remote_name(remote_bda, p_cur, p_cb);
    } else

    {
        return (btm_initiate_rem_name (remote_bda, p_cur, BTM_RMT_NAME_EXT,
                                       BTM_EXT_RMT_NAME_TIMEOUT, p_cb));
    }
}

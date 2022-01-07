
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tGATTS_SRV_CHG ;
typedef int UINT16 ;
struct TYPE_2__ {int srv_chg_clt_q; } ;


 int FIXED_QUEUE_MAX_TIMEOUT ;
 int GATT_TRACE_DEBUG (char*) ;
 int fixed_queue_enqueue (int ,int *,int ) ;
 TYPE_1__ gatt_cb ;
 int memcpy (int *,int *,int) ;
 scalar_t__ osi_malloc (int ) ;

tGATTS_SRV_CHG *gatt_add_srv_chg_clt(tGATTS_SRV_CHG *p_srv_chg)
{
    tGATTS_SRV_CHG *p_buf;
    GATT_TRACE_DEBUG ("gatt_add_srv_chg_clt");
    if ((p_buf = (tGATTS_SRV_CHG *)osi_malloc((UINT16)sizeof(tGATTS_SRV_CHG))) != ((void*)0)) {
        GATT_TRACE_DEBUG ("enqueue a srv chg client");
        memcpy(p_buf, p_srv_chg, sizeof(tGATTS_SRV_CHG));
    fixed_queue_enqueue(gatt_cb.srv_chg_clt_q, p_buf, FIXED_QUEUE_MAX_TIMEOUT);
    }

    return p_buf;
}

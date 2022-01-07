
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ state; scalar_t__ hci_handle; } ;
typedef TYPE_2__ tSCO_CONN ;
typedef scalar_t__ UINT16 ;
struct TYPE_4__ {TYPE_2__* sco_db; } ;
struct TYPE_6__ {TYPE_1__ sco_cb; } ;


 int BTM_MAX_SCO_LINKS ;
 scalar_t__ SCO_ST_CONNECTED ;
 TYPE_3__ btm_cb ;

UINT16 btm_find_scb_by_handle (UINT16 handle)
{
    int xx;
    tSCO_CONN *p = &btm_cb.sco_cb.sco_db[0];

    for (xx = 0; xx < BTM_MAX_SCO_LINKS; xx++, p++) {
        if ((p->state == SCO_ST_CONNECTED) && (p->hci_handle == handle)) {
            return (xx);
        }
    }


    return (xx);
}

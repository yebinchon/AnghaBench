
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tSCO_CB ;
struct TYPE_5__ {int desired_sco_mode; int def_esco_parms; int sco_disc_reason; TYPE_1__* sco_db; } ;
struct TYPE_6__ {TYPE_2__ sco_cb; } ;
struct TYPE_4__ {int xmit_data_q; } ;


 int BTM_DEFAULT_SCO_MODE ;
 int BTM_INVALID_SCO_DISC_REASON ;
 int BTM_MAX_SCO_LINKS ;
 int QUEUE_SIZE_MAX ;
 TYPE_3__ btm_cb ;
 int btm_esco_defaults ;
 int fixed_queue_new (int ) ;
 int memset (TYPE_2__*,int ,int) ;

void btm_sco_init (void)
{




    for (int i = 0; i < BTM_MAX_SCO_LINKS; i++) {
        btm_cb.sco_cb.sco_db[i].xmit_data_q = fixed_queue_new(QUEUE_SIZE_MAX);
    }


    btm_cb.sco_cb.sco_disc_reason = BTM_INVALID_SCO_DISC_REASON;

    btm_cb.sco_cb.def_esco_parms = btm_esco_defaults;
    btm_cb.sco_cb.desired_sco_mode = BTM_DEFAULT_SCO_MODE;
}

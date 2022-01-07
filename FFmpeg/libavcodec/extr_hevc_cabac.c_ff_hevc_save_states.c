
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_4__* sps; TYPE_2__* pps; } ;
struct TYPE_11__ {TYPE_1__* HEVClc; int cabac_state; TYPE_3__ ps; } ;
struct TYPE_10__ {int ctb_width; } ;
struct TYPE_8__ {scalar_t__ entropy_coding_sync_enabled_flag; } ;
struct TYPE_7__ {int cabac_state; } ;
typedef TYPE_5__ HEVCContext ;


 int HEVC_CONTEXTS ;
 int memcpy (int ,int ,int ) ;

void ff_hevc_save_states(HEVCContext *s, int ctb_addr_ts)
{
    if (s->ps.pps->entropy_coding_sync_enabled_flag &&
        (ctb_addr_ts % s->ps.sps->ctb_width == 2 ||
         (s->ps.sps->ctb_width == 2 &&
          ctb_addr_ts % s->ps.sps->ctb_width == 0))) {
        memcpy(s->cabac_state, s->HEVClc->cabac_state, HEVC_CONTEXTS);
    }
}

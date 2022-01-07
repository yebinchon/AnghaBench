
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int cabac_state; TYPE_1__* HEVClc; } ;
struct TYPE_4__ {int cabac_state; } ;
typedef TYPE_2__ HEVCContext ;


 int HEVC_CONTEXTS ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static void load_states(HEVCContext *s)
{
    memcpy(s->HEVClc->cabac_state, s->cabac_state, HEVC_CONTEXTS);
}

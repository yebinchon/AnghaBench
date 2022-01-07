
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* oc; TYPE_1__* avctx; } ;
struct TYPE_7__ {scalar_t__ status; int layout_map_tags; int layout_map; int channel_layout; int channels; } ;
struct TYPE_6__ {int channel_layout; int channels; } ;
typedef TYPE_3__ AACContext ;


 scalar_t__ OC_LOCKED ;
 scalar_t__ OC_NONE ;
 int output_configure (TYPE_3__*,int ,int ,scalar_t__,int ) ;

__attribute__((used)) static void pop_output_configuration(AACContext *ac) {
    if (ac->oc[1].status != OC_LOCKED && ac->oc[0].status != OC_NONE) {
        ac->oc[1] = ac->oc[0];
        ac->avctx->channels = ac->oc[1].channels;
        ac->avctx->channel_layout = ac->oc[1].channel_layout;
        output_configure(ac, ac->oc[1].layout_map, ac->oc[1].layout_map_tags,
                         ac->oc[1].status, 0);
    }
}

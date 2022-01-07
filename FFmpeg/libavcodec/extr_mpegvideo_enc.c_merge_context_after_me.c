
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mb_var_sum_temp; int mc_mb_var_sum_temp; int scene_change_score; } ;
typedef int MpegEncContext ;


 int MERGE (int ) ;
 TYPE_1__ me ;

__attribute__((used)) static void merge_context_after_me(MpegEncContext *dst, MpegEncContext *src){
    MERGE(me.scene_change_score);
    MERGE(me.mc_mb_var_sum_temp);
    MERGE(me.mb_var_sum_temp);
}

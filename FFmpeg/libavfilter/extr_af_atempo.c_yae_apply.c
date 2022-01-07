
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_12__ {int xdat; } ;
struct TYPE_11__ {scalar_t__ state; int real_to_complex; int nfrag; } ;
typedef TYPE_1__ ATempoContext ;


 scalar_t__ YAE_ADJUST_POSITION ;
 scalar_t__ YAE_LOAD_FRAGMENT ;
 scalar_t__ YAE_OUTPUT_OVERLAP_ADD ;
 scalar_t__ YAE_RELOAD_FRAGMENT ;
 int av_rdft_calc (int ,int ) ;
 scalar_t__ yae_adjust_position (TYPE_1__*) ;
 int yae_advance_to_next_frag (TYPE_1__*) ;
 TYPE_5__* yae_curr_frag (TYPE_1__*) ;
 int yae_downmix (TYPE_1__*,TYPE_5__*) ;
 scalar_t__ yae_load_frag (TYPE_1__*,int const**,int const*) ;
 scalar_t__ yae_overlap_add (TYPE_1__*,int **,int *) ;

__attribute__((used)) static void
yae_apply(ATempoContext *atempo,
          const uint8_t **src_ref,
          const uint8_t *src_end,
          uint8_t **dst_ref,
          uint8_t *dst_end)
{
    while (1) {
        if (atempo->state == YAE_LOAD_FRAGMENT) {

            if (yae_load_frag(atempo, src_ref, src_end) != 0) {
                break;
            }


            yae_downmix(atempo, yae_curr_frag(atempo));


            av_rdft_calc(atempo->real_to_complex, yae_curr_frag(atempo)->xdat);


            if (!atempo->nfrag) {
                yae_advance_to_next_frag(atempo);
                continue;
            }

            atempo->state = YAE_ADJUST_POSITION;
        }

        if (atempo->state == YAE_ADJUST_POSITION) {

            if (yae_adjust_position(atempo)) {


                atempo->state = YAE_RELOAD_FRAGMENT;
            } else {
                atempo->state = YAE_OUTPUT_OVERLAP_ADD;
            }
        }

        if (atempo->state == YAE_RELOAD_FRAGMENT) {

            if (yae_load_frag(atempo, src_ref, src_end) != 0) {
                break;
            }


            yae_downmix(atempo, yae_curr_frag(atempo));


            av_rdft_calc(atempo->real_to_complex, yae_curr_frag(atempo)->xdat);

            atempo->state = YAE_OUTPUT_OVERLAP_ADD;
        }

        if (atempo->state == YAE_OUTPUT_OVERLAP_ADD) {

            if (yae_overlap_add(atempo, dst_ref, dst_end) != 0) {
                break;
            }


            yae_advance_to_next_frag(atempo);
            atempo->state = YAE_LOAD_FRAGMENT;
        }
    }
}

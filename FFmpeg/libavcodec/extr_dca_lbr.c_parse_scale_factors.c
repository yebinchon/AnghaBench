
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int gb; int avctx; } ;
typedef TYPE_1__ DCALbrDecoder ;


 int AV_LOG_ERROR ;
 int av_log (int ,int ,char*) ;
 scalar_t__ ensure_bits (int *,int) ;
 int ff_dca_vlc_fst_rsd_amp ;
 int ff_dca_vlc_rsd_amp ;
 int ff_dca_vlc_rsd_apprx ;
 int parse_vlc (int *,int *,int) ;

__attribute__((used)) static int parse_scale_factors(DCALbrDecoder *s, uint8_t *scf)
{
    int i, sf, prev, next, dist;


    if (ensure_bits(&s->gb, 20))
        return 0;


    prev = parse_vlc(&s->gb, &ff_dca_vlc_fst_rsd_amp, 2);

    for (sf = 0; sf < 7; sf += dist) {
        scf[sf] = prev;

        if (ensure_bits(&s->gb, 20))
            return 0;


        dist = parse_vlc(&s->gb, &ff_dca_vlc_rsd_apprx, 1) + 1;
        if (dist > 7 - sf) {
            av_log(s->avctx, AV_LOG_ERROR, "Invalid scale factor distance\n");
            return -1;
        }

        if (ensure_bits(&s->gb, 20))
            return 0;


        next = parse_vlc(&s->gb, &ff_dca_vlc_rsd_amp, 2);

        if (next & 1)
            next = prev + ((next + 1) >> 1);
        else
            next = prev - ( next >> 1);


        switch (dist) {
        case 2:
            if (next > prev)
                scf[sf + 1] = prev + ((next - prev) >> 1);
            else
                scf[sf + 1] = prev - ((prev - next) >> 1);
            break;

        case 4:
            if (next > prev) {
                scf[sf + 1] = prev + ( (next - prev) >> 2);
                scf[sf + 2] = prev + ( (next - prev) >> 1);
                scf[sf + 3] = prev + (((next - prev) * 3) >> 2);
            } else {
                scf[sf + 1] = prev - ( (prev - next) >> 2);
                scf[sf + 2] = prev - ( (prev - next) >> 1);
                scf[sf + 3] = prev - (((prev - next) * 3) >> 2);
            }
            break;

        default:
            for (i = 1; i < dist; i++)
                scf[sf + i] = prev + (next - prev) * i / dist;
            break;
        }

        prev = next;
    }

    scf[sf] = next;

    return 0;
}

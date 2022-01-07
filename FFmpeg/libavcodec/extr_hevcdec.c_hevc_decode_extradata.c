
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_10__ {scalar_t__ data; } ;
struct TYPE_9__ {int err_recognition; } ;
struct TYPE_8__ {TYPE_6__** sps_list; } ;
struct TYPE_7__ {TYPE_3__ ps; TYPE_4__* avctx; int apply_defdispwin; int nal_length_size; int is_nalff; int sei; } ;
typedef int HEVCSPS ;
typedef TYPE_1__ HEVCContext ;


 int FF_ARRAY_ELEMS (TYPE_6__**) ;
 int export_stream_params (TYPE_1__*,int const*) ;
 int ff_hevc_decode_extradata (int *,int,TYPE_3__*,int *,int *,int *,int ,int ,TYPE_4__*) ;

__attribute__((used)) static int hevc_decode_extradata(HEVCContext *s, uint8_t *buf, int length, int first)
{
    int ret, i;

    ret = ff_hevc_decode_extradata(buf, length, &s->ps, &s->sei, &s->is_nalff,
                                   &s->nal_length_size, s->avctx->err_recognition,
                                   s->apply_defdispwin, s->avctx);
    if (ret < 0)
        return ret;


    for (i = 0; i < FF_ARRAY_ELEMS(s->ps.sps_list); i++) {
        if (first && s->ps.sps_list[i]) {
            const HEVCSPS *sps = (const HEVCSPS*)s->ps.sps_list[i]->data;
            export_stream_params(s, sps);
            break;
        }
    }

    return 0;
}

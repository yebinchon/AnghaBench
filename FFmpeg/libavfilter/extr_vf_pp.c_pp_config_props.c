
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int format; int h; int w; TYPE_1__* dst; } ;
struct TYPE_6__ {int pp_ctx; } ;
struct TYPE_5__ {TYPE_2__* priv; } ;
typedef TYPE_2__ PPFilterContext ;
typedef TYPE_3__ AVFilterLink ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int PP_CPU_CAPS_AUTO ;
 int PP_FORMAT_411 ;
 int PP_FORMAT_420 ;
 int PP_FORMAT_422 ;
 int PP_FORMAT_440 ;
 int PP_FORMAT_444 ;
 int av_assert0 (int ) ;
 int pp_get_context (int ,int ,int) ;

__attribute__((used)) static int pp_config_props(AVFilterLink *inlink)
{
    int flags = PP_CPU_CAPS_AUTO;
    PPFilterContext *pp = inlink->dst->priv;

    switch (inlink->format) {
    case 137:
    case 131:
    case 135: flags |= PP_FORMAT_420; break;
    case 130:
    case 134: flags |= PP_FORMAT_422; break;
    case 136: flags |= PP_FORMAT_411; break;
    case 138:
    case 128:
    case 132: flags |= PP_FORMAT_444; break;
    case 129:
    case 133: flags |= PP_FORMAT_440; break;
    default: av_assert0(0);
    }

    pp->pp_ctx = pp_get_context(inlink->w, inlink->h, flags);
    if (!pp->pp_ctx)
        return AVERROR(ENOMEM);
    return 0;
}

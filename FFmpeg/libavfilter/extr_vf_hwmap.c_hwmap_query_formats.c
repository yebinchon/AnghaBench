
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__** outputs; TYPE_1__** inputs; } ;
struct TYPE_6__ {int in_formats; } ;
struct TYPE_5__ {int out_formats; } ;
typedef TYPE_3__ AVFilterContext ;


 int AVMEDIA_TYPE_VIDEO ;
 int ff_all_formats (int ) ;
 int ff_formats_ref (int ,int *) ;

__attribute__((used)) static int hwmap_query_formats(AVFilterContext *avctx)
{
    int ret;

    if ((ret = ff_formats_ref(ff_all_formats(AVMEDIA_TYPE_VIDEO),
                              &avctx->inputs[0]->out_formats)) < 0 ||
        (ret = ff_formats_ref(ff_all_formats(AVMEDIA_TYPE_VIDEO),
                              &avctx->outputs[0]->in_formats)) < 0)
        return ret;

    return 0;
}

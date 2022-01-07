
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* par_out; TYPE_2__* par_in; } ;
struct TYPE_7__ {int extradata_size; scalar_t__ extradata; } ;
struct TYPE_6__ {char* extradata; } ;
typedef TYPE_3__ AVBSFContext ;


 int AV_LOG_DEBUG ;
 int av_log (TYPE_3__*,int ,char*) ;
 int scan_buffer (scalar_t__,int ,int*,int *,int *) ;

__attribute__((used)) static int mpeg4_unpack_bframes_init(AVBSFContext *ctx)
{
    if (ctx->par_in->extradata) {
        int pos_p_ext = -1;
        scan_buffer(ctx->par_in->extradata, ctx->par_in->extradata_size, &pos_p_ext, ((void*)0), ((void*)0));
        if (pos_p_ext >= 0) {
            av_log(ctx, AV_LOG_DEBUG,
                   "Updating DivX userdata (remove trailing 'p') in extradata.\n");
            ctx->par_out->extradata[pos_p_ext] = '\0';
        }
    }

    return 0;
}

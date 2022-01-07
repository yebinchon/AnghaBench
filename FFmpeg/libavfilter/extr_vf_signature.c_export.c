
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int filename ;
struct TYPE_7__ {TYPE_1__* priv; } ;
struct TYPE_6__ {int nb_inputs; scalar_t__ format; int filename; } ;
typedef int StreamContext ;
typedef TYPE_1__ SignatureContext ;
typedef TYPE_2__ AVFilterContext ;


 int AVERROR (int ) ;
 int EINVAL ;
 scalar_t__ FORMAT_XML ;
 int av_assert0 (int) ;
 scalar_t__ av_get_frame_filename (char*,int,int ,int) ;
 int av_strlcpy (char*,int ,int) ;
 int binary_export (TYPE_2__*,int *,char*) ;
 int xml_export (TYPE_2__*,int *,char*) ;

__attribute__((used)) static int export(AVFilterContext *ctx, StreamContext *sc, int input)
{
    SignatureContext* sic = ctx->priv;
    char filename[1024];

    if (sic->nb_inputs > 1) {

        av_assert0(av_get_frame_filename(filename, sizeof(filename), sic->filename, input) == 0);
    } else {
        if (av_strlcpy(filename, sic->filename, sizeof(filename)) >= sizeof(filename))
            return AVERROR(EINVAL);
    }
    if (sic->format == FORMAT_XML) {
        return xml_export(ctx, sc, filename);
    } else {
        return binary_export(ctx, sc, filename);
    }
}

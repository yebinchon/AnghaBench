
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {char* class_name; } ;
struct TYPE_6__ {TYPE_2__* priv_class; } ;
typedef TYPE_1__ AVCodec ;


 TYPE_1__* av_codec_next (TYPE_1__*) ;
 TYPE_2__* avcodec_get_class () ;
 int printf (char*,...) ;
 int show_opts (TYPE_2__*) ;

__attribute__((used)) static void show_codec_opts(void)
{
    AVCodec *c = ((void*)0);

    printf("@section Generic codec AVOptions\n");
    show_opts(avcodec_get_class());

    printf("@section Codec-specific AVOptions\n");
    while ((c = av_codec_next(c))) {
        if (!c->priv_class)
            continue;
        printf("@subsection %s AVOptions\n", c->priv_class->class_name);
        show_opts(c->priv_class);
    }
}

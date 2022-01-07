
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; char* long_name; char* extensions; scalar_t__ priv_class; } ;
typedef TYPE_1__ AVInputFormat ;


 int AV_LOG_ERROR ;
 int AV_OPT_FLAG_DECODING_PARAM ;
 TYPE_1__* av_find_input_format (char const*) ;
 int av_log (int *,int ,char*,char const*) ;
 int printf (char*,char*,...) ;
 int show_help_children (scalar_t__,int ) ;

__attribute__((used)) static void show_help_demuxer(const char *name)
{
    const AVInputFormat *fmt = av_find_input_format(name);

    if (!fmt) {
        av_log(((void*)0), AV_LOG_ERROR, "Unknown format '%s'.\n", name);
        return;
    }

    printf("Demuxer %s [%s]:\n", fmt->name, fmt->long_name);

    if (fmt->extensions)
        printf("    Common extensions: %s.\n", fmt->extensions);

    if (fmt->priv_class)
        show_help_children(fmt->priv_class, AV_OPT_FLAG_DECODING_PARAM);
}

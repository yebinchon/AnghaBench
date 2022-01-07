
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* codecpar; int index; } ;
struct TYPE_6__ {char* filters; scalar_t__ filters_script; TYPE_3__* st; } ;
struct TYPE_5__ {scalar_t__ codec_type; } ;
typedef TYPE_2__ OutputStream ;
typedef int OptionsContext ;
typedef TYPE_3__ AVStream ;
typedef int AVFormatContext ;


 scalar_t__ AVMEDIA_TYPE_VIDEO ;
 int AV_LOG_ERROR ;
 int av_log (int *,int ,char*,int ,int ) ;
 char* av_strdup (char*) ;
 int exit_program (int) ;
 int nb_output_files ;
 char* read_file (scalar_t__) ;

__attribute__((used)) static char *get_ost_filters(OptionsContext *o, AVFormatContext *oc,
                             OutputStream *ost)
{
    AVStream *st = ost->st;

    if (ost->filters_script && ost->filters) {
        av_log(((void*)0), AV_LOG_ERROR, "Both -filter and -filter_script set for "
               "output stream #%d:%d.\n", nb_output_files, st->index);
        exit_program(1);
    }

    if (ost->filters_script)
        return read_file(ost->filters_script);
    else if (ost->filters)
        return av_strdup(ost->filters);

    return av_strdup(st->codecpar->codec_type == AVMEDIA_TYPE_VIDEO ?
                     "null" : "anull");
}

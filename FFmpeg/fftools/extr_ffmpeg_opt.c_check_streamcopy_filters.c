
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum AVMediaType { ____Placeholder_AVMediaType } AVMediaType ;
struct TYPE_3__ {int index; int file_index; scalar_t__ filters_script; scalar_t__ filters; } ;
typedef TYPE_1__ OutputStream ;
typedef int OptionsContext ;
typedef int AVFormatContext ;


 int AV_LOG_ERROR ;
 int av_get_media_type_string (int) ;
 int av_log (int *,int ,char*,char*,scalar_t__,int ,int ,int ) ;
 int exit_program (int) ;

__attribute__((used)) static void check_streamcopy_filters(OptionsContext *o, AVFormatContext *oc,
                                     const OutputStream *ost, enum AVMediaType type)
{
    if (ost->filters_script || ost->filters) {
        av_log(((void*)0), AV_LOG_ERROR,
               "%s '%s' was defined for %s output stream %d:%d but codec copy was selected.\n"
               "Filtering and streamcopy cannot be used together.\n",
               ost->filters ? "Filtergraph" : "Filtergraph script",
               ost->filters ? ost->filters : ost->filters_script,
               av_get_media_type_string(type), ost->file_index, ost->index);
        exit_program(1);
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVColorRange { ____Placeholder_AVColorRange } AVColorRange ;
typedef int WriterContext ;


 int AVCOL_RANGE_UNSPECIFIED ;
 char* av_color_range_name (int) ;
 int print_str (char*,char const*) ;
 int print_str_opt (char*,char*) ;

__attribute__((used)) static void print_color_range(WriterContext *w, enum AVColorRange color_range)
{
    const char *val = av_color_range_name(color_range);
    if (!val || color_range == AVCOL_RANGE_UNSPECIFIED) {
        print_str_opt("color_range", "unknown");
    } else {
        print_str("color_range", val);
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVColorPrimaries { ____Placeholder_AVColorPrimaries } AVColorPrimaries ;
typedef int WriterContext ;


 int AVCOL_PRI_UNSPECIFIED ;
 char* av_color_primaries_name (int) ;
 int print_str (char*,char const*) ;
 int print_str_opt (char*,char*) ;

__attribute__((used)) static void print_primaries(WriterContext *w, enum AVColorPrimaries color_primaries)
{
    const char *val = av_color_primaries_name(color_primaries);
    if (!val || color_primaries == AVCOL_PRI_UNSPECIFIED) {
        print_str_opt("color_primaries", "unknown");
    } else {
        print_str("color_primaries", val);
    }
}

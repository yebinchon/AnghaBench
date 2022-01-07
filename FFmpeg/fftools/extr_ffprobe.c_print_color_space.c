
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVColorSpace { ____Placeholder_AVColorSpace } AVColorSpace ;
typedef int WriterContext ;


 int AVCOL_SPC_UNSPECIFIED ;
 char* av_color_space_name (int) ;
 int print_str (char*,char const*) ;
 int print_str_opt (char*,char*) ;

__attribute__((used)) static void print_color_space(WriterContext *w, enum AVColorSpace color_space)
{
    const char *val = av_color_space_name(color_space);
    if (!val || color_space == AVCOL_SPC_UNSPECIFIED) {
        print_str_opt("color_space", "unknown");
    } else {
        print_str("color_space", val);
    }
}

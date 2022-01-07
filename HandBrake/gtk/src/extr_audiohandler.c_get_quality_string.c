
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdouble ;


 char* ghb_format_quality (char*,int,int ) ;

__attribute__((used)) static char * get_quality_string(int codec, gdouble quality)
{
    char *s_quality = ghb_format_quality("", codec, quality);
    return s_quality;
}

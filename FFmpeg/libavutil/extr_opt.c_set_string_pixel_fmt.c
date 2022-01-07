
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int AVOption ;


 int AV_PIX_FMT_NB ;
 int av_get_pix_fmt ;
 int set_string_fmt (void*,int const*,char const*,int *,int ,int ,char*) ;

__attribute__((used)) static int set_string_pixel_fmt(void *obj, const AVOption *o, const char *val, uint8_t *dst)
{
    return set_string_fmt(obj, o, val, dst,
                          AV_PIX_FMT_NB, av_get_pix_fmt, "pixel format");
}

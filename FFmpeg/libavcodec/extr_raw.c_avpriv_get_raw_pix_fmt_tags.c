
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct PixelFormatTag {int dummy; } ;


 struct PixelFormatTag const* ff_raw_pix_fmt_tags ;

const struct PixelFormatTag *avpriv_get_raw_pix_fmt_tags(void)
{
    return ff_raw_pix_fmt_tags;
}

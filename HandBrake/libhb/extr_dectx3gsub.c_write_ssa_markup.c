
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int faceStyleFlags; int textColorRGBA; } ;
typedef TYPE_1__ StyleRecord ;


 int BOLD ;
 int HB_RGB_TO_BGR (int) ;
 int ITALIC ;
 int UNDERLINE ;
 int sprintf (char*,char*,...) ;
 int strlen (char*) ;

__attribute__((used)) static int write_ssa_markup(char *dst, StyleRecord *style)
{
    if (style == ((void*)0))
    {
        sprintf(dst, "{\\r}");
        return strlen(dst);
    }
    sprintf(dst, "{\\i%d\\b%d\\u%d\\1c&H%X&\\1a&H%02X&}",
        !!(style->faceStyleFlags & ITALIC),
        !!(style->faceStyleFlags & BOLD),
        !!(style->faceStyleFlags & UNDERLINE),
        HB_RGB_TO_BGR(style->textColorRGBA >> 8),
        255 - (style->textColorRGBA & 0xFF));

    return strlen(dst);
}

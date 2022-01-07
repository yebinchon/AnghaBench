
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int width; } ;


 int HU_FONTSIZE ;
 int HU_FONTSTART ;
 scalar_t__ SHORT (int ) ;
 TYPE_1__** hu_font ;
 int strlen (char*) ;
 int toupper (char) ;

int M_StringWidth(char* string)
{
    int i;
    int w = 0;
    int c;

    for (i = 0;i < strlen(string);i++)
    {
 c = toupper(string[i]) - HU_FONTSTART;
 if (c < 0 || c >= HU_FONTSIZE)
     w += 4;
 else
     w += SHORT (hu_font[c]->width);
    }

    return w;
}

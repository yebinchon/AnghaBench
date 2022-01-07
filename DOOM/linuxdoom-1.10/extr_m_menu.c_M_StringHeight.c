
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int height; } ;


 int SHORT (int ) ;
 TYPE_1__** hu_font ;
 int strlen (char*) ;

int M_StringHeight(char* string)
{
    int i;
    int h;
    int height = SHORT(hu_font[0]->height);

    h = height;
    for (i = 0;i < strlen(string);i++)
 if (string[i] == '\n')
     h += height;

    return h;
}

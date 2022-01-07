
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eia608_screen {int empty; scalar_t__* row_used; scalar_t__** fonts; scalar_t__** colors; scalar_t__** characters; } ;


 size_t CC608_SCREEN_WIDTH ;
 char FONT_REGULAR ;
 char default_color ;
 int memset (scalar_t__*,char,size_t) ;

__attribute__((used)) static void clear_eia608_cc_buffer (struct eia608_screen *data)
{
    int i;

    for (i=0;i<15;i++)
    {
        memset(data->characters[i],' ',CC608_SCREEN_WIDTH);
        data->characters[i][CC608_SCREEN_WIDTH]=0;
        memset (data->colors[i],default_color,CC608_SCREEN_WIDTH+1);
        memset (data->fonts[i],FONT_REGULAR,CC608_SCREEN_WIDTH+1);
        data->row_used[i]=0;
    }
    data->empty=1;
}

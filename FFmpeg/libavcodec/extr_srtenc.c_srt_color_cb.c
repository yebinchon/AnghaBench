
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int srt_print (void*,char*,unsigned int) ;
 int srt_stack_push_pop (void*,float,int) ;

__attribute__((used)) static void srt_color_cb(void *priv, unsigned int color, unsigned int color_id)
{
    if (color_id > 1)
        return;
    srt_stack_push_pop(priv, 'f', color == 0xFFFFFFFF);
    if (color != 0xFFFFFFFF)
        srt_print(priv, "<font color=\"#%06x\">",
              (color & 0xFF0000) >> 16 | color & 0xFF00 | (color & 0xFF) << 16);
}

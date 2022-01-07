
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int srt_print (void*,char*,int) ;
 int srt_stack_push_pop (void*,float,int) ;

__attribute__((used)) static void srt_font_size_cb(void *priv, int size)
{
    srt_stack_push_pop(priv, 'f', size < 0);
    if (size >= 0)
        srt_print(priv, "<font size=\"%d\">", size);
}

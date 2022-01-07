
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int srt_print (void*,char*,char) ;
 int srt_stack_push_pop (void*,char,int) ;

__attribute__((used)) static void srt_style_cb(void *priv, char style, int close)
{
    srt_stack_push_pop(priv, style, close);
    if (!close)
        srt_print(priv, "<%c>", style);
}

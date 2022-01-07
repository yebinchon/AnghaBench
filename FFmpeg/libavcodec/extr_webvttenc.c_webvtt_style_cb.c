
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int webvtt_print (void*,char*,char) ;
 int webvtt_stack_push_pop (void*,char,int) ;

__attribute__((used)) static void webvtt_style_cb(void *priv, char style, int close)
{
    if (style == 's')
        return;

    webvtt_stack_push_pop(priv, style, close);
    if (!close)
        webvtt_print(priv, "<%c>", style);
}

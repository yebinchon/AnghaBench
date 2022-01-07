
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int webvtt_stack_push_pop (void*,int ,int) ;
 int webvtt_style_apply (void*,char const*) ;

__attribute__((used)) static void webvtt_cancel_overrides_cb(void *priv, const char *style)
{
    webvtt_stack_push_pop(priv, 0, 1);
    webvtt_style_apply(priv, style);
}

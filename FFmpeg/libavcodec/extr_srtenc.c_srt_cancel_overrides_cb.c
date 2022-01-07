
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int srt_stack_push_pop (void*,int ,int) ;
 int srt_style_apply (void*,char const*) ;

__attribute__((used)) static void srt_cancel_overrides_cb(void *priv, const char *style)
{
    srt_stack_push_pop(priv, 0, 1);
    srt_style_apply(priv, style);
}

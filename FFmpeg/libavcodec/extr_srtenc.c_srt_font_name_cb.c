
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int srt_print (void*,char*,char const*) ;
 int srt_stack_push_pop (void*,float,int) ;

__attribute__((used)) static void srt_font_name_cb(void *priv, const char *name)
{
    srt_stack_push_pop(priv, 'f', !name);
    if (name)
        srt_print(priv, "<font face=\"%s\">", name);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int srt_stack_push_pop (void*,int ,int) ;

__attribute__((used)) static void srt_end_cb(void *priv)
{
    srt_stack_push_pop(priv, 0, 1);
}

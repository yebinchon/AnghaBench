
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int webvtt_stack_push_pop (void*,int ,int) ;

__attribute__((used)) static void webvtt_end_cb(void *priv)
{
    webvtt_stack_push_pop(priv, 0, 1);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int platform_switch_has_focus ;

__attribute__((used)) static bool switch_ctx_has_focus(void *data)
{
    (void)data;
    return platform_switch_has_focus;
}

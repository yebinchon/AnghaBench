
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_vsync ;

__attribute__((used)) static void gx_set_nonblock_state(void *data, bool state)
{
   (void)data;
   g_vsync = !state;
}

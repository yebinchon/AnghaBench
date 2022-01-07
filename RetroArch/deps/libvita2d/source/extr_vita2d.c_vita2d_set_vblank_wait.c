
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vblank_wait ;

void vita2d_set_vblank_wait(int enable)
{
 vblank_wait = enable;
}

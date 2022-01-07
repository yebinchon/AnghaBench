
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pemu_forced_frame (int ,int) ;

void pemu_loop_end(void)
{

 pemu_forced_frame(0, 1);
}

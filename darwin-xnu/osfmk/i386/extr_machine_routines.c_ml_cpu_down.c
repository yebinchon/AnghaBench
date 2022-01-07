
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int i386_deactivate_cpu () ;

void
ml_cpu_down(void)
{
 i386_deactivate_cpu();

 return;
}

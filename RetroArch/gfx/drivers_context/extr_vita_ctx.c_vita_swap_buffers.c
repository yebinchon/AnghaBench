
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vglStartRendering () ;
 int vglStopRendering () ;

__attribute__((used)) static void vita_swap_buffers(void *data, void *data2)
{
   (void)data;
   vglStopRendering();
   vglStartRendering();
}

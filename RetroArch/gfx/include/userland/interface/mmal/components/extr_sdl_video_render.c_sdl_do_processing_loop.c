
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MMAL_COMPONENT_T ;


 scalar_t__ sdl_do_processing (int *) ;

__attribute__((used)) static void sdl_do_processing_loop(MMAL_COMPONENT_T *component)
{
   while (sdl_do_processing(component));
}

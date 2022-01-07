
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MMAL_COMPONENT_T ;


 scalar_t__ scheduler_component_process_buffers (int *) ;

__attribute__((used)) static void scheduler_component_action(MMAL_COMPONENT_T *component)
{

   while (scheduler_component_process_buffers(component));
}

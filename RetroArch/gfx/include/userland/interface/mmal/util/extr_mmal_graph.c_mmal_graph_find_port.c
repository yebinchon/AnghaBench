
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int input_num; unsigned int output_num; unsigned int clock_num; int * control; int ** clock; int ** output; int ** input; int name; } ;
struct TYPE_3__ {unsigned int component_num; TYPE_2__** component; } ;
typedef scalar_t__ MMAL_PORT_TYPE_T ;
typedef int MMAL_PORT_T ;
typedef int MMAL_GRAPH_T ;
typedef TYPE_1__ MMAL_GRAPH_PRIVATE_T ;
typedef TYPE_2__ MMAL_COMPONENT_T ;


 int LOG_INFO (char*,char const*,unsigned int) ;
 scalar_t__ MMAL_PORT_TYPE_CLOCK ;
 scalar_t__ MMAL_PORT_TYPE_CONTROL ;
 scalar_t__ MMAL_PORT_TYPE_INPUT ;
 scalar_t__ MMAL_PORT_TYPE_OUTPUT ;
 int vcos_assert (int ) ;
 scalar_t__ vcos_strcasecmp (char const*,int ) ;

MMAL_PORT_T *mmal_graph_find_port(MMAL_GRAPH_T *graph,
                                  const char *name,
                                  MMAL_PORT_TYPE_T type,
                                  unsigned index)
{
   unsigned i;
   MMAL_GRAPH_PRIVATE_T *private = (MMAL_GRAPH_PRIVATE_T *)graph;
   for (i=0; i<private->component_num; i++)
   {
      MMAL_COMPONENT_T *comp = private->component[i];
      if (vcos_strcasecmp(name, comp->name) == 0)
      {
         unsigned num;
         MMAL_PORT_T **ports;
         if (type == MMAL_PORT_TYPE_INPUT) {
            num = comp->input_num;
            ports = comp->input;
         }
         else if (type == MMAL_PORT_TYPE_OUTPUT) {
            num = comp->output_num;
            ports = comp->output;
         }
         else if (type == MMAL_PORT_TYPE_CLOCK) {
            num = comp->clock_num;
            ports = comp->clock;
         }
         else if (type == MMAL_PORT_TYPE_CONTROL) {
            num = 1;
            ports = &comp->control;
         }
         else {
            vcos_assert(0);
            return ((void*)0);
         }
         if (index < num)
         {

            return ports[index];
         }
      }
   }
   LOG_INFO("port %s:%d not found", name, index);
   return ((void*)0);
}

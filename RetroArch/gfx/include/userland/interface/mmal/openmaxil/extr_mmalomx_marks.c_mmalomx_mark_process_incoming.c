
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_17__ {scalar_t__ direction; scalar_t__ marks_num; } ;
struct TYPE_16__ {unsigned int ports_num; TYPE_9__* ports; } ;
struct TYPE_15__ {scalar_t__ marks_num; scalar_t__ direction; int index; } ;
struct TYPE_14__ {int pMarkData; scalar_t__ hMarkTargetComponent; } ;
struct TYPE_13__ {int member_1; scalar_t__ member_0; int pMarkData; scalar_t__ hMarkTargetComponent; } ;
typedef TYPE_1__ OMX_MARKTYPE ;
typedef TYPE_2__ OMX_BUFFERHEADERTYPE ;
typedef TYPE_3__ MMALOMX_PORT_T ;
typedef TYPE_4__ MMALOMX_COMPONENT_T ;


 scalar_t__ MAX_MARKS_NUM ;
 int MMALOMX_GET_MARK (TYPE_3__*,TYPE_1__*) ;
 int MMALOMX_PUT_MARK (TYPE_9__*,TYPE_1__*) ;
 int OMX_CommandMarkBuffer ;
 scalar_t__ OMX_DirInput ;
 scalar_t__ OMX_DirOutput ;
 int OMX_EventCmdComplete ;
 int mmalomx_callback_event_handler (TYPE_4__*,int ,int ,int ,int *) ;

void mmalomx_mark_process_incoming(MMALOMX_COMPONENT_T *component,
   MMALOMX_PORT_T *port, OMX_BUFFERHEADERTYPE *omx_buffer)
{

   if (!omx_buffer->hMarkTargetComponent && port->marks_num > 0 &&
       port->direction == OMX_DirInput)
   {
      OMX_MARKTYPE *mark;
      MMALOMX_GET_MARK(port, mark);
      omx_buffer->hMarkTargetComponent = mark->hMarkTargetComponent;
      omx_buffer->pMarkData = mark->pMarkData;

      mmalomx_callback_event_handler(component, OMX_EventCmdComplete,
         OMX_CommandMarkBuffer, port->index, ((void*)0));
   }


   if (port->direction == OMX_DirInput && omx_buffer->hMarkTargetComponent)
   {
      OMX_MARKTYPE mark = {omx_buffer->hMarkTargetComponent, omx_buffer->pMarkData};
      unsigned int i;
      for (i = 0; i < component->ports_num; i++)
      {
         if (component->ports[i].direction != OMX_DirOutput ||
             component->ports[i].marks_num >= MAX_MARKS_NUM)
            continue;

         MMALOMX_PUT_MARK((&component->ports[i]), (&mark));
      }
   }
}

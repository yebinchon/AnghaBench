
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* EventHandler ) (int ,int ,scalar_t__,scalar_t__,scalar_t__,int ) ;} ;
struct TYPE_6__ {int callbacks_data; int omx; TYPE_1__ callbacks; } ;
typedef scalar_t__ OMX_U32 ;
typedef int OMX_PTR ;
typedef int OMX_HANDLETYPE ;
typedef scalar_t__ OMX_EVENTTYPE ;
typedef int OMX_ERRORTYPE ;
typedef TYPE_2__ MMALOMX_COMPONENT_T ;


 int LOG_DEBUG (char*,TYPE_2__*,int,unsigned int,unsigned int,int ) ;
 int stub1 (int ,int ,scalar_t__,scalar_t__,scalar_t__,int ) ;

OMX_ERRORTYPE mmalomx_callback_event_handler(
   MMALOMX_COMPONENT_T *component,
   OMX_EVENTTYPE eEvent,
   OMX_U32 nData1,
   OMX_U32 nData2,
   OMX_PTR pEventData)
{
   LOG_DEBUG("component %p, eEvent %i, nData1 %u, nData2 %u, pEventData %p",
             component, (int)eEvent, (unsigned int)nData1, (unsigned int)nData2, pEventData);
   return component->callbacks.EventHandler((OMX_HANDLETYPE)&component->omx,
         component->callbacks_data, eEvent, nData1, nData2, pEventData);
}

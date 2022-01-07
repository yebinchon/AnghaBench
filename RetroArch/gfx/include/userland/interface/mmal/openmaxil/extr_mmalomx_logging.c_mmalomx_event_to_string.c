
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ OMX_EVENTTYPE ;


 size_t MMALOMX_SAT (int,int ,int) ;
 scalar_t__ vcos_countof (char const**) ;

const char *mmalomx_event_to_string(OMX_EVENTTYPE event)
{
  static const char *names[] = {
    "OMX_EventCmdComplete", "OMX_EventError", "OMX_EventMark",
    "OMX_EventPortSettingsChanged", "OMX_EventBufferFlag",
    "OMX_EventResourcesAcquired", "OMX_EventComponentResumed",
    "OMX_EventDynamicResourcesAvailable", "OMX_EventPortFormatDetected",
    "OMX_Event unknown"
  };

  return names[MMALOMX_SAT((int)event, 0, (int)vcos_countof(names)-1)];
}

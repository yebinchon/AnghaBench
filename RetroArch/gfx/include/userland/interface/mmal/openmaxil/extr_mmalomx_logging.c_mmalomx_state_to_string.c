
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ OMX_STATETYPE ;


 size_t MMALOMX_SAT (int,int ,int) ;
 scalar_t__ vcos_countof (char const**) ;

const char *mmalomx_state_to_string(OMX_STATETYPE state)
{
  static const char *names[] = {
    "OMX_StateInvalid", "OMX_StateLoaded", "OMX_StateIdle",
    "OMX_StateExecuting", "OMX_StatePause", "OMX_StateWaitForResources",
    "OMX_State unknown"
  };

  return names[MMALOMX_SAT((int)state, 0, (int)vcos_countof(names)-1)];
}

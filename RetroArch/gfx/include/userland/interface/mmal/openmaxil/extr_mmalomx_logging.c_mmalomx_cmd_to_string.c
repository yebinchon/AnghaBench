
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ OMX_COMMANDTYPE ;


 size_t MMALOMX_SAT (int,int ,int) ;
 scalar_t__ vcos_countof (char const**) ;

const char *mmalomx_cmd_to_string(OMX_COMMANDTYPE cmd)
{
  static const char *names[] = {
    "OMX_CommandStateSet", "OMX_CommandFlush", "OMX_CommandPortDisable",
    "OMX_CommandPortEnable", "OMX_CommandMarkBuffer", "OMX_Command unknown"
  };

  return names[MMALOMX_SAT((int)cmd, 0, (int)vcos_countof(names)-1)];
}

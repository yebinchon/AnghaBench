
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Handle ;


 int * gpuCmdBuf ;
 scalar_t__ gpuCmdBufOffset ;
 scalar_t__ gpuCmdBufSize ;

void GPU_Init(Handle *gsphandle)
{
 gpuCmdBuf=((void*)0);
 gpuCmdBufSize=0;
 gpuCmdBufOffset=0;
}

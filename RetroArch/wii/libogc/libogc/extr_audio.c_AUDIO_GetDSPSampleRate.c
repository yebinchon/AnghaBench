
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 size_t AI_CONTROL ;
 int _SHIFTR (int ,int,int) ;
 int * _aiReg ;

u32 AUDIO_GetDSPSampleRate()
{
 return (_SHIFTR(_aiReg[AI_CONTROL],6,1))^1;
}

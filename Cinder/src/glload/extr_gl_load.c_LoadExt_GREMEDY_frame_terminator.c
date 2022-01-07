
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLFRAMETERMINATORGREMEDYPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glFrameTerminatorGREMEDY ;

__attribute__((used)) static int LoadExt_GREMEDY_frame_terminator()
{
 int numFailed = 0;
 _funcptr_glFrameTerminatorGREMEDY = (PFNGLFRAMETERMINATORGREMEDYPROC)IntGetProcAddress("glFrameTerminatorGREMEDY");
 if(!_funcptr_glFrameTerminatorGREMEDY) ++numFailed;
 return numFailed;
}

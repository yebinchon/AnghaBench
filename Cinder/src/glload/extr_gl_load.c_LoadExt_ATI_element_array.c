
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLELEMENTPOINTERATIPROC ;
typedef scalar_t__ PFNGLDRAWRANGEELEMENTARRAYATIPROC ;
typedef scalar_t__ PFNGLDRAWELEMENTARRAYATIPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glDrawElementArrayATI ;
 scalar_t__ _funcptr_glDrawRangeElementArrayATI ;
 scalar_t__ _funcptr_glElementPointerATI ;

__attribute__((used)) static int LoadExt_ATI_element_array()
{
 int numFailed = 0;
 _funcptr_glDrawElementArrayATI = (PFNGLDRAWELEMENTARRAYATIPROC)IntGetProcAddress("glDrawElementArrayATI");
 if(!_funcptr_glDrawElementArrayATI) ++numFailed;
 _funcptr_glDrawRangeElementArrayATI = (PFNGLDRAWRANGEELEMENTARRAYATIPROC)IntGetProcAddress("glDrawRangeElementArrayATI");
 if(!_funcptr_glDrawRangeElementArrayATI) ++numFailed;
 _funcptr_glElementPointerATI = (PFNGLELEMENTPOINTERATIPROC)IntGetProcAddress("glElementPointerATI");
 if(!_funcptr_glElementPointerATI) ++numFailed;
 return numFailed;
}

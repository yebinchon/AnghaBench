
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ GLint ;


 int GL_EXTENSIONS ;
 int GL_NUM_EXTENSIONS ;
 int LoadExtByName (char const*) ;
 int _funcptr_glGetIntegerv (int ,scalar_t__*) ;
 scalar_t__ _funcptr_glGetStringi (int ,scalar_t__) ;

__attribute__((used)) static void ProcExtsFromExtList()
{
 GLint iLoop;
 GLint iNumExtensions = 0;
 _funcptr_glGetIntegerv(GL_NUM_EXTENSIONS, &iNumExtensions);

 for(iLoop = 0; iLoop < iNumExtensions; iLoop++)
 {
  const char *strExtensionName = (const char *)_funcptr_glGetStringi(GL_EXTENSIONS, iLoop);
  LoadExtByName(strExtensionName);
 }
}

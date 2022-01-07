
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Display ;


 int ClearExtensionVars () ;
 int ProcExtsFromExtString (char const*) ;
 scalar_t__ glXQueryExtensionsString (int *,int) ;
 int glx_LOAD_SUCCEEDED ;

__attribute__((used)) static int InternalLoad(Display *display, int screen)
{
 ClearExtensionVars();


 ProcExtsFromExtString((const char *)glXQueryExtensionsString(display, screen));

 return glx_LOAD_SUCCEEDED;
}

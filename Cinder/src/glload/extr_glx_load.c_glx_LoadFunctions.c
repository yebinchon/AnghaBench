
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Display ;


 int InternalLoad (int *,int) ;
 int glx_CopyFromC () ;

int glx_LoadFunctions(Display *display, int screen)
{
 int numFailed = 0;
 numFailed = InternalLoad(display, screen);
 glx_CopyFromC();
 return numFailed;
}

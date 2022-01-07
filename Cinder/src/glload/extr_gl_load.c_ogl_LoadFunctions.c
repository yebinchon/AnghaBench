
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int InternalLoad () ;
 int ogl_CopyFromC () ;

int ogl_LoadFunctions()
{
 int numFailed = 0;
 numFailed = InternalLoad();
 ogl_CopyFromC();
 return numFailed;
}

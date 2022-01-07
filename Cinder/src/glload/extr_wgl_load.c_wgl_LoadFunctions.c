
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HDC ;


 int InternalLoad (int ) ;
 int wgl_CopyFromC () ;

int wgl_LoadFunctions(HDC hdc)
{
 int numFailed = 0;
 numFailed = InternalLoad(hdc);
 wgl_CopyFromC();
 return numFailed;
}

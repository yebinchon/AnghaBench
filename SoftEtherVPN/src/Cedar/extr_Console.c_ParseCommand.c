
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int * ParseCommandEx (int *,int *,int *) ;

wchar_t *ParseCommand(wchar_t *str, wchar_t *name)
{
 return ParseCommandEx(str, name, ((void*)0));
}

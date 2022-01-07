
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MD ;


 int * NewMdEx (char*,int) ;

MD *NewMd(char *name)
{
 return NewMdEx(name, 1);
}

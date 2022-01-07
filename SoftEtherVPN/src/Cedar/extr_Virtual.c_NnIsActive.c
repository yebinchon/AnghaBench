
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VH ;


 int NnIsActiveEx (int *,int *) ;

bool NnIsActive(VH *v)
{
 return NnIsActiveEx(v, ((void*)0));
}

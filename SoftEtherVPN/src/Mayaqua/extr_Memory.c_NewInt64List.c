
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LIST ;


 int * CompareInt64 ;
 int * NewList (int *) ;

LIST *NewInt64List(bool sorted)
{
 LIST *o = NewList(sorted ? CompareInt64 : ((void*)0));

 return o;
}

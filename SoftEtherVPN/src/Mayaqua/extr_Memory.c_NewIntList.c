
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LIST ;


 int * CompareInt ;
 int * NewList (int *) ;

LIST *NewIntList(bool sorted)
{
 LIST *o = NewList(sorted ? CompareInt : ((void*)0));

 return o;
}

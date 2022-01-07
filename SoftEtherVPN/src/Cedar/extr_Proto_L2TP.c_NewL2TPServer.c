
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int L2TP_SERVER ;
typedef int CEDAR ;


 int * NewL2TPServerEx (int *,int *,int,int ) ;

L2TP_SERVER *NewL2TPServer(CEDAR *cedar)
{
 return NewL2TPServerEx(cedar, ((void*)0), 0, 0);
}

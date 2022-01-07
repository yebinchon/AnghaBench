
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CANCEL ;


 int * UnixNewCancel () ;
 int * Win32NewCancel () ;

CANCEL *NewCancel()
{
 CANCEL *c = ((void*)0);



 c = UnixNewCancel();

 return c;
}

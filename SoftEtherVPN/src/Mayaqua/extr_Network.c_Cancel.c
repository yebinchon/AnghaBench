
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CANCEL ;


 int UnixCancel (int *) ;
 int Win32Cancel (int *) ;

void Cancel(CANCEL *c)
{



 UnixCancel(c);

}

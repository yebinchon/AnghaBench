
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CANCEL ;


 int UnixCleanupCancel (int *) ;
 int Win32CleanupCancel (int *) ;

void CleanupCancel(CANCEL *c)
{



 UnixCleanupCancel(c);

}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thd_s {int cond; } ;


 int INFINITE ;
 scalar_t__ TlsGetValue (int ) ;
 int WaitForSingleObject (int ,int ) ;
 int hnd_key ;

void YabThreadSleep(void)
{
   struct thd_s *thd = (struct thd_s *)TlsGetValue(hnd_key);
   WaitForSingleObject(thd->cond,INFINITE);
}

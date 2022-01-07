
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thd_s {int mutex; int arg; int (* func ) (int ) ;} ;
typedef int DWORD ;


 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 int TlsSetValue (int ,void*) ;
 int hnd_key ;
 int stub1 (int ) ;

__attribute__((used)) static DWORD wrapper(void *hnd)
{
   struct thd_s *hnds = (struct thd_s *)hnd;

   EnterCriticalSection(&hnds->mutex);


   TlsSetValue(hnd_key, hnd);
   hnds->func(hnds->arg);

   LeaveCriticalSection(&hnds->mutex);

   return 0;
}

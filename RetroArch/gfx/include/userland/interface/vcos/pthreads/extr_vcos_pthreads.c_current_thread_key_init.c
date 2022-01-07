
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _vcos_thread_current_key ;
 int _vcos_thread_current_key_created ;
 int pthread_key_create (int *,int ) ;
 int vcos_assert (int) ;
 int vcos_dummy_thread_cleanup ;

__attribute__((used)) static void current_thread_key_init(void)
{
   vcos_assert(!_vcos_thread_current_key_created);
   pthread_key_create (&_vcos_thread_current_key, vcos_dummy_thread_cleanup);
   _vcos_thread_current_key_created = 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_sha_type ;


 int _lock_release (int *) ;
 int ets_sha_disable () ;
 int s_sha_lock ;

void esp_sha_unlock_engine(esp_sha_type sha_type)
{
    ets_sha_disable();
    _lock_release(&s_sha_lock);
}

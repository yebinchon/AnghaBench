
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_sha_type ;


 scalar_t__ _lock_try_acquire (int *) ;
 int esp_sha_lock_engine_inner () ;
 int s_sha_lock ;

bool esp_sha_try_lock_engine(esp_sha_type sha_type)
{
  if(_lock_try_acquire(&s_sha_lock) != 0) {

        return 0;
    } else {
        esp_sha_lock_engine_inner();
        return 1;
    }
}

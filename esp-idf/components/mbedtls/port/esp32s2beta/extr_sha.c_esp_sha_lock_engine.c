
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_sha_type ;


 int _lock_acquire (int *) ;
 int esp_sha_lock_engine_inner () ;
 int s_sha_lock ;

void esp_sha_lock_engine(esp_sha_type sha_type)
{
    _lock_acquire(&s_sha_lock);
    esp_sha_lock_engine_inner();
}

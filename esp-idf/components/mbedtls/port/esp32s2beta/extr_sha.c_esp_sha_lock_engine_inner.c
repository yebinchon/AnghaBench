
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ets_sha_enable () ;

__attribute__((used)) static void esp_sha_lock_engine_inner(void)
{
    ets_sha_enable();
}

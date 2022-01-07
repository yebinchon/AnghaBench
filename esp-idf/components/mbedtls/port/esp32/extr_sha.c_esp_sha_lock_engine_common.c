
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_sha_type ;
typedef int TickType_t ;
typedef int SemaphoreHandle_t ;
typedef scalar_t__ BaseType_t ;


 int PERIPH_SHA_MODULE ;
 int assert (int) ;
 int engines_in_use ;
 int engines_in_use_lock ;
 scalar_t__ pdFALSE ;
 int periph_module_enable (int ) ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;
 int sha_get_engine_state (int ) ;
 scalar_t__ xSemaphoreTake (int ,int ) ;

__attribute__((used)) static bool esp_sha_lock_engine_common(esp_sha_type sha_type, TickType_t ticks_to_wait)
{
    SemaphoreHandle_t engine_state = sha_get_engine_state(sha_type);
    BaseType_t result = xSemaphoreTake(engine_state, ticks_to_wait);

    if (result == pdFALSE) {

        return 0;
    }

    portENTER_CRITICAL(&engines_in_use_lock);

    if (engines_in_use == 0) {


        periph_module_enable(PERIPH_SHA_MODULE);
    }

    engines_in_use++;
    assert(engines_in_use <= 3);

    portEXIT_CRITICAL(&engines_in_use_lock);

    return 1;
}

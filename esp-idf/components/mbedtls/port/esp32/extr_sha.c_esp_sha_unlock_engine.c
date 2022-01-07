
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_sha_type ;
typedef int SemaphoreHandle_t ;


 int PERIPH_SHA_MODULE ;
 scalar_t__ engines_in_use ;
 int engines_in_use_lock ;
 int periph_module_disable (int ) ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;
 int * sha_get_engine_state (int ) ;
 int xSemaphoreGive (int *) ;

void esp_sha_unlock_engine(esp_sha_type sha_type)
{
    SemaphoreHandle_t *engine_state = sha_get_engine_state(sha_type);

    portENTER_CRITICAL(&engines_in_use_lock);

    engines_in_use--;

    if (engines_in_use == 0) {


        periph_module_disable(PERIPH_SHA_MODULE);
    }

    portEXIT_CRITICAL(&engines_in_use_lock);

    xSemaphoreGive(engine_state);
}

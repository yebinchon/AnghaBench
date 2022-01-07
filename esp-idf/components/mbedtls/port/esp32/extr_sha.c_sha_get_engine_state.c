
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int esp_sha_type ;
typedef int * SemaphoreHandle_t ;


 int assert (int ) ;
 int ** engine_states ;
 unsigned int sha_engine_index (int ) ;
 int uxPortCompareSet (scalar_t__ volatile*,int ,scalar_t__*) ;
 int vSemaphoreDelete (int *) ;
 int * xSemaphoreCreateBinary () ;
 int xSemaphoreGive (int *) ;

__attribute__((used)) static SemaphoreHandle_t sha_get_engine_state(esp_sha_type sha_type)
{
    unsigned idx = sha_engine_index(sha_type);
    volatile SemaphoreHandle_t *engine = &engine_states[idx];
    SemaphoreHandle_t result = *engine;
    uint32_t set_engine = 0;

    if (result == ((void*)0)) {

        SemaphoreHandle_t new_engine = xSemaphoreCreateBinary();
        assert(new_engine != ((void*)0));
        xSemaphoreGive(new_engine);


        set_engine = (uint32_t)new_engine;
        uxPortCompareSet((volatile uint32_t *)engine, 0, &set_engine);

        if (set_engine != 0) {
            vSemaphoreDelete(new_engine);
        }
        result = *engine;
    }
    return result;
}

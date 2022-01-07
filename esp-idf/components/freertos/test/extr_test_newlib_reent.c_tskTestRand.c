
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int done ;
 int error ;
 int portTICK_PERIOD_MS ;
 int printf (char*,int) ;
 int rand () ;
 int srand (int) ;
 int vTaskDelay (int) ;
 int vTaskDelete (int *) ;

__attribute__((used)) static void tskTestRand(void *pvParameters)
{
    int l;
    srand(0x1234);
    vTaskDelay((int)pvParameters / portTICK_PERIOD_MS);
    l = rand();
    printf("Rand1: %d\n", l);
    if (l != 869320854) {
        error++;
    }
    vTaskDelay((int)pvParameters / portTICK_PERIOD_MS);
    l = rand();
    printf("Rand2: %d\n", l);
    if (l != 1148737841) {
        error++;
    }
    done++;
    vTaskDelete(((void*)0));
}

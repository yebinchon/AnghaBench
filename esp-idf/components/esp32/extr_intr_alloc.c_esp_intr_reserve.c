
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ vector_desc_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_NO_MEM ;
 int ESP_OK ;
 int VECDESC_FL_RESERVED ;
 TYPE_1__* get_desc_for_int (int,int) ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;
 int portNUM_PROCESSORS ;
 int spinlock ;

esp_err_t esp_intr_reserve(int intno, int cpu)
{
    if (intno>31) return ESP_ERR_INVALID_ARG;
    if (cpu>=portNUM_PROCESSORS) return ESP_ERR_INVALID_ARG;

    portENTER_CRITICAL(&spinlock);
    vector_desc_t *vd=get_desc_for_int(intno, cpu);
    if (vd==((void*)0)) {
        portEXIT_CRITICAL(&spinlock);
        return ESP_ERR_NO_MEM;
    }
    vd->flags=VECDESC_FL_RESERVED;
    portEXIT_CRITICAL(&spinlock);

    return ESP_OK;
}

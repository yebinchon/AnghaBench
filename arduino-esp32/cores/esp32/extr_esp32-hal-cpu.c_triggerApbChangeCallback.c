
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {struct TYPE_3__* next; int arg; int (* cb ) (int ,int ,int ,int ) ;} ;
typedef TYPE_1__ apb_change_t ;
typedef int apb_change_ev_t ;


 TYPE_1__* apb_change_callbacks ;
 int apb_change_lock ;
 int initApbChangeCallback () ;
 int portMAX_DELAY ;
 int stub1 (int ,int ,int ,int ) ;
 int xSemaphoreGive (int ) ;
 int xSemaphoreTake (int ,int ) ;

__attribute__((used)) static void triggerApbChangeCallback(apb_change_ev_t ev_type, uint32_t old_apb, uint32_t new_apb){
    initApbChangeCallback();
    xSemaphoreTake(apb_change_lock, portMAX_DELAY);
    apb_change_t * r = apb_change_callbacks;
    while(r != ((void*)0)){
        r->cb(r->arg, ev_type, old_apb, new_apb);
        r=r->next;
    }
    xSemaphoreGive(apb_change_lock);
}

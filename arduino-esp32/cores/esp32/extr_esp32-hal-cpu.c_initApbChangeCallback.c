
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int apb_change_lock ;
 int xSemaphoreCreateMutex () ;

__attribute__((used)) static void initApbChangeCallback(){
    static volatile bool initialized = 0;
    if(!initialized){
        initialized = 1;
        apb_change_lock = xSemaphoreCreateMutex();
        if(!apb_change_lock){
            initialized = 0;
        }
    }
}

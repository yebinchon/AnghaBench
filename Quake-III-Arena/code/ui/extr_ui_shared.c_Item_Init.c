
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {float textscale; int window; } ;
typedef TYPE_1__ itemDef_t ;


 int Window_Init (int *) ;
 int memset (TYPE_1__*,int ,int) ;

void Item_Init(itemDef_t *item) {
 memset(item, 0, sizeof(itemDef_t));
 item->textscale = 0.55f;
 Window_Init(&item->window);
}

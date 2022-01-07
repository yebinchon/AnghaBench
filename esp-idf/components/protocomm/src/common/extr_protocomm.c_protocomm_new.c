
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int endpoints; } ;
typedef TYPE_1__ protocomm_t ;


 int ESP_LOGE (int ,char*) ;
 int SLIST_INIT (int *) ;
 int TAG ;
 scalar_t__ calloc (int,int) ;

protocomm_t *protocomm_new(void)
{
    protocomm_t *pc;

    pc = (protocomm_t *) calloc(1, sizeof(protocomm_t));
    if (!pc) {
       ESP_LOGE(TAG, "Error allocating protocomm");
       return ((void*)0);
    }
    SLIST_INIT(&pc->endpoints);

    return pc;
}

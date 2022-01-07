
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * p_disc_db; } ;
typedef TYPE_1__ tBTA_AG_SCB ;
typedef int tBTA_AG_DATA ;


 int UNUSED (int *) ;
 int osi_free (int *) ;

void bta_ag_free_db(tBTA_AG_SCB *p_scb, tBTA_AG_DATA *p_data)
{
    UNUSED(p_data);
    if (p_scb->p_disc_db != ((void*)0)) {
        osi_free(p_scb->p_disc_db);
        p_scb->p_disc_db = ((void*)0);
    }
}

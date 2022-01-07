
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ** ref; } ;
typedef TYPE_1__ hb_filter_private_t ;
typedef int hb_buffer_t ;


 int hb_buffer_close (int **) ;
 int memmove (int **,int **,int) ;

__attribute__((used)) static void store_ref(hb_filter_private_t * pv, hb_buffer_t * b)
{
    hb_buffer_close(&pv->ref[0]);
    memmove(&pv->ref[0], &pv->ref[1], sizeof(hb_buffer_t *) * 2 );
    pv->ref[2] = b;
}

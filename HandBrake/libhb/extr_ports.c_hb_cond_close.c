
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cond; } ;
typedef TYPE_1__ hb_cond_t ;


 int free (TYPE_1__*) ;
 int pthread_cond_destroy (int *) ;

void hb_cond_close( hb_cond_t ** _c )
{
    hb_cond_t * c = *_c;

    if (c == ((void*)0))
    {
        return;
    }






    free( c );

    *_c = ((void*)0);
}

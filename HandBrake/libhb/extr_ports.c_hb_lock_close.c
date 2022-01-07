
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mutex; int sem; } ;
typedef TYPE_1__ hb_lock_t ;


 int delete_sem (int ) ;
 int free (TYPE_1__*) ;
 int pthread_mutex_destroy (int *) ;

void hb_lock_close( hb_lock_t ** _l )
{
    hb_lock_t * l = *_l;

    if (l == ((void*)0))
    {
        return;
    }







    free( l );

    *_l = ((void*)0);
}

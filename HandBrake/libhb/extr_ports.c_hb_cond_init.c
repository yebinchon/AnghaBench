
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int thread; int cond; } ;
typedef TYPE_1__ hb_cond_t ;


 TYPE_1__* calloc (int,int) ;
 int pthread_cond_init (int *,int *) ;

hb_cond_t * hb_cond_init()
{
    hb_cond_t * c = calloc( sizeof( hb_cond_t ), 1 );

    if( c == ((void*)0) )
        return ((void*)0);
    return c;
}

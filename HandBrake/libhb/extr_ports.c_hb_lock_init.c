
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int pthread_mutexattr_t ;
struct TYPE_4__ {int mutex; int sem; } ;
typedef TYPE_1__ hb_lock_t ;


 int PTHREAD_MUTEX_NORMAL ;
 TYPE_1__* calloc (int,int) ;
 int create_sem (int,char*) ;
 int pthread_mutex_init (int *,int *) ;
 int pthread_mutexattr_init (int *) ;
 int pthread_mutexattr_settype (int *,int ) ;

hb_lock_t * hb_lock_init()
{
    hb_lock_t * l = calloc( sizeof( hb_lock_t ), 1 );
    return l;
}

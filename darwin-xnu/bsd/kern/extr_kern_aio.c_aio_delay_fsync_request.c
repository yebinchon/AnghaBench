
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int boolean_t ;
struct TYPE_6__ {TYPE_1__* procp; } ;
typedef TYPE_2__ aio_workq_entry ;
struct TYPE_5__ {int p_aio_activeq; } ;


 int FALSE ;
 TYPE_2__* TAILQ_FIRST (int *) ;
 int TRUE ;

__attribute__((used)) static boolean_t
aio_delay_fsync_request( aio_workq_entry *entryp )
{
 if (entryp == TAILQ_FIRST(&entryp->procp->p_aio_activeq)) {
  return FALSE;
 }

 return TRUE;
}

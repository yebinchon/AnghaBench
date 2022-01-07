
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cond; int cond_lock; int buffer; int rd; } ;
typedef TYPE_1__ rsd_t ;


 int fifo_free (int ) ;
 int free (TYPE_1__*) ;
 int rsd_free (int ) ;
 int rsd_stop (int ) ;
 int scond_free (int ) ;
 int slock_free (int ) ;

__attribute__((used)) static void rs_free(void *data)
{
   rsd_t *rsd = (rsd_t*)data;

   rsd_stop(rsd->rd);
   rsd_free(rsd->rd);

   fifo_free(rsd->buffer);
   slock_free(rsd->cond_lock);
   scond_free(rsd->cond);

   free(rsd);
}

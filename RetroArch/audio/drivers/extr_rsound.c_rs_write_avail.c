
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rd; int buffer; scalar_t__ has_error; } ;
typedef TYPE_1__ rsd_t ;


 size_t fifo_write_avail (int ) ;
 int rsd_callback_lock (int ) ;
 int rsd_callback_unlock (int ) ;

__attribute__((used)) static size_t rs_write_avail(void *data)
{
   size_t val;
   rsd_t *rsd = (rsd_t*)data;

   if (rsd->has_error)
      return 0;
   rsd_callback_lock(rsd->rd);
   val = fifo_write_avail(rsd->buffer);
   rsd_callback_unlock(rsd->rd);
   return val;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t ssize_t ;
struct TYPE_2__ {int cond; int buffer; } ;
typedef TYPE_1__ rsd_t ;


 int fifo_read (int ,void*,size_t) ;
 size_t fifo_read_avail (int ) ;
 int scond_signal (int ) ;

__attribute__((used)) static ssize_t rsound_audio_cb(void *data, size_t bytes, void *userdata)
{
   rsd_t *rsd = (rsd_t*)userdata;

   size_t avail = fifo_read_avail(rsd->buffer);
   size_t write_size = bytes > avail ? avail : bytes;
   fifo_read(rsd->buffer, data, write_size);
   scond_signal(rsd->cond);

   return write_size;
}

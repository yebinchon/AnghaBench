
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int mutex; } ;
struct TYPE_6__ {scalar_t__ latency; } ;
struct TYPE_8__ {int bytes_in_buffer; TYPE_2__ thread; scalar_t__ delay_offset; TYPE_1__ backend_info; } ;
typedef TYPE_3__ rsound_t ;


 int RSD_DEBUG (char*,scalar_t__) ;
 int rsnd_drain (TYPE_3__*) ;
 int slock_lock (int ) ;
 int slock_unlock (int ) ;

__attribute__((used)) static size_t rsnd_get_delay(rsound_t *rd)
{
   int ptr;
   rsnd_drain(rd);
   ptr = rd->bytes_in_buffer;


   ptr += (int)rd->backend_info.latency;

   slock_lock(rd->thread.mutex);
   ptr += rd->delay_offset;
   RSD_DEBUG("Offset: %d.\n", rd->delay_offset);
   slock_unlock(rd->thread.mutex);

   if ( ptr < 0 )
      ptr = 0;

   return (size_t)ptr;
}

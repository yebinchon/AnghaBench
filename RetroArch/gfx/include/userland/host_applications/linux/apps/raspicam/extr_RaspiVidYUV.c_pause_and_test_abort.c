
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ abort; } ;
struct TYPE_5__ {TYPE_1__ callback_data; } ;
typedef TYPE_2__ RASPIVIDYUV_STATE ;


 scalar_t__ ABORT_INTERVAL ;
 int vcos_sleep (scalar_t__) ;

__attribute__((used)) static int pause_and_test_abort(RASPIVIDYUV_STATE *state, int pause)
{
   int wait;

   if (!pause)
      return 0;


   for (wait = 0; wait < pause; wait+= ABORT_INTERVAL)
   {
      vcos_sleep(ABORT_INTERVAL);
      if (state->callback_data.abort)
         return 1;
   }

   return 0;
}

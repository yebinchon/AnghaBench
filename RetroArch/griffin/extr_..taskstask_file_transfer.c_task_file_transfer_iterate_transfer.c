
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pos_increment; int handle; scalar_t__ is_finished; } ;
typedef TYPE_1__ nbio_handle_t ;


 scalar_t__ nbio_iterate (int ) ;

__attribute__((used)) static int task_file_transfer_iterate_transfer(nbio_handle_t *nbio)
{
   size_t i;

   nbio->pos_increment = 5;

   if (nbio->is_finished)
      return 0;

   for (i = 0; i < nbio->pos_increment; i++)
   {
      if (nbio_iterate(nbio->handle))
         return -1;
   }

   return 0;
}

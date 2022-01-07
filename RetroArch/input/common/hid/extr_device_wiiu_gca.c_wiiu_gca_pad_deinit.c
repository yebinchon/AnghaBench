
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int slot; } ;
typedef TYPE_1__ gca_pad_t ;
struct TYPE_6__ {int (* get_name ) (TYPE_1__*) ;} ;


 int free (TYPE_1__*) ;
 int input_autoconfigure_disconnect (int ,int ) ;
 int stub1 (TYPE_1__*) ;
 TYPE_2__ wiiu_gca_pad_connection ;

__attribute__((used)) static void wiiu_gca_pad_deinit(void *data)
{
   gca_pad_t *pad = (gca_pad_t *)data;

   if(pad)
   {
      input_autoconfigure_disconnect(pad->slot, wiiu_gca_pad_connection.get_name(pad));
      free(pad);
   }
}

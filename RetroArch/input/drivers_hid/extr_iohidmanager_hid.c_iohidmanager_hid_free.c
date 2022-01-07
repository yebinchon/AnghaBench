
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int slots; int ptr; } ;
typedef TYPE_1__ iohidmanager_hid_t ;


 int free (TYPE_1__*) ;
 int iohidmanager_hid_manager_free (TYPE_1__*) ;
 int pad_connection_destroy (int ) ;

__attribute__((used)) static void iohidmanager_hid_free(const void *data)
{
   iohidmanager_hid_t *hid_apple = (iohidmanager_hid_t*)data;

   if (!hid_apple || !hid_apple->ptr)
      return;

   pad_connection_destroy(hid_apple->slots);
   iohidmanager_hid_manager_free(hid_apple);

   if (hid_apple)
      free(hid_apple);
}

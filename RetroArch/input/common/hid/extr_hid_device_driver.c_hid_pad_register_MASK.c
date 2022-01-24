#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  (* init ) (void*,int,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ pad_connection_interface_t ;
struct TYPE_8__ {int connected; int /*<<< orphan*/  data; TYPE_1__* iface; } ;
typedef  TYPE_2__ joypad_connection_t ;
struct TYPE_9__ {int /*<<< orphan*/  pad_driver; int /*<<< orphan*/  os_driver; TYPE_2__* pad_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_6__ hid_instance ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (void*,int,int /*<<< orphan*/ ) ; 

joypad_connection_t *FUNC4(void *pad_handle, pad_connection_interface_t *iface)
{
   int slot;
   joypad_connection_t *result;

   if(!pad_handle)
      return NULL;

   slot = FUNC2(hid_instance.pad_list);
   if(slot < 0)
   {
      FUNC0("[hid]: failed to find a vacant pad.\n");
      return NULL;
   }

   result = &(hid_instance.pad_list[slot]);
   result->iface = iface;
   result->data = iface->init(pad_handle, slot, hid_instance.os_driver);
   result->connected = true;
   FUNC1(slot, hid_instance.pad_driver);

   return result;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  slot; } ;
typedef  TYPE_1__ ds3_instance_t ;
struct TYPE_5__ {int /*<<< orphan*/  (* get_name ) (TYPE_1__*) ;} ;

/* Variables and functions */
 TYPE_3__ ds3_pad_connection ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC2(void *data)
{
   ds3_instance_t *pad = (ds3_instance_t *)data;
   if(pad) {
      FUNC0(pad->slot, ds3_pad_connection.get_name(pad));
   }
}
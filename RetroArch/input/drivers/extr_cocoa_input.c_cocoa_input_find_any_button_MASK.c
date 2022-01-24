#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  input_bits_t ;
struct TYPE_7__ {TYPE_2__* sec_joypad; TYPE_1__* joypad; } ;
typedef  TYPE_3__ cocoa_input_data_t ;
struct TYPE_6__ {int /*<<< orphan*/  (* get_buttons ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* poll ) () ;} ;
struct TYPE_5__ {int /*<<< orphan*/  (* get_buttons ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* poll ) () ;} ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int32_t FUNC7(uint32_t port)
{
   int ret = -1;
   cocoa_input_data_t *apple = (cocoa_input_data_t*)FUNC1();

   if (!apple)
      return -1;

   if (apple->joypad)
   {
       apple->joypad->poll();

       if (apple->joypad->get_buttons)
       {
          input_bits_t state;
          apple->joypad->get_buttons(port,&state);
          ret = FUNC0(apple, &state, port);
       }
   }

   if (ret != -1)
      return ret;

   if (apple->sec_joypad)
   {
       apple->sec_joypad->poll();

       if (apple->sec_joypad->get_buttons)
       {
          input_bits_t state;
          apple->sec_joypad->poll();
          apple->sec_joypad->get_buttons(port,&state);
          ret = FUNC0(apple, &state, port);
       }
   }

   if (ret != -1)
      return ret;

   return -1;
}
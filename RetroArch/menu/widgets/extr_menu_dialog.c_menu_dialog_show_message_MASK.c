#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  enum msg_hash_enums { ____Placeholder_msg_hash_enums } msg_hash_enums ;
typedef  enum menu_dialog_type { ____Placeholder_menu_dialog_type } menu_dialog_type ;

/* Variables and functions */
 int menu_dialog_current_msg ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

void FUNC2(
      enum menu_dialog_type type, enum msg_hash_enums msg)
{
   menu_dialog_current_msg = msg;

   FUNC1(true, type);
   FUNC0();
}
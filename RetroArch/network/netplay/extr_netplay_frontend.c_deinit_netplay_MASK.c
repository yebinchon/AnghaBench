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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int is_mitm ; 
 int /*<<< orphan*/ * netplay_data ; 
 int netplay_enabled ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int netplay_is_client ; 

void FUNC2(void)
{
   if (netplay_data)
   {
      FUNC1(netplay_data);
      netplay_enabled = false;
      netplay_is_client = false;
      is_mitm = false;
   }
   netplay_data = NULL;
   FUNC0();
}
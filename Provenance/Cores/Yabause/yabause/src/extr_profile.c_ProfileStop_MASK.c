#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int start_time; int i_stopped; int /*<<< orphan*/  l_total_ms; } ;
typedef  TYPE_1__ entry_t ;
typedef  scalar_t__ clock_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (char*) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stdout ; 

void FUNC3 (char* str_tag) {
  clock_t end_time ;
  entry_t* p_entry ;
  /* Test for "" */
  if (*str_tag == '\0') {
    FUNC2 (stdout, "ERROR in ProfileStop: a tag may not be \"\". Call is denied.") ; 
    return ;
  }
  /* Check for a existing name */
  p_entry = FUNC0 (str_tag) ;
  if (!p_entry) {
    FUNC2 (stdout, "WARNING in ProfileStop: tag \"%s\" was never started. Call is denied.\n", str_tag) ;
    return ;
  }    
  /* Get the time */
  end_time = FUNC1 () ;
  p_entry->l_total_ms += end_time - p_entry->start_time ;
  /* Reset */
  p_entry->start_time = -1 ;
  p_entry->i_stopped = 1 ;
}
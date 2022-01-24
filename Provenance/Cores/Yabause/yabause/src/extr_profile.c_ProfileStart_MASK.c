#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ i_stopped; int /*<<< orphan*/  start_time; int /*<<< orphan*/  i_calls; } ;
typedef  TYPE_1__ entry_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  g_init ; 
 int /*<<< orphan*/  stdout ; 

void FUNC6 (char* str_tag) {
  entry_t* p_entry ;
  /* One the first call, we must initialize the profiler. */
  if (!g_init) {
    FUNC1 () ;
  }
  /* Test for "" */
  if (*str_tag == '\0') {
    FUNC5 (stdout, "ERROR in ProfileStart: a tag may not be \"\". Call is denied.") ; 
    return ;
  }
  /* Search the entry with the given name */
  p_entry = FUNC2 (str_tag) ;
  if (!p_entry) {
    /* New tag, add it*/
    p_entry = FUNC0 (str_tag) ;
    if (!p_entry) {
      FUNC5 (stdout, "WARNING in ProfileStart: no more space to store the tag (\"%s\"). Increase NUM_TAGS in \"profile.h\". Call is denied.\n", str_tag) ;
      return ;
    }    
  }
  /* Check for nesting of equal tag.*/
  if (FUNC3 (str_tag)) {
    FUNC5 (stdout, "ERROR in ProfileStart: nesting of equal tags not allowed (\"%s\"). Call is denied.\n", str_tag) ;
    return ;
  }
  /* Increase the number of hits */
  ++p_entry->i_calls ;
  /* Set the start time */
  p_entry->start_time = FUNC4 () ;
  p_entry->i_stopped = 0 ;
}
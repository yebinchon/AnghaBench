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
typedef  int /*<<< orphan*/  buffer_t ;

/* Variables and functions */
 scalar_t__ Curl_thread_buffer ; 
 scalar_t__ buffer_threaded ; 
 scalar_t__ buffer_undef ; 
 int /*<<< orphan*/ * locbufs ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  thdkey ; 

__attribute__((used)) static void
FUNC4(void)

{
  if(Curl_thread_buffer == buffer_threaded) {
    locbufs = FUNC0(thdkey);
    FUNC2(thdkey, (void *) NULL);
    FUNC1(thdkey);
    }

  if(Curl_thread_buffer != buffer_undef) {
    FUNC3((void *) locbufs);
    locbufs = (buffer_t *) NULL;
    }

  Curl_thread_buffer = buffer_undef;
}
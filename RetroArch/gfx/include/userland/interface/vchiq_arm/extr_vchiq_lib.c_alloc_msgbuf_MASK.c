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
 int /*<<< orphan*/  MSGBUF_SIZE ; 
 void* free_msgbufs ; 
 int /*<<< orphan*/  vchiq_lib_mutex ; 
 void* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *
FUNC3(void)
{
   void *msgbuf;
   FUNC1(&vchiq_lib_mutex);
   msgbuf = free_msgbufs;
   if (msgbuf)
      free_msgbufs = *(void **)msgbuf;
   FUNC2(&vchiq_lib_mutex);
   if (!msgbuf)
      msgbuf = FUNC0(MSGBUF_SIZE, "alloc_msgbuf");
   return msgbuf;
}
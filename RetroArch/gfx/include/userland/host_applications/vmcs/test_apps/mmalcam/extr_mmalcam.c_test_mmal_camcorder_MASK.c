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
typedef  int /*<<< orphan*/  MMALCAM_BEHAVIOUR_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  stop ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *FUNC2(void *id)
{
   MMALCAM_BEHAVIOUR_T *behaviour = (MMALCAM_BEHAVIOUR_T *)id;
   int value;

   value = FUNC1(&stop, behaviour);

   FUNC0("Thread terminating, result %d", value);
   return (void *)value;
}
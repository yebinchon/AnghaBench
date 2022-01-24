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
typedef  int /*<<< orphan*/  VGErrorCode ;
typedef  int /*<<< orphan*/  CLIENT_THREAD_STATE_T ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VGGETERROR_ID ; 
 int /*<<< orphan*/  vgGetError_impl ; 

__attribute__((used)) static VGErrorCode FUNC3(void)
{
   CLIENT_THREAD_STATE_T *thread = FUNC0();
   return (VGErrorCode)FUNC2(FUNC1(vgGetError_impl,
                                                  thread,
                                                  VGGETERROR_ID));
}
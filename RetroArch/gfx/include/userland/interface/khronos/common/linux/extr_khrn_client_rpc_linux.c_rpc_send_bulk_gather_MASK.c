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
typedef  int uint32_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  CLIENT_THREAD_STATE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void const*,void const*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void const*,int) ; 
 void const* workspace ; 

void FUNC5(CLIENT_THREAD_STATE_T *thread, const void *in, uint32_t len, int32_t stride, uint32_t n)
{
#if 1
   if (in && len) {
      //CLIENT_THREAD_STATE_T *thread = CLIENT_GET_THREAD_STATE();

      FUNC2(thread);

      if (len == stride) {
         /* hopefully should be the common case */
         FUNC4(thread, in, n * len);
      } else {
         FUNC1(n * len);
         FUNC3(workspace, in, len, stride, n);
         FUNC4(thread, workspace, n * len);
      }
   }
#else
   UNREACHABLE();
#endif
}
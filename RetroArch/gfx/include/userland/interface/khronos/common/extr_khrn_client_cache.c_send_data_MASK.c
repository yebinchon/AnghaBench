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
typedef  int /*<<< orphan*/  CLIENT_THREAD_STATE_T ;

/* Variables and functions */
 int CLIENT_MAKE_CURRENT_SIZE ; 
 int /*<<< orphan*/  GLINTCACHEDATA_ID ; 
 int MERGE_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  glintCacheData_impl ; 

__attribute__((used)) static void FUNC4(CLIENT_THREAD_STATE_T *thread, int base, const void *data, int len)
{
   int off = 0;

   while (len > 0) {
      int chunk = FUNC3(len, MERGE_BUFFER_SIZE-CLIENT_MAKE_CURRENT_SIZE-12-8);

      FUNC0(glintCacheData_impl,
                        thread,
                        GLINTCACHEDATA_ID,
                        FUNC2(base + off),
                        FUNC1(chunk),
                        (char *)data + off,
                        chunk);

      off += chunk;
      len -= chunk;
   }
}
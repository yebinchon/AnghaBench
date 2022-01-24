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
typedef  int int64_t ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,char*,int) ; 

__attribute__((used)) static void FUNC2(AVDictionary **metadata, int64_t time, void *logctx)
{
    if (time) {
        if(time >= 2082844800)
            time -= 2082844800;  /* seconds between 1904-01-01 and Epoch */

        if ((int64_t)(time * 1000000ULL) / 1000000 != time) {
            FUNC0(logctx, AV_LOG_DEBUG, "creation_time is not representable\n");
            return;
        }

        FUNC1(metadata, "creation_time", time * 1000000);
    }
}
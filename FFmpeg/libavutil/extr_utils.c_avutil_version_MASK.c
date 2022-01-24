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
 int AVMEDIA_TYPE_ATTACHMENT ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_FATAL ; 
 int AV_PICTURE_TYPE_BI ; 
 int AV_SAMPLE_FMT_DBLP ; 
 scalar_t__ HAVE_MMX2 ; 
 scalar_t__ HAVE_MMXEXT ; 
 int LIBAVUTIL_VERSION_INT ; 
 int LIBAVUTIL_VERSION_MICRO ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int,int) ; 
 long long FUNC4 (long long) ; 

unsigned FUNC5(void)
{
    static int checks_done;
    if (checks_done)
        return LIBAVUTIL_VERSION_INT;

    FUNC1(AV_SAMPLE_FMT_DBLP == 9);
    FUNC1(AVMEDIA_TYPE_ATTACHMENT == 4);
    FUNC1(AV_PICTURE_TYPE_BI == 7);
    FUNC1(LIBAVUTIL_VERSION_MICRO >= 100);
    FUNC1(HAVE_MMX2 == HAVE_MMXEXT);

    FUNC1(((size_t)-1) > 0); // C guarantees this but if false on a platform we care about revert at least b284e1ffe343d6697fb950d1ee517bafda8a9844

    if (FUNC3(1, 2) != 5) {
        FUNC2(NULL, AV_LOG_FATAL, "Libavutil has been built with a broken binutils, please upgrade binutils and rebuild\n");
        FUNC0();
    }

    if (FUNC4(1LL<<60) != 1LL<<60) {
        FUNC2(NULL, AV_LOG_ERROR, "Libavutil has been linked to a broken llrint()\n");
    }

    checks_done = 1;
    return LIBAVUTIL_VERSION_INT;
}
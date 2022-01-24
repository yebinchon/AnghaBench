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
typedef  int uint64_t ;
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
#define  INDEX_STARTCODE 132 
#define  INFO_STARTCODE 131 
#define  MAIN_STARTCODE 130 
 int /*<<< orphan*/  SEEK_SET ; 
#define  STREAM_STARTCODE 129 
#define  SYNCPOINT_STARTCODE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint64_t FUNC3(AVIOContext *bc, int64_t pos)
{
    uint64_t state = 0;

    if (pos >= 0)
        /* Note, this may fail if the stream is not seekable, but that should
         * not matter, as in this case we simply start where we currently are */
        FUNC2(bc, pos, SEEK_SET);
    while (!FUNC0(bc)) {
        state = (state << 8) | FUNC1(bc);
        if ((state >> 56) != 'N')
            continue;
        switch (state) {
        case MAIN_STARTCODE:
        case STREAM_STARTCODE:
        case SYNCPOINT_STARTCODE:
        case INFO_STARTCODE:
        case INDEX_STARTCODE:
            return state;
        }
    }

    return 0;
}
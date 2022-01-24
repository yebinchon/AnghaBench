#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
struct TYPE_3__ {int /*<<< orphan*/  metadata; int /*<<< orphan*/  pb; } ;
typedef  TYPE_1__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_DICT_DONT_STRDUP_VAL ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const* const,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 scalar_t__* FUNC3 (unsigned int const) ; 
 unsigned int const FUNC4 (int /*<<< orphan*/ ,scalar_t__*,unsigned int const) ; 
 scalar_t__ FUNC5 (scalar_t__*,unsigned int const) ; 

__attribute__((used)) static int FUNC6(AVFormatContext *s, const char *const tag, const unsigned size)
{
    uint8_t *buf;
    if (!(size + 1))
        return FUNC0(ENOMEM);

    buf = FUNC3(size + 1);
    if (!buf)
        return FUNC0(ENOMEM);

    if (FUNC4(s->pb, buf, size) != size) {
        FUNC2(buf);
        return FUNC0(EIO);
    }

    if (FUNC5(buf, size)) {
        FUNC2(buf);
        return 0;
    }

    buf[size] = 0;
    FUNC1(&s->metadata, tag, buf, AV_DICT_DONT_STRDUP_VAL);
    return 0;
}
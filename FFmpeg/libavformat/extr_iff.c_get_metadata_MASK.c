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

__attribute__((used)) static int FUNC5(AVFormatContext *s,
                        const char *const tag,
                        const unsigned data_size)
{
    uint8_t *buf = ((data_size + 1) == 0) ? NULL : FUNC3(data_size + 1);

    if (!buf)
        return FUNC0(ENOMEM);

    if (FUNC4(s->pb, buf, data_size) != data_size) {
        FUNC2(buf);
        return FUNC0(EIO);
    }
    buf[data_size] = 0;
    FUNC1(&s->metadata, tag, buf, AV_DICT_DONT_STRDUP_VAL);
    return 0;
}
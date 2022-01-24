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
struct TYPE_3__ {int /*<<< orphan*/  metadata; int /*<<< orphan*/ * pb; } ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_1__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (unsigned int) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(AVFormatContext *s, unsigned int offset,
                                    unsigned int size, const char *key)
{
    AVIOContext *pb = s->pb;
    char *value;
    int ret;

    FUNC5(pb, offset, SEEK_SET);

    value = FUNC3(size + 1);
    if (!value)
        return FUNC0(ENOMEM);

    ret = FUNC4(s->pb, value, size);
    if (ret < size) {
        ret = ret < 0 ? ret : AVERROR_EOF;
        goto exit;
    }

    ret = FUNC1(&s->metadata, key, value, 0);

exit:
    FUNC2(value);
    return ret;
}
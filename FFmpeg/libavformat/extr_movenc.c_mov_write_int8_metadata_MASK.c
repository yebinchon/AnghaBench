#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_6__ {int /*<<< orphan*/  value; } ;
struct TYPE_5__ {int /*<<< orphan*/  metadata; } ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_1__ AVFormatContext ;
typedef  TYPE_2__ AVDictionaryEntry ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static int FUNC5(AVFormatContext *s, AVIOContext *pb,
                                   const char *name, const char *tag,
                                   int len)
{
    AVDictionaryEntry *t = NULL;
    uint8_t num;
    int size = 24 + len;

    if (len != 1 && len != 4)
        return -1;

    if (!(t = FUNC1(s->metadata, tag, NULL, 0)))
        return 0;
    num = FUNC0(t->value);

    FUNC3(pb, size);
    FUNC4(pb, name);
    FUNC3(pb, size - 8);
    FUNC4(pb, "data");
    FUNC3(pb, 0x15);
    FUNC3(pb, 0);
    if (len==4) FUNC3(pb, num);
    else        FUNC2 (pb, num);

    return size;
}
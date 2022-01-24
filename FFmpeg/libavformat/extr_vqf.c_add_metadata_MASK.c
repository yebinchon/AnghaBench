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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/  metadata; int /*<<< orphan*/  pb; } ;
typedef  TYPE_1__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_DICT_DONT_STRDUP_VAL ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned int,unsigned int) ; 
 int UINT_MAX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC5(AVFormatContext *s, uint32_t tag,
                         unsigned int tag_len, unsigned int remaining)
{
    int len = FUNC1(tag_len, remaining);
    char *buf, key[5] = {0};

    if (len == UINT_MAX)
        return;

    buf = FUNC3(len+1);
    if (!buf)
        return;
    FUNC4(s->pb, buf, len);
    buf[len] = 0;
    FUNC0(key, tag);
    FUNC2(&s->metadata, key, buf, AV_DICT_DONT_STRDUP_VAL);
}
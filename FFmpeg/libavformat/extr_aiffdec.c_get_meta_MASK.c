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
struct TYPE_3__ {int /*<<< orphan*/  pb; int /*<<< orphan*/  metadata; } ;
typedef  TYPE_1__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_DICT_DONT_STRDUP_VAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 scalar_t__* FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(AVFormatContext *s, const char *key, int size)
{
    uint8_t *str = FUNC2(size+1);

    if (str) {
        int res = FUNC3(s->pb, str, size);
        if (res < 0){
            FUNC1(str);
            return;
        }
        size -= res;
        str[res] = 0;
        FUNC0(&s->metadata, key, str, AV_DICT_DONT_STRDUP_VAL);
    }

    FUNC4(s->pb, size);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {int word_bits; int /*<<< orphan*/ * input; scalar_t__ key_present; } ;
typedef  TYPE_1__ DBEContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC2(DBEContext *s)
{
    if (s->key_present) {
        uint8_t *key = s->input;
        int      ret = FUNC1(s, 1);
        if (ret < 0)
            return ret;
        return FUNC0(key) >> (24 - s->word_bits);
    }
    return 0;
}
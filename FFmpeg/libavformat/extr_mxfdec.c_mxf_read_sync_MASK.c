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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(AVIOContext *pb, const uint8_t *key, unsigned size)
{
    int i, b;
    for (i = 0; i < size && !FUNC0(pb); i++) {
        b = FUNC1(pb);
        if (b == key[0])
            i = 0;
        else if (b != key[i])
            i = -1;
    }
    return i == size;
}
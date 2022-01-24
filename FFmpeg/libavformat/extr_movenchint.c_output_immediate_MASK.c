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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static void FUNC2(const uint8_t *data, int size,
                             AVIOContext *out, int *entries)
{
    while (size > 0) {
        int len = size;
        if (len > 14)
            len = 14;
        FUNC0(out, 1); /* immediate constructor */
        FUNC0(out, len); /* amount of valid data */
        FUNC1(out, data, len);
        data += len;
        size -= len;

        for (; len < 14; len++)
            FUNC0(out, 0);

        (*entries)++;
    }
}
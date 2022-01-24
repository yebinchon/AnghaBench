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
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  URLContext ;

/* Variables and functions */
 int /*<<< orphan*/  AVSEEK_SIZE ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 

int64_t FUNC1(URLContext *h)
{
    int64_t pos, size;

    size = FUNC0(h, 0, AVSEEK_SIZE);
    if (size < 0) {
        pos = FUNC0(h, 0, SEEK_CUR);
        if ((size = FUNC0(h, -1, SEEK_END)) < 0)
            return size;
        size++;
        FUNC0(h, pos, SEEK_SET);
    }
    return size;
}
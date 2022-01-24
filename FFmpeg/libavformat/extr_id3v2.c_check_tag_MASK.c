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
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,unsigned int) ; 

__attribute__((used)) static int FUNC4(AVIOContext *s, int offset, unsigned int len)
{
    char tag[4];

    if (len > 4 ||
        FUNC2(s, offset, SEEK_SET) < 0 ||
        FUNC1(s, tag, len) < (int)len)
        return -1;
    else if (!FUNC0(tag) || FUNC3(tag, len))
        return 1;

    return 0;
}
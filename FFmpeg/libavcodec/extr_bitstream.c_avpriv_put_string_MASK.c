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
typedef  int /*<<< orphan*/  PutBitContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,char const) ; 

void FUNC1(PutBitContext *pb, const char *string,
                       int terminate_string)
{
    while (*string) {
        FUNC0(pb, 8, *string);
        string++;
    }
    if (terminate_string)
        FUNC0(pb, 8, 0);
}
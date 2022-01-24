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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC3(AVIOContext *out, int match_sample,
                         int match_offset, int match_len, int *entries)
{
    FUNC0(out, 2); /* sample constructor */
    FUNC0(out, 0); /* track reference */
    FUNC1(out, match_len);
    FUNC2(out, match_sample);
    FUNC2(out, match_offset);
    FUNC1(out, 1); /* bytes per block */
    FUNC1(out, 1); /* samples per block */
    (*entries)++;
}
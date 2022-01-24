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
typedef  int /*<<< orphan*/  bit_stream ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,unsigned char**) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static unsigned long FUNC2 (bit_stream *bs, unsigned long mask,
			       int n, unsigned char **p) {
    unsigned long result = FUNC1 (bs, mask);
    FUNC0 (bs, n, p);
    return result;
}
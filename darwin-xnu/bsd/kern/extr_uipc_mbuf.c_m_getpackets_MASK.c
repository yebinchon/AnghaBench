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
struct mbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MC_CL ; 
 struct mbuf* FUNC0 (unsigned int*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

struct mbuf *
FUNC2(int num_needed, int num_with_pkthdrs, int how)
{
	unsigned int n = num_needed;

	return (FUNC0(&n, num_with_pkthdrs, how, 0,
	    FUNC1(MC_CL)));
}
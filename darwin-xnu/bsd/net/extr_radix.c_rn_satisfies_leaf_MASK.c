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
typedef  int u_char ;
struct radix_node {char* rn_key; char* rn_mask; } ;
typedef  int /*<<< orphan*/  rn_matchf_t ;

/* Variables and functions */
 int FUNC0 (struct radix_node*,int /*<<< orphan*/ *,void*) ; 
 int FUNC1 (int,int) ; 
 char* rn_ones ; 

__attribute__((used)) static int
FUNC2(char *trial, struct radix_node *leaf, int skip,
    rn_matchf_t *f, void *w)
{
	char *cp = trial, *cp2 = leaf->rn_key, *cp3 = leaf->rn_mask;
	char *cplim;
	int length = FUNC1(*(u_char *)cp, *(u_char *)cp2);

	if (cp3 == 0)
		cp3 = rn_ones;
	else
		length = FUNC1(length, *(u_char *)cp3);
	cplim = cp + length; cp3 += skip; cp2 += skip;
	for (cp += skip; cp < cplim; cp++, cp2++, cp3++)
		if ((*cp ^ *cp2) & *cp3)
			return 0;

	return (FUNC0(leaf, f, w));
}
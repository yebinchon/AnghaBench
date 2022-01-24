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
struct rtentry {int dummy; } ;
struct radix_node_head {int dummy; } ;
struct radix_node {int dummy; } ;
typedef  int /*<<< orphan*/  rn_matchf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct radix_node*) ; 
 struct radix_node* FUNC3 (void*,struct radix_node_head*,int /*<<< orphan*/ *,void*) ; 

__attribute__((used)) static struct radix_node *
FUNC4(void *v_arg, struct radix_node_head *head,
    rn_matchf_t *f, void *w)
{
	struct radix_node *rn = FUNC3(v_arg, head, f, w);

	if (rn != NULL) {
		FUNC0((struct rtentry *)rn);
		FUNC2(rn);
		FUNC1((struct rtentry *)rn);
	}
	return (rn);
}
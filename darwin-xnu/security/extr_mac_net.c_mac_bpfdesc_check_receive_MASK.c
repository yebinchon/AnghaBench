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
struct label {int dummy; } ;
struct ifnet {int /*<<< orphan*/  if_label; } ;
struct bpf_d {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct bpf_d*,struct label*,struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bpfdesc_check_receive ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*) ; 
 struct label* FUNC3 (struct bpf_d*) ; 

int
FUNC4(struct bpf_d *bpf_d, struct ifnet *ifp)
{
	struct label *label;
	int error;

	label = FUNC3(bpf_d);
	FUNC2(ifp);
	FUNC0(bpfdesc_check_receive, bpf_d, label, ifp,
	    ifp->if_label);
	FUNC1(ifp);

	return (error);
}
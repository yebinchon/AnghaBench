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
struct ucred {int dummy; } ;
struct label {int dummy; } ;
struct bpf_d {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ucred*,struct bpf_d*,struct label*) ; 
 int /*<<< orphan*/  bpfdesc_label_associate ; 
 struct label* FUNC1 (struct bpf_d*) ; 

void
FUNC2(struct ucred *cred, struct bpf_d *bpf_d)
{
	struct label *label;

	label = FUNC1(bpf_d);
	FUNC0(bpfdesc_label_associate, cred, bpf_d, label);
}
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
struct shmid_kernel {int /*<<< orphan*/  label; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ucred*,struct shmid_kernel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sysvshm_label_associate ; 

void
FUNC1(struct ucred *cred, struct shmid_kernel *shmsegptr)
{

	FUNC0(sysvshm_label_associate, cred, shmsegptr, shmsegptr->label);
}
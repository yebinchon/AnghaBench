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
struct semid_kernel {int /*<<< orphan*/  label; } ;
typedef  int /*<<< orphan*/  kauth_cred_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct semid_kernel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sysvsem_label_associate ; 

void
FUNC1(kauth_cred_t cred, struct semid_kernel *semakptr)
{

	FUNC0(sysvsem_label_associate, cred, semakptr, semakptr->label);
}
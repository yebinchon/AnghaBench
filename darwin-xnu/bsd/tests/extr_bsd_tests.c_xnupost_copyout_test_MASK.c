#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xnupost_test_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int mach_vm_address_t ;
struct TYPE_3__ {int /*<<< orphan*/ * xt_name; int /*<<< orphan*/  xt_end_time; int /*<<< orphan*/  xt_begin_time; int /*<<< orphan*/  xt_expected_retval; int /*<<< orphan*/  xt_retval; int /*<<< orphan*/  xt_test_num; int /*<<< orphan*/  xt_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  XNUPOST_TNAME_MAXLEN ; 
 int FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC2(xnupost_test_t t, mach_vm_address_t outaddr)
{
	/* code to copyout test config */
	int kret         = 0;
	uint32_t namelen = 0;

	kret = FUNC0(&t->xt_config, outaddr, sizeof(uint16_t));
	if (kret)
		return kret;
	outaddr += sizeof(uint16_t);

	kret = FUNC0(&t->xt_test_num, outaddr, sizeof(uint16_t));
	if (kret)
		return kret;
	outaddr += sizeof(uint16_t);

	kret = FUNC0(&t->xt_retval, outaddr, sizeof(uint32_t));
	if (kret)
		return kret;
	outaddr += sizeof(uint32_t);

	kret = FUNC0(&t->xt_expected_retval, outaddr, sizeof(uint32_t));
	if (kret)
		return kret;
	outaddr += sizeof(uint32_t);

	kret = FUNC0(&t->xt_begin_time, outaddr, sizeof(uint64_t));
	if (kret)
		return kret;
	outaddr += sizeof(uint64_t);

	kret = FUNC0(&t->xt_end_time, outaddr, sizeof(uint64_t));
	if (kret)
		return kret;
	outaddr += sizeof(uint64_t);

	namelen = FUNC1(t->xt_name, XNUPOST_TNAME_MAXLEN);
	kret = FUNC0(t->xt_name, outaddr, namelen);
	if (kret)
		return kret;
	outaddr += namelen;

	return 0;
}
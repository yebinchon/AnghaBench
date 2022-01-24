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
struct pseminfo {int /*<<< orphan*/  psem_semobject; } ;
typedef  int kern_return_t ;

/* Variables and functions */
 int EINTR ; 
 int EINVAL ; 
#define  KERN_ABORTED 132 
#define  KERN_INVALID_ADDRESS 131 
#define  KERN_OPERATION_TIMED_OUT 130 
#define  KERN_PROTECTION_FAILURE 129 
#define  KERN_SUCCESS 128 
 int /*<<< orphan*/  kernel_task ; 
 int /*<<< orphan*/  FUNC0 (struct pseminfo*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int 
FUNC2(struct pseminfo * pinfo)
{
	kern_return_t kret;

	kret = FUNC1(kernel_task, pinfo->psem_semobject);
#if CONFIG_MACF
	mac_posixsem_label_destroy(pinfo);
#endif

	switch (kret) {
	case KERN_INVALID_ADDRESS:
	case KERN_PROTECTION_FAILURE:
		return (EINVAL);
	case KERN_ABORTED:
	case KERN_OPERATION_TIMED_OUT:
		return (EINTR);
	case KERN_SUCCESS:
		return(0);
	default:
		return (EINVAL);
	}
}
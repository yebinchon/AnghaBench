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
typedef  unsigned long vm_address_t ;
struct uio {int /*<<< orphan*/  uio_rw; int /*<<< orphan*/  uio_offset; } ;
typedef  enum uio_rw { ____Placeholder_uio_rw } uio_rw ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int EFAULT ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int UIO_READ ; 
 int /*<<< orphan*/  UIO_WRITE ; 
 int /*<<< orphan*/  VM_MAX_KERNEL_ADDRESS ; 
 unsigned long VM_MIN_KERNEL_AND_KEXT_ADDRESS ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  caddr_t ; 
 int /*<<< orphan*/  dev_kmem_enabled ; 
 int /*<<< orphan*/  dev_kmem_mask_top_bit ; 
 char const* devzerobuf ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned int) ; 
 unsigned int FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (struct uio*) ; 
 scalar_t__ FUNC6 (struct uio*) ; 
 int /*<<< orphan*/  FUNC7 (struct uio*,unsigned int) ; 
 int FUNC8 (char const*,int,struct uio*) ; 

int
FUNC9(dev_t dev, struct uio *uio, enum uio_rw rw)
{
	unsigned int c;
	int error = 0;

	while (FUNC6(uio) > 0) {
		FUNC7(uio, 0);

		switch (FUNC4(dev)) {

		/* minor device 0 is physical memory */
		case 0:
			return (ENODEV);

		/* minor device 1 is kernel memory */
		case 1:
#if !CONFIG_DEV_KMEM
			return (ENODEV);
#else /* CONFIG_DEV_KMEM */
			if (!dev_kmem_enabled)
				return (ENODEV);

			vm_address_t kaddr = (vm_address_t)uio->uio_offset;
			if (dev_kmem_mask_top_bit) {
				/*
				 * KVA addresses of the form 0xFFFFFF80AABBCCDD can't be
				 * represented as a signed off_t correctly. In these cases,
				 * 0x7FFFFF80AABBCCDD is passed in, and the top bit OR-ed
				 * on.
				 */
				const vm_address_t top_bit = (~((vm_address_t)0)) ^ (~((vm_address_t)0) >> 1UL);
				if (kaddr & top_bit) {
					/* top bit should not be set already */
					return (EFAULT);
				}
				kaddr |= top_bit;
			}

			c = uio_curriovlen(uio);

			/* Do some sanity checking */
			if ((kaddr > (VM_MAX_KERNEL_ADDRESS - c)) ||
				(kaddr <= VM_MIN_KERNEL_AND_KEXT_ADDRESS))
				goto fault;
			if (!kernacc(kaddr, c))
				goto fault;
			error = uiomove((const char *)(uintptr_t)kaddr,
					(int)c, uio);
			if (error)
				break;

			continue; /* Keep going until UIO is done */
#endif /* CONFIG_DEV_KMEM */

		/* minor device 2 is EOF/RATHOLE */
		case 2:
			if (rw == UIO_READ)
				return (0);
			c = FUNC5(uio);

			error = 0; /* Always succeeds, always consumes all input */
			break;
		case 3:
			if(devzerobuf == NULL) {
				FUNC0(devzerobuf, caddr_t,PAGE_SIZE, M_TEMP, M_WAITOK);
				FUNC1(devzerobuf, PAGE_SIZE);
			}
			if(uio->uio_rw == UIO_WRITE) {
				c = FUNC5(uio);

				error = 0; /* Always succeeds, always consumes all input */
				break;
			}

 			c = FUNC3(FUNC5(uio), PAGE_SIZE);
			error = FUNC8(devzerobuf, (int)c, uio);
			if (error)
				break;

			continue; /* Keep going until UIO is done */
		default:
			return (ENODEV);
		}
			
		if (error)
			break;

		FUNC7(uio, c);
	}
	return (error);
#if CONFIG_DEV_KMEM
fault:
	return (EFAULT);
#endif
}
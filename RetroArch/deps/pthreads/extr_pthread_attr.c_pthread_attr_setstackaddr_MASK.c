#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* pthread_attr_t ;
struct TYPE_4__ {void* stackaddr; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOSYS ; 
 scalar_t__ FUNC0 (TYPE_1__**) ; 

int FUNC1 (pthread_attr_t * attr, void *stackaddr)
/*
 * ------------------------------------------------------
 * DOCPUBLIC
 *      Threads created with 'attr' will run on the stack
 *      starting at 'stackaddr'.
 *      Stack must be at least PTHREAD_STACK_MIN bytes.
 *
 * PARAMETERS
 *      attr
 *              pointer to an instance of pthread_attr_t
 *
 *      stacksize
 *              stack size, in bytes.
 *
 *
 * DESCRIPTION
 *      Threads created with 'attr' will run on the stack
 *      starting at 'stackaddr'.
 *      Stack must be at least PTHREAD_STACK_MIN bytes.
 *
 *      NOTES:
 *              1)      Function supported only if this macro is
 *                      defined:
 *
 *                              _POSIX_THREAD_ATTR_STACKADDR
 *
 *              2)      Create only one thread for each stack
 *                      address..
 *
 *              3)      Ensure that stackaddr is aligned.
 *
 * RESULTS
 *              0               successfully set stack address,
 *              EINVAL          'attr' is invalid
 *              ENOSYS          function not supported
 *
 * ------------------------------------------------------
 */
{
#if defined( _POSIX_THREAD_ATTR_STACKADDR )

   if (pte_is_attr (attr) != 0)
      return EINVAL;

   (*attr)->stackaddr = stackaddr;
   return 0;

#else

   return ENOSYS;

#endif /* _POSIX_THREAD_ATTR_STACKADDR */
}
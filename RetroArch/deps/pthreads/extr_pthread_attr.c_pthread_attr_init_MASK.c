#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* pthread_attr_t ;
struct TYPE_4__ {int /*<<< orphan*/  sched_priority; } ;
struct TYPE_5__ {int /*<<< orphan*/  valid; int /*<<< orphan*/  contentionscope; int /*<<< orphan*/  inheritsched; TYPE_1__ param; int /*<<< orphan*/  detachstate; int /*<<< orphan*/ * stackaddr; scalar_t__ stacksize; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  PTE_ATTR_VALID ; 
 int /*<<< orphan*/  PTHREAD_CREATE_JOINABLE ; 
 int /*<<< orphan*/  PTHREAD_EXPLICIT_SCHED ; 
 int /*<<< orphan*/  PTHREAD_SCOPE_SYSTEM ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 

int FUNC2 (pthread_attr_t * attr)
/*
 * ------------------------------------------------------
 * DOCPUBLIC
 *      Initializes a thread attributes object with default
 *      attributes.
 *
 * PARAMETERS
 *      attr
 *              pointer to an instance of pthread_attr_t
 *
 *
 * DESCRIPTION
 *      Initializes a thread attributes object with default
 *      attributes.
 *
 *      NOTES:
 *              1)      Used to define thread attributes
 *
 * RESULTS
 *              0               successfully initialized attr,
 *              ENOMEM          insufficient memory for attr.
 *
 * ------------------------------------------------------
 */
{
   pthread_attr_t attr_result;

   /* This is disallowed. */
   if (attr == NULL)
      return EINVAL;

   attr_result = (pthread_attr_t) FUNC0 (sizeof (*attr_result));

   if (attr_result == NULL)
      return ENOMEM;

#ifdef _POSIX_THREAD_ATTR_STACKSIZE
   /*
    * Default to zero size?
    */
   attr_result->stacksize = 0;
#endif

#ifdef _POSIX_THREAD_ATTR_STACKADDR
   /* FIXME: Set this to something sensible when we support it. */
   attr_result->stackaddr = NULL;
#endif

   attr_result->detachstate = PTHREAD_CREATE_JOINABLE;

   /*
    * Win32 sets new threads to THREAD_PRIORITY_NORMAL and
    * not to that of the parent thread. We choose to default to
    * this arrangement.
    */
   attr_result->param.sched_priority = FUNC1();
   attr_result->inheritsched = PTHREAD_EXPLICIT_SCHED;
   attr_result->contentionscope = PTHREAD_SCOPE_SYSTEM;

   attr_result->valid = PTE_ATTR_VALID;

   *attr = attr_result;

   return 0;
}
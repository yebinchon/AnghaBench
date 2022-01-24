#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* pthread_attr_t ;
struct TYPE_5__ {scalar_t__ valid; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__**) ; 

int
FUNC2 (pthread_attr_t * attr)
/*
 * ------------------------------------------------------
 * DOCPUBLIC
 *      Destroys a thread attributes object.
 *
 * PARAMETERS
 *      attr
 *              pointer to an instance of pthread_attr_t
 *
 *
 * DESCRIPTION
 *      Destroys a thread attributes object.
 *
 *      NOTES:
 *              1)      Does not affect threads created with 'attr'.
 *
 * RESULTS
 *              0               successfully destroyed attr,
 *              EINVAL          'attr' is invalid.
 *
 * ------------------------------------------------------
 */
{
   if (FUNC1 (attr) != 0)
      return EINVAL;

   /*
    * Set the attribute object to a specific invalid value.
    */
   (*attr)->valid = 0;
   FUNC0 (*attr);
   *attr = NULL;

   return 0;
}
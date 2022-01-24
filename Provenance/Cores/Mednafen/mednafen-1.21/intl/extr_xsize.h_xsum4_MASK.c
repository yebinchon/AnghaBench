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

/* Variables and functions */
 size_t FUNC0 (size_t,size_t) ; 

__attribute__((used)) static inline size_t
#if __GNUC__ >= 3
__attribute__ ((__pure__))
#endif
FUNC1 (size_t size1, size_t size2, size_t size3, size_t size4)
{
  return FUNC0 (FUNC0 (FUNC0 (size1, size2), size3), size4);
}
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
typedef  scalar_t__ localkey_t ;

/* Variables and functions */
 char* FUNC0 (scalar_t__,long) ; 
 scalar_t__ locbufs ; 

__attribute__((used)) static char *
FUNC1(localkey_t key, long size)

{
  return FUNC0(locbufs + key, size);
}
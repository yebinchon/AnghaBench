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
 void* FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 

void *FUNC2(int n){
#ifndef SQLITE_OMIT_AUTOINIT
  if( FUNC1() ) return 0;
#endif
  return n<=0 ? 0 : FUNC0(n);
}
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
 int* Thex ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static void FUNC1(unsigned int n, int ndigit, int header_char)
{
  int shf;
  FUNC0(header_char);
  for(shf=(ndigit-1)*4; shf>=0; shf-=4) {
    FUNC0(Thex[(n>>shf)&15] );
  }
}
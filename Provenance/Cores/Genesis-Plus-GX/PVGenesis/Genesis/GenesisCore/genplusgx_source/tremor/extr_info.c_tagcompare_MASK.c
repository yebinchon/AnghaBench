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
 scalar_t__ FUNC0 (int) ; 

__attribute__((used)) static int FUNC1(const char *s1, const char *s2, int n){
  int c=0;
  while(c < n){
    if(FUNC0((int)s1[c]) != FUNC0((int)s2[c]))
      return !0;
    c++;
  }
  return 0;
}
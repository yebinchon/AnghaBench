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

__attribute__((used)) static int FUNC0(long s, long *serialno_list, int n){
  if(serialno_list){
    while(n--){
      if(*serialno_list == s) return 1;
      serialno_list++;
    }
  }
  return 0;
}
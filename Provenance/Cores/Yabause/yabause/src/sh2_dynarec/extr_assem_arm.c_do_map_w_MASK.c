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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dynarec_local ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int) ; 
 scalar_t__ memory_map ; 

int FUNC6(int s,int ar,int map,int cache,int x,int c,u32 addr)
{
  if(c) {
    if(FUNC1(addr)) {
      // address_generation already loaded the const
      FUNC4(FP,map,map);
    }
    else
      return -1; // No mapping
  }
  else {
    FUNC0(s!=map);
    if(cache>=0) {
      // Use cached offset to memory map
      FUNC2(cache,s,map);
    }else{
      FUNC3(((int)memory_map-(int)&dynarec_local)>>2,map);
      FUNC2(map,s,map);
    }
    // Schedule this while we wait on the load
    if(x) FUNC5(s,x,ar);
    FUNC4(FP,map,map);
  }
  return map;
}
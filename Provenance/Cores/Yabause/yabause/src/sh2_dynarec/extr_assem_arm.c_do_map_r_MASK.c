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
 int /*<<< orphan*/  dynarec_local ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int) ; 
 scalar_t__ memory_map ; 

int FUNC5(int s,int ar,int map,int cache,int x,int a,int shift,int c,u32 addr)
{
  if(c) {
    return -1; // No mapping
  }
  else {
    FUNC0(s!=map);
    if(cache>=0) {
      // Use cached offset to memory map
      FUNC1(cache,s,map);
    }else{
      FUNC2(((int)memory_map-(int)&dynarec_local)>>2,map);
      FUNC1(map,s,map);
    }
    // Schedule this while we wait on the load
    if(x) FUNC4(s,x,ar);
    //if(shift>=0) emit_shlimm(s,3,shift);
    //if(~a) emit_andimm(s,a,ar);
    FUNC3(FP,map,map);
  }
  return map;
}
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
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 
 scalar_t__ memory_map ; 

int FUNC4(int s,int ar,int map,int cache,int x,int a,int shift,int c,u32 addr)
{
  if(c) {
    /*if(can_direct_read(addr)) {
      emit_readword((int)(memory_map+(addr>>12)),map);
    }
    else*/
      return -1; // No mapping
  }
  else {
    if(s!=map) FUNC0(s,map);
    FUNC2(map,12,map);
    // Schedule this while we wait on the load
    if(x) FUNC3(s,x,ar);
    //if(shift>=0) emit_lea8(s,shift);
    //if(~a) emit_andimm(s,a,ar);
    FUNC1((int)memory_map,map,map);
  }
  return map;
}
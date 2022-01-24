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
typedef  int u32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int) ; 
 scalar_t__ memory_map ; 

int FUNC7(int s,int ar,int map,int cache,int x,int c,u32 addr)
{
  if(c) {
    if(FUNC0(addr)) {
      FUNC3((int)(memory_map+(addr>>12)),map);
    }
    else
      return -1; // No mapping
  }
  else {
    if(s!=map) FUNC1(s,map);
    //if(s!=ar) emit_mov(s,ar);
    FUNC5(map,12,map);
    // Schedule this while we wait on the load
    if(x) FUNC6(s,x,ar);
    FUNC2((int)memory_map,map,map);
  }
  FUNC4(map,2,map);
  return map;
}
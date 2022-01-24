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
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 

__attribute__((used)) static void FUNC1(int bit, s32 w, u32 easz)
{
  u32 ea    = (w>>bit)&63;

  if(bit)
    FUNC0(ea&7,ea>>3, easz);
  else if(bit==0)
    FUNC0(ea>>3,ea&7, easz);
}
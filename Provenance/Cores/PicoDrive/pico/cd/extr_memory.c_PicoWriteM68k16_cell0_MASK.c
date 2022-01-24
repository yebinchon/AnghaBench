#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_2__ {scalar_t__* word_ram1M; } ;

/* Variables and functions */
 TYPE_1__* Pico_mcd ; 
 int FUNC0 (int) ; 

__attribute__((used)) static void FUNC1(u32 a, u32 d)
{
  a = (a&3) | (FUNC0(a >> 2) << 2);
  *(u16 *)(Pico_mcd->word_ram1M[0] + a) = d;
}
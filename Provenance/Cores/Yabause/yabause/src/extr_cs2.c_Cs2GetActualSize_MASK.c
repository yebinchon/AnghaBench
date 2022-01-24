#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void* u16 ;
struct TYPE_3__ {int HIRQ; scalar_t__ CR4; scalar_t__ CR3; void* CR2; void* CR1; } ;
struct TYPE_4__ {int status; int calcsize; TYPE_1__ reg; } ;

/* Variables and functions */
 int CDB_HIRQ_CMOK ; 
 int CDB_HIRQ_ESEL ; 
 TYPE_2__* Cs2Area ; 

void FUNC0(void) {
  Cs2Area->reg.CR1 = (u16)((Cs2Area->status << 8) | ((Cs2Area->calcsize >> 16) & 0xFF));
  Cs2Area->reg.CR2 = (u16)Cs2Area->calcsize;
  Cs2Area->reg.CR3 = 0;
  Cs2Area->reg.CR4 = 0;
  Cs2Area->reg.HIRQ |= CDB_HIRQ_CMOK | CDB_HIRQ_ESEL;
}
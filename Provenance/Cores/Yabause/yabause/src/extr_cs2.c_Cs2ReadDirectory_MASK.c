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
typedef  int u32 ;
struct TYPE_3__ {int CR3; int HIRQ; int CR4; } ;
struct TYPE_4__ {TYPE_1__ reg; int /*<<< orphan*/  status; scalar_t__ filter; } ;

/* Variables and functions */
 int CDB_HIRQ_CMOK ; 
 int CDB_HIRQ_EFLS ; 
 int /*<<< orphan*/  CDB_STAT_REJECT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_2__* Cs2Area ; 
 scalar_t__ FUNC1 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(void) {
  u32 rdfilternum;

  rdfilternum = (Cs2Area->reg.CR3 >> 8);

  if (rdfilternum == 0xFF)
  {
     FUNC2(CDB_STAT_REJECT);
     Cs2Area->reg.HIRQ |= CDB_HIRQ_CMOK | CDB_HIRQ_EFLS;
     return;
  }
  else if (rdfilternum < 0x24)
  {
     if (FUNC1(Cs2Area->filter + rdfilternum, ((Cs2Area->reg.CR3 & 0xFF) << 8) | Cs2Area->reg.CR4, 1) != 0)
     {
        FUNC0("cs2\t: ReadFileSystem failed\n");
        FUNC2(CDB_STAT_REJECT);
        Cs2Area->reg.HIRQ |= CDB_HIRQ_CMOK | CDB_HIRQ_EFLS;
        return;
     }
  }

  FUNC2(Cs2Area->status);
  Cs2Area->reg.HIRQ |= CDB_HIRQ_CMOK | CDB_HIRQ_EFLS;
}
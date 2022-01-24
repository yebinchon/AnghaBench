#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  lut; int /*<<< orphan*/  table; } ;
struct TYPE_5__ {int /*<<< orphan*/  lut; int /*<<< orphan*/  table; } ;
struct TYPE_4__ {int /*<<< orphan*/  lut; int /*<<< orphan*/  table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const) ; 
 TYPE_3__ mpc_HuffDSCF ; 
 TYPE_2__ mpc_HuffHdr ; 
 TYPE_1__** mpc_HuffQ ; 
 int /*<<< orphan*/ * mpc_can_DSCF ; 
 int /*<<< orphan*/ ** mpc_can_Q ; 
 int /*<<< orphan*/  mpc_can_Q1 ; 
 int /*<<< orphan*/  mpc_can_Q9up ; 
 int /*<<< orphan*/ * mpc_can_Res ; 
 int /*<<< orphan*/ * mpc_can_SCFI ; 

void FUNC2(const int bits)
{
	int i, j;

	FUNC1(mpc_HuffDSCF.table, mpc_HuffDSCF.lut, bits);
	FUNC1(mpc_HuffHdr.table, mpc_HuffHdr.lut, bits);

	FUNC0(&mpc_can_SCFI[0], bits);
	FUNC0(&mpc_can_SCFI[1], bits);
	FUNC0(&mpc_can_DSCF[0], bits);
	FUNC0(&mpc_can_DSCF[1], bits);
	FUNC0(&mpc_can_Res[0], bits);
	FUNC0(&mpc_can_Res[1], bits);
	FUNC0(&mpc_can_Q1, bits);
	FUNC0(&mpc_can_Q9up, bits);


	for( i = 0; i < 7; i++){
		for( j = 0; j < 2; j++){
			if (i != 6) FUNC0(&mpc_can_Q[i][j], bits);
			FUNC1(mpc_HuffQ[i][j].table, mpc_HuffQ[i][j].lut, bits);
		}
	}
}
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
struct regstat {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SR ; 
 int /*<<< orphan*/  FUNC0 (struct regstat*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct regstat*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct regstat*,int /*<<< orphan*/ ) ; 
 int* opcode2 ; 
 int /*<<< orphan*/ * rt1 ; 

void FUNC3(struct regstat *current,int i)
{
  if(opcode2[i]==8) { // CLRT/SETT
    FUNC0(current,i,SR);
    FUNC2(current,SR);
  }else
  if(opcode2[i]==9) { // MOVT
    FUNC0(current,i,SR);
    FUNC0(current,i,rt1[i]);
    FUNC1(current,rt1[i]);
    FUNC2(current,rt1[i]);
  }
}
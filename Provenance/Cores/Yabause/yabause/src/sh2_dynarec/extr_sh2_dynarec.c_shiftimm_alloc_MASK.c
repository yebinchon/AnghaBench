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
struct regstat {long long u; } ;

/* Variables and functions */
 int /*<<< orphan*/  SR ; 
 long long TBIT ; 
 int /*<<< orphan*/  FUNC0 (struct regstat*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct regstat*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct regstat*,int /*<<< orphan*/ ) ; 
 int* opcode ; 
 int* opcode2 ; 
 int* opcode3 ; 
 int /*<<< orphan*/ * rs1 ; 
 int /*<<< orphan*/ * rs2 ; 
 int /*<<< orphan*/ * rt1 ; 

void FUNC3(struct regstat *current,int i)
{
  FUNC1(current,rs1[i]);
  FUNC1(current,rt1[i]);
  FUNC0(current,i,rs1[i]);
  FUNC0(current,i,rt1[i]);
  FUNC2(current,rt1[i]);
  if(opcode[i]==4) {
    if(opcode2[i]<6) { // SHLL/SHAL/SHLR/SHAR/ROTL/ROTCL/ROTR/ROTCR
      if(opcode2[i]<4||opcode3[i]<2) {
        // SHL/SHA/ROT don't need T bit as a source, only a destination
        if(!(current->u&(1LL<<TBIT))) {
          FUNC0(current,i,SR);
          FUNC2(current,SR);
        }
      }
      else {
        FUNC0(current,i,SR); // ROTCL/ROTCR always need T bit
        FUNC2(current,SR);
      }
    }
  }
  if(opcode[i]==2&opcode2[i]==13) { // XTRCT
    FUNC1(current,rs2[i]);
    FUNC0(current,i,rs2[i]);
  }
}
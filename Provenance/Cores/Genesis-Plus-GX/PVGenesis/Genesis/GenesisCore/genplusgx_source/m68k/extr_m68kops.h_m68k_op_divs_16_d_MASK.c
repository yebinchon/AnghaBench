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
typedef  int uint32 ;
typedef  scalar_t__ uint ;
typedef  int sint ;

/* Variables and functions */
 int /*<<< orphan*/  CFLAG_CLEAR ; 
 scalar_t__ DX ; 
 int DY ; 
 int /*<<< orphan*/  EXCEPTION_ZERO_DIVIDE ; 
 int /*<<< orphan*/  FLAG_C ; 
 int /*<<< orphan*/  FLAG_N ; 
 int /*<<< orphan*/  FLAG_V ; 
 int FLAG_Z ; 
 int FUNC0 (int) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  NFLAG_CLEAR ; 
 int /*<<< orphan*/  NFLAG_SET ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int) ; 
 int /*<<< orphan*/  VFLAG_CLEAR ; 
 int /*<<< orphan*/  VFLAG_SET ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(void)
{
  uint* r_dst = &DX;
  sint src = FUNC0(DY);
  sint quotient;
  sint remainder;

  if(src != 0)
  {
    FUNC5(*r_dst,src);

    if((uint32)*r_dst == 0x80000000 && src == -1)
    {
      FLAG_Z = 0;
      FLAG_N = NFLAG_CLEAR;
      FLAG_V = VFLAG_CLEAR;
      FLAG_C = CFLAG_CLEAR;
      *r_dst = 0;
      return;
    }

    quotient = FUNC1(*r_dst) / src;
    remainder = FUNC1(*r_dst) % src;

    if(quotient == FUNC0(quotient))
    {
      FLAG_Z = quotient;
      FLAG_N = FUNC4(quotient);
      FLAG_V = VFLAG_CLEAR;
      FLAG_C = CFLAG_CLEAR;
      *r_dst = FUNC3(FUNC2(quotient) | (remainder << 16));
      return;
    }
    FLAG_V = VFLAG_SET;
    FLAG_N = NFLAG_SET; /* undocumented behavior (fixes Blood Shot on Genesis) */
    FLAG_C = CFLAG_CLEAR;
    return;
  }
  FLAG_C = CFLAG_CLEAR;
  FUNC6(EXCEPTION_ZERO_DIVIDE);
}
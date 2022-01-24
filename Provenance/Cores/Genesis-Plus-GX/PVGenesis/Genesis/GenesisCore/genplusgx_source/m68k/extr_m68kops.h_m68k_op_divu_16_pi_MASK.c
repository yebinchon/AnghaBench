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
typedef  int uint ;

/* Variables and functions */
 int /*<<< orphan*/  CFLAG_CLEAR ; 
 int DX ; 
 int /*<<< orphan*/  EXCEPTION_ZERO_DIVIDE ; 
 int /*<<< orphan*/  FLAG_C ; 
 int /*<<< orphan*/  FLAG_N ; 
 int /*<<< orphan*/  FLAG_V ; 
 int FLAG_Z ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  NFLAG_SET ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  VFLAG_CLEAR ; 
 int /*<<< orphan*/  VFLAG_SET ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(void)
{
  uint* r_dst = &DX;
  uint src = FUNC3();

  if(src != 0)
  {
    uint quotient = *r_dst / src;
    uint remainder = *r_dst % src;

    if(quotient < 0x10000)
    {
      FUNC5(*r_dst,src);
      FLAG_Z = quotient;
      FLAG_N = FUNC2(quotient);
      FLAG_V = VFLAG_CLEAR;
      FLAG_C = CFLAG_CLEAR;
      *r_dst = FUNC1(FUNC0(quotient) | (remainder << 16));
      return;
    }
    FUNC4(7 *10);
    FLAG_V = VFLAG_SET;
    FLAG_N = NFLAG_SET; /* undocumented behavior (fixes Blood Shot on Genesis) */
    FLAG_C = CFLAG_CLEAR;
    return;
  }
  FLAG_C = CFLAG_CLEAR;
  FUNC6(EXCEPTION_ZERO_DIVIDE);
}
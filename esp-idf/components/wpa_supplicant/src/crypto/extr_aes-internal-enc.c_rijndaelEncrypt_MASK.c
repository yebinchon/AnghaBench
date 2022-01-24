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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;

/* Variables and functions */
 int const FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int const FUNC3 (int) ; 
 int const FUNC4 (int) ; 
 int const FUNC5 (int) ; 
 int const FUNC6 (int) ; 
 int /*<<< orphan*/  s ; 
 int /*<<< orphan*/  t ; 

void  FUNC7(const u32 rk[], int Nr, const u8 pt[16], u8 ct[16])
{
	u32 s0, s1, s2, s3, t0, t1, t2, t3;
#ifndef FULL_UNROLL
	int r;
#endif /* ?FULL_UNROLL */

	/*
	 * map byte array block to cipher state
	 * and add initial round key:
	 */
	s0 = FUNC0(pt     ) ^ rk[0];
	s1 = FUNC0(pt +  4) ^ rk[1];
	s2 = FUNC0(pt +  8) ^ rk[2];
	s3 = FUNC0(pt + 12) ^ rk[3];

#define ROUND(i,d,s) \
d##0 = TE0(s##0) ^ TE1(s##1) ^ TE2(s##2) ^ TE3(s##3) ^ rk[4 * i]; \
d##1 = TE0(s##1) ^ TE1(s##2) ^ TE2(s##3) ^ TE3(s##0) ^ rk[4 * i + 1]; \
d##2 = TE0(s##2) ^ TE1(s##3) ^ TE2(s##0) ^ TE3(s##1) ^ rk[4 * i + 2]; \
d##3 = TE0(s##3) ^ TE1(s##0) ^ TE2(s##1) ^ TE3(s##2) ^ rk[4 * i + 3]

#ifdef FULL_UNROLL

	ROUND(1,t,s);
	ROUND(2,s,t);
	ROUND(3,t,s);
	ROUND(4,s,t);
	ROUND(5,t,s);
	ROUND(6,s,t);
	ROUND(7,t,s);
	ROUND(8,s,t);
	ROUND(9,t,s);
	if (Nr > 10) {
		ROUND(10,s,t);
		ROUND(11,t,s);
		if (Nr > 12) {
			ROUND(12,s,t);
			ROUND(13,t,s);
		}
	}

	rk += Nr << 2;

#else  /* !FULL_UNROLL */

	/* Nr - 1 full rounds: */
	r = Nr >> 1;
	for (;;) {
		ROUND(1,t,s);
		rk += 8;
		if (--r == 0)
			break;
		ROUND(0,s,t);
	}

#endif /* ?FULL_UNROLL */

#undef ROUND

	/*
	 * apply last round and
	 * map cipher state to byte array block:
	 */
	s0 = FUNC3(t0) ^ FUNC4(t1) ^ FUNC5(t2) ^ FUNC6(t3) ^ rk[0];
	FUNC1(ct     , s0);
	s1 = FUNC3(t1) ^ FUNC4(t2) ^ FUNC5(t3) ^ FUNC6(t0) ^ rk[1];
	FUNC1(ct +  4, s1);
	s2 = FUNC3(t2) ^ FUNC4(t3) ^ FUNC5(t0) ^ FUNC6(t1) ^ rk[2];
	FUNC1(ct +  8, s2);
	s3 = FUNC3(t3) ^ FUNC4(t0) ^ FUNC5(t1) ^ FUNC6(t2) ^ rk[3];
	FUNC1(ct + 12, s3);
}
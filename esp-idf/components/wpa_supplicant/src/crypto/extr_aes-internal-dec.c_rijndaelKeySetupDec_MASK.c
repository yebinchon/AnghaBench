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
typedef  int /*<<< orphan*/  rk ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int*,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int  FUNC6(u32 rk[], const u8 cipherKey[], int keyBits)
{
	int Nr, i, j;
	u32 temp;

	/* expand the cipher key: */
	Nr = FUNC5(rk, cipherKey, keyBits);
	if (Nr < 0)
		return Nr;
	/* invert the order of the round keys: */
	for (i = 0, j = 4*Nr; i < j; i += 4, j -= 4) {
		temp = rk[i    ]; rk[i    ] = rk[j    ]; rk[j    ] = temp;
		temp = rk[i + 1]; rk[i + 1] = rk[j + 1]; rk[j + 1] = temp;
		temp = rk[i + 2]; rk[i + 2] = rk[j + 2]; rk[j + 2] = temp;
		temp = rk[i + 3]; rk[i + 3] = rk[j + 3]; rk[j + 3] = temp;
	}
	/* apply the inverse MixColumn transform to all round keys but the
	 * first and the last: */
	for (i = 1; i < Nr; i++) {
		rk += 4;
		for (j = 0; j < 4; j++) {
			rk[j] = FUNC0(FUNC4((rk[j] >> 24)       )) ^
				FUNC1(FUNC4((rk[j] >> 16) & 0xff)) ^
				FUNC2(FUNC4((rk[j] >>  8) & 0xff)) ^
				FUNC3(FUNC4((rk[j]      ) & 0xff));
		}
	}

	return Nr;
}
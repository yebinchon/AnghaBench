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
typedef  scalar_t__ uint8 ;
typedef  int /*<<< orphan*/  SHA_CTX ;
typedef  int /*<<< orphan*/  MD5_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,scalar_t__,int) ; 

void
FUNC7(uint8 * out, uint8 * in, uint8 * salt1, uint8 * salt2, uint8 salt)
{
	uint8 shasig[20];
	uint8 pad[4];
	SHA_CTX sha;
	MD5_CTX md5;
	int i;

	for (i = 0; i < 3; i++)
	{
		FUNC6(pad, salt + i, i + 1);

		FUNC4(&sha);
		FUNC5(&sha, pad, i + 1);
		FUNC5(&sha, in, 48);
		FUNC5(&sha, salt1, 32);
		FUNC5(&sha, salt2, 32);
		FUNC3(shasig, &sha);

		FUNC1(&md5);
		FUNC2(&md5, in, 48);
		FUNC2(&md5, shasig, 20);
		FUNC0(&out[i * 16], &md5);
	}
}
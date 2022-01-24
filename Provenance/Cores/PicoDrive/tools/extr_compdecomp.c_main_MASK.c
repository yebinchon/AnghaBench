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
typedef  int /*<<< orphan*/  uLongf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int MEM_LIMIT ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  Z_BEST_COMPRESSION ; 
 int Z_BUF_ERROR ; 
 int Z_OK ; 
 scalar_t__ FUNC0 (char*) ; 
 int FUNC1 (void*,int /*<<< orphan*/ *,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (void*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (void*,int,int,int /*<<< orphan*/ *) ; 
 void* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 void* FUNC10 (void*,int) ; 
 int FUNC11 (void*,int /*<<< orphan*/ *,void*,int) ; 

int FUNC12(int argc, char *argv[])
{
	void *pi, *po = NULL;
	FILE *fi, *fo;
	int ret, si, so;

	if (argc != 4)
	{
		FUNC9("usage: %s <0|1> <infile> <outfile>\n", argv[0]);
		return 1;
	}

	fi = FUNC3(argv[2], "rb");
	if (fi == NULL) return 2;

	FUNC5(fi, 0, SEEK_END);
	si = FUNC6(fi);
	FUNC5(fi, 0, SEEK_SET);
	pi = FUNC8(si);
	if (pi == NULL) return 3;
	FUNC4(pi, 1, si, fi);
	FUNC2(fi);

	if (FUNC0(argv[1]))
	{
		// decompress
		so = si;
		do
		{
			so *= 16;
			if (so > MEM_LIMIT) return 4;
			po = FUNC10(po, so);
			if (po == NULL) return 5;
			ret = FUNC11(po, (uLongf *) &so, pi, si);
		}
		while (ret == Z_BUF_ERROR);
	}
	else
	{
		// compress
		so = si + 1024;
		po = FUNC8(so);
		if (po == NULL) return 5;
		ret = FUNC1(po, (uLongf *) &so, pi, si, Z_BEST_COMPRESSION);
	}

	if (ret == Z_OK)
	{
		fo = FUNC3(argv[3], "wb");
		if (fo == NULL) return 6;
		FUNC7(po, 1, so, fo);
		FUNC2(fo);
	}

	FUNC9("result %i, size %i -> %i\n", ret, si, so);

	return ret;
}
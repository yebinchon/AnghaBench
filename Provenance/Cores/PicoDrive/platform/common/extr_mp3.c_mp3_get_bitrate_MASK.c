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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC0 (unsigned char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (unsigned char*,int) ; 

int FUNC4(void *f_, int len)
{
	unsigned char buf[2048];
	FILE *f = f_;
	int retval = -1;
	int ret;

	FUNC2(buf, 0, sizeof(buf));

	FUNC1(f, 0, SEEK_SET);
	ret = FUNC0(buf, 1, sizeof(buf), f);
	if (ret != sizeof(buf))
		goto out;

	ret = FUNC3(buf, sizeof(buf));
	if (ret <= 0) {
		// try to read somewhere around the middle
		FUNC1(f, len / 2, SEEK_SET);
		ret = FUNC0(buf, 1, sizeof(buf), f);
		if (ret == sizeof(buf))
			ret = FUNC3(buf, sizeof(buf));
	}
	if (ret > 0)
		retval = ret;

	//printf("bitrate: %i\n", retval);

out:
	FUNC1(f, 0, SEEK_SET);
	return retval;
}
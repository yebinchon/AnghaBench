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
typedef  int /*<<< orphan*/  const uuid_t ;
typedef  unsigned long uuid_string_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EINVAL ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const,int /*<<< orphan*/  const*,unsigned long) ; 
 int /*<<< orphan*/  const* FUNC3 (void*,size_t,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  libkern_bundle ; 
 unsigned long libkern_path ; 
 int FUNC5 (unsigned long,void**,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const,unsigned long) ; 

__attribute__((used)) static int
FUNC7(void)
{
	int err = 0;
	void *buf = NULL;
	size_t bufsz = 4*1024*1024UL;

	/* get the UUID of the libkern in /S/L/E */

	err = FUNC5(libkern_path, &buf, &bufsz);
	if (err) {
		goto out;
	}

	unsigned long uuidsz = 0;
	const uuid_t *img_uuid = FUNC3(buf, bufsz, &uuidsz);
	if (img_uuid == NULL || uuidsz != sizeof(uuid_t)) {
		FUNC0("invalid UUID (sz = %lu)", uuidsz);
		err = EINVAL;
		goto out;
	}

	/* Get the UUID of the loaded libkern */
	uuid_t live_uuid;
	err = FUNC1(libkern_bundle, live_uuid);
	if (err) {
		FUNC0("could not find loaded libkern");
		goto out;
	}

	/* ... and compare them */
	if (FUNC2(live_uuid, img_uuid, uuidsz) != 0) {
		FUNC0("UUID of running libkern does not match %s", libkern_path);

		uuid_string_t img_uuid_str, live_uuid_str;
		FUNC6(*img_uuid, img_uuid_str);
		FUNC6(live_uuid, live_uuid_str);
		FUNC0("loaded libkern UUID =  %s", live_uuid_str);
		FUNC0("on-disk libkern UUID = %s", img_uuid_str);

		err = EINVAL;
		goto out;
	}

	/* UUID matches! */

out:
	FUNC4(buf);
	return err;
}
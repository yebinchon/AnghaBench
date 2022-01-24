#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int* binds; int key_count; char** key_names; int /*<<< orphan*/  drv_id; } ;
typedef  TYPE_1__ in_dev_t ;
struct TYPE_5__ {int (* get_key_code ) (char const*) ;} ;

/* Variables and functions */
 TYPE_3__ FUNC0 (int /*<<< orphan*/ ) ; 
 int IN_BINDTYPE_COUNT ; 
 int IN_BINDTYPE_NONE ; 
 size_t FUNC1 (int,int) ; 
 TYPE_1__* FUNC2 (int) ; 
 int* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 scalar_t__ FUNC5 (char const*,char const*) ; 
 int FUNC6 (char const*) ; 
 scalar_t__ FUNC7 (char const*,char**,int) ; 
 int FUNC8 (char const*) ; 

int FUNC9(int dev_id, const char *key, int acts, int bind_type)
{
	in_dev_t *dev;
	int i, offs, kc;

	dev = FUNC2(dev_id);
	if (dev == NULL || bind_type >= IN_BINDTYPE_COUNT)
		return -1;

	/* maybe a raw code? */
	if (key[0] == '\\' && key[1] == 'x') {
		char *p = NULL;
		kc = (int)FUNC7(key + 2, &p, 16);
		if (p == NULL || *p != 0)
			kc = -1;
	}
	else {
		/* device specific key name */
		if (dev->binds == NULL) {
			dev->binds = FUNC3(dev->drv_id, dev->key_count);
			if (dev->binds == NULL)
				return -1;
		}

		kc = -1;
		if (dev->key_names != NULL) {
			for (i = 0; i < dev->key_count; i++) {
				const char *k = dev->key_names[i];
				if (k != NULL && FUNC5(k, key) == 0) {
					kc = i;
					break;
				}
			}
		}

		if (kc < 0)
			kc = FUNC0(dev->drv_id).get_key_code(key);
		if (kc < 0 && FUNC6(key) == 1) {
			/* assume scancode */
			kc = key[0];
		}
	}

	if (kc < 0 || kc >= dev->key_count) {
		FUNC4("input: bad key: %s\n", key);
		return -1;
	}

	if (bind_type == IN_BINDTYPE_NONE) {
		for (i = 0; i < IN_BINDTYPE_COUNT; i++)
			dev->binds[FUNC1(kc, i)] = 0;
		return 0;
	}

	offs = FUNC1(kc, bind_type);
	if (dev->binds[offs] == -1)
		dev->binds[offs] = 0;
	dev->binds[offs] |= acts;
	return 0;
}
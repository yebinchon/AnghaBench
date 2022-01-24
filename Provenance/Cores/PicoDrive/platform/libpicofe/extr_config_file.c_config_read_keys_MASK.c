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
typedef  int /*<<< orphan*/  key ;
typedef  int /*<<< orphan*/  dev ;

/* Variables and functions */
 unsigned int FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char const*) ; 
 int* in_adev ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int,int) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (char*,int*) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int FUNC10 (char const*,char*,int*) ; 
 char* FUNC11 (char*,char) ; 
 scalar_t__ FUNC12 (char const*,char*,int) ; 
 char* FUNC13 (char const*,char*) ; 

void FUNC14(const char *cfg_content)
{
	char dev[256], key[128], *act;
	const char *p;
	int bind, bindtype;
	int dev_id;

	p = cfg_content;
	while (p != NULL && (p = FUNC13(p, "binddev = ")) != NULL) {
		p += 10;

		FUNC1(dev, sizeof(dev), p);
		dev_id = FUNC4(dev);
		if (dev_id < 0) {
			FUNC9("input: can't handle dev: %s\n", dev);
			continue;
		}

		FUNC5(dev_id, -1, -1);
		while ((p = FUNC13(p, "bind"))) {
			if (FUNC12(p, "binddev = ", 10) == 0)
				break;

#ifdef ANALOG_BINDS
			if (strncmp(p, "bind_analog", 11) == 0) {
				int ret = sscanf(p, "bind_analog = %d", &bind);
				p += 11;
				if (ret != 1) {
					printf("input: parse error: %16s..\n", p);
					continue;
				}
				if ((unsigned int)bind >= array_size(in_adev)) {
					printf("input: analog id %d out of range\n", bind);
					continue;
				}
				in_adev[bind] = dev_id;
				continue;
			}
#endif

			p += 4;
			if (*p != ' ') {
				FUNC9("input: parse error: %16s..\n", p);
				continue;
			}

			FUNC1(key, sizeof(key), p);
			act = FUNC11(key, '=');
			if (act == NULL) {
				FUNC9("parse failed: %16s..\n", p);
				continue;
			}
			*act = 0;
			act++;
			FUNC7(key);
			FUNC7(act);

			bind = FUNC8(act, &bindtype);
			if (bind != -1 && bind != 0) {
				//printf("bind #%d '%s' %08x (%s)\n", dev_id, key, bind, act);
				FUNC3(dev_id, key, bind, bindtype);
			}
			else
				FUNC6("config: unhandled action \"%s\"\n", act);
		}
	}
	FUNC2();
}
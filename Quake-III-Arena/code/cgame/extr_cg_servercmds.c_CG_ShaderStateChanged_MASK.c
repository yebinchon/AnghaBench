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

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CS_SHADERSTATE ; 
 int MAX_QPATH ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 void* FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 

void FUNC4(void) {
	char originalShader[MAX_QPATH];
	char newShader[MAX_QPATH];
	char timeOffset[16];
	const char *o;
	char *n,*t;

	o = FUNC0( CS_SHADERSTATE );
	while (o && *o) {
		n = FUNC2(o, "=");
		if (n && *n) {
			FUNC1(originalShader, o, n-o);
			originalShader[n-o] = 0;
			n++;
			t = FUNC2(n, ":");
			if (t && *t) {
				FUNC1(newShader, n, t-n);
				newShader[t-n] = 0;
			} else {
				break;
			}
			t++;
			o = FUNC2(t, "@");
			if (o) {
				FUNC1(timeOffset, t, o-t);
				timeOffset[o-t] = 0;
				o++;
				FUNC3( originalShader, newShader, timeOffset );
			}
		} else {
			break;
		}
	}
}
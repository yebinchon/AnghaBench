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
typedef  int u_int ;
typedef  int u_char ;

/* Variables and functions */
 int NS_INADDRSZ ; 
 int /*<<< orphan*/  FUNC0 (int*,int*,int) ; 
 char* FUNC1 (char const*,int) ; 

__attribute__((used)) static int
FUNC2(const char *src, u_char *dst)
{
	static const char digits[] = "0123456789";
	int saw_digit, octets, ch;
#define NS_INADDRSZ	4
	u_char tmp[NS_INADDRSZ], *tp;

	saw_digit = 0;
	octets = 0;
	*(tp = tmp) = 0;
	while ((ch = *src++) != '\0') {
		const char *pch;

		if ((pch = FUNC1(digits, ch)) != NULL) {
			u_int new = *tp * 10 + (pch - digits);

			if (saw_digit && *tp == 0)
				return (0);
			if (new > 255)
				return (0);
			*tp = new;
			if (!saw_digit) {
				if (++octets > 4)
					return (0);
				saw_digit = 1;
			}
		} else if (ch == '.' && saw_digit) {
			if (octets == 4)
				return (0);
			*++tp = 0;
			saw_digit = 0;
		} else
			return (0);
	}
	if (octets < 4)
		return (0);
	FUNC0(dst, tmp, NS_INADDRSZ);
	return (1);
}
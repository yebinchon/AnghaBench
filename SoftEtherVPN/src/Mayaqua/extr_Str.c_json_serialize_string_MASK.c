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
typedef  size_t UINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 size_t FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(char *string, char *buf) {
	UINT i = 0, len = FUNC1(string);
	char c = '\0';
	int written = -1, written_total = 0;
	FUNC0("\"");
	for (i = 0; i < len; i++) {
		c = string[i];
		switch (c) {
		case '\"': FUNC0("\\\""); break;
		case '\\': FUNC0("\\\\"); break;
		case '/':  FUNC0("\\/"); break; /* to make json embeddable in xml\/html */
		case '\b': FUNC0("\\b"); break;
		case '\f': FUNC0("\\f"); break;
		case '\n': FUNC0("\\n"); break;
		case '\r': FUNC0("\\r"); break;
		case '\t': FUNC0("\\t"); break;
		case '\x00': FUNC0("\\u0000"); break;
		case '\x01': FUNC0("\\u0001"); break;
		case '\x02': FUNC0("\\u0002"); break;
		case '\x03': FUNC0("\\u0003"); break;
		case '\x04': FUNC0("\\u0004"); break;
		case '\x05': FUNC0("\\u0005"); break;
		case '\x06': FUNC0("\\u0006"); break;
		case '\x07': FUNC0("\\u0007"); break;
			/* '\x08' duplicate: '\b' */
			/* '\x09' duplicate: '\t' */
			/* '\x0a' duplicate: '\n' */
		case '\x0b': FUNC0("\\u000b"); break;
			/* '\x0c' duplicate: '\f' */
			/* '\x0d' duplicate: '\r' */
		case '\x0e': FUNC0("\\u000e"); break;
		case '\x0f': FUNC0("\\u000f"); break;
		case '\x10': FUNC0("\\u0010"); break;
		case '\x11': FUNC0("\\u0011"); break;
		case '\x12': FUNC0("\\u0012"); break;
		case '\x13': FUNC0("\\u0013"); break;
		case '\x14': FUNC0("\\u0014"); break;
		case '\x15': FUNC0("\\u0015"); break;
		case '\x16': FUNC0("\\u0016"); break;
		case '\x17': FUNC0("\\u0017"); break;
		case '\x18': FUNC0("\\u0018"); break;
		case '\x19': FUNC0("\\u0019"); break;
		case '\x1a': FUNC0("\\u001a"); break;
		case '\x1b': FUNC0("\\u001b"); break;
		case '\x1c': FUNC0("\\u001c"); break;
		case '\x1d': FUNC0("\\u001d"); break;
		case '\x1e': FUNC0("\\u001e"); break;
		case '\x1f': FUNC0("\\u001f"); break;
		default:
			if (buf != NULL) {
				buf[0] = c;
				buf += 1;
			}
			written_total += 1;
			break;
		}
	}
	FUNC0("\"");
	return written_total;
}
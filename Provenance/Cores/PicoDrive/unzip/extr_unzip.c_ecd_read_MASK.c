#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int length; int ecd_length; char* ecd; int /*<<< orphan*/  fp; } ;
typedef  TYPE_1__ ZIP ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ FUNC0 (char*,int,int*) ; 
 int FUNC1 (char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 

__attribute__((used)) static int FUNC7(ZIP* zip) {
	char* buf;
	int buf_length = 1024; /* initial buffer length */

	while (1) {
		int offset;

		if (buf_length > zip->length)
			buf_length = zip->length;

		if (FUNC3(zip->fp, zip->length - buf_length, SEEK_SET) != 0) {
			return -1;
		}

		/* allocate buffer */
		buf = (char*)FUNC5( buf_length );
		if (!buf) {
			return -1;
		}

		if (FUNC1( buf, buf_length, 1, zip->fp ) != 1) {
			FUNC2(buf);
			return -1;
		}

		if (FUNC0(buf, buf_length, &offset)) {
			zip->ecd_length = buf_length - offset;

			zip->ecd = (char*)FUNC5( zip->ecd_length );
			if (!zip->ecd) {
				FUNC2(buf);
				return -1;
			}

			FUNC6(zip->ecd, buf + offset, zip->ecd_length);

			FUNC2(buf);
			return 0;
		}

		FUNC2(buf);

		if (buf_length < zip->length) {
			/* double buffer */
			buf_length = 2*buf_length;

			FUNC4("Retry reading of zip ecd for %d bytes\n",buf_length);

		} else {
			return -1;
		}
	}
}
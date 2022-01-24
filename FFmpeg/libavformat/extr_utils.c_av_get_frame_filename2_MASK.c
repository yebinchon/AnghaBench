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
typedef  int /*<<< orphan*/  buf1 ;

/* Variables and functions */
 int AV_FRAME_FILENAME_FLAGS_MULTIPLE ; 
 scalar_t__ FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int,int) ; 
 int FUNC3 (char*) ; 

int FUNC4(char *buf, int buf_size, const char *path, int number, int flags)
{
    const char *p;
    char *q, buf1[20], c;
    int nd, len, percentd_found;

    q = buf;
    p = path;
    percentd_found = 0;
    for (;;) {
        c = *p++;
        if (c == '\0')
            break;
        if (c == '%') {
            do {
                nd = 0;
                while (FUNC0(*p))
                    nd = nd * 10 + *p++ - '0';
                c = *p++;
            } while (FUNC0(c));

            switch (c) {
            case '%':
                goto addchar;
            case 'd':
                if (!(flags & AV_FRAME_FILENAME_FLAGS_MULTIPLE) && percentd_found)
                    goto fail;
                percentd_found = 1;
                if (number < 0)
                    nd += 1;
                FUNC2(buf1, sizeof(buf1), "%0*d", nd, number);
                len = FUNC3(buf1);
                if ((q - buf + len) > buf_size - 1)
                    goto fail;
                FUNC1(q, buf1, len);
                q += len;
                break;
            default:
                goto fail;
            }
        } else {
addchar:
            if ((q - buf) < buf_size - 1)
                *q++ = c;
        }
    }
    if (!percentd_found)
        goto fail;
    *q = '\0';
    return 0;
fail:
    *q = '\0';
    return -1;
}
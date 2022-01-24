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
struct error_entry {int num; int /*<<< orphan*/  str; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct error_entry*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,size_t) ; 
 struct error_entry* error_entries ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,size_t) ; 

int FUNC6(int errnum, char *errbuf, size_t errbuf_size)
{
    int ret = 0, i;
    const struct error_entry *entry = NULL;

    for (i = 0; i < FUNC2(error_entries); i++) {
        if (errnum == error_entries[i].num) {
            entry = &error_entries[i];
            break;
        }
    }
    if (entry) {
        FUNC3(errbuf, entry->str, errbuf_size);
    } else {
#if HAVE_STRERROR_R
        ret = AVERROR(strerror_r(AVUNERROR(errnum), errbuf, errbuf_size));
#else
        ret = -1;
#endif
        if (ret < 0)
            FUNC4(errbuf, errbuf_size, "Error number %d occurred", errnum);
    }

    return ret;
}
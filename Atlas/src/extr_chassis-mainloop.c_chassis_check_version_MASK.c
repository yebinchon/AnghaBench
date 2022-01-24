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
 int /*<<< orphan*/  G_STRLOC ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char const*,int) ; 
 int FUNC1 (char const*,char*,int*,int*,int*) ; 

int FUNC2(const char *lib_version, const char *hdr_version) {
	int lib_maj, lib_min, lib_pat;
	int hdr_maj, hdr_min, hdr_pat;
	int scanned_fields;

	if (3 != (scanned_fields = FUNC1(lib_version, "%d.%d.%d%*s", &lib_maj, &lib_min, &lib_pat))) {
		FUNC0("%s: library version %s failed to parse: %d",
				G_STRLOC, lib_version, scanned_fields);
		return -1;
	}
	if (3 != (scanned_fields = FUNC1(hdr_version, "%d.%d.%d%*s", &hdr_maj, &hdr_min, &hdr_pat))) {
		FUNC0("%s: header version %s failed to parse: %d",
				G_STRLOC, hdr_version, scanned_fields);
		return -1;
	}
	
	if (lib_maj == hdr_maj &&
	    lib_min == hdr_min &&
	    lib_pat >= hdr_pat) {
		return 0;
	}

	return -1;
}
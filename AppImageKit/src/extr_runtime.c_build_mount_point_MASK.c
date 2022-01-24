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
 char* FUNC0 (char const* const) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const* const) ; 
 size_t FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

bool FUNC5(char* mount_dir, const char* const argv0, char const* const temp_base, const size_t templen) {
    const size_t maxnamelen = 6;

    // when running for another AppImage, we should use that for building the mountpoint name instead
    char* target_appimage = FUNC1("TARGET_APPIMAGE");

    char* path_basename;
    if (target_appimage != NULL) {
        path_basename = FUNC0(target_appimage);
    } else {
        path_basename = FUNC0(argv0);
    }

    size_t namelen = FUNC3(path_basename);
    // limit length of tempdir name
    if (namelen > maxnamelen) {
        namelen = maxnamelen;
    }

    FUNC2(mount_dir, temp_base);
    FUNC4(mount_dir + templen, "/.mount_", 8);
    FUNC4(mount_dir + templen + 8, path_basename, namelen);
    FUNC4(mount_dir+templen+8+namelen, "XXXXXX", 6);
    mount_dir[templen+8+namelen+6] = 0; // null terminate destination
}
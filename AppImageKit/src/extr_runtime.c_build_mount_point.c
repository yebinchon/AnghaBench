
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* basename (char const* const) ;
 char* getenv (char*) ;
 int strcpy (char*,char const* const) ;
 size_t strlen (char*) ;
 int strncpy (char*,char*,int) ;

bool build_mount_point(char* mount_dir, const char* const argv0, char const* const temp_base, const size_t templen) {
    const size_t maxnamelen = 6;


    char* target_appimage = getenv("TARGET_APPIMAGE");

    char* path_basename;
    if (target_appimage != ((void*)0)) {
        path_basename = basename(target_appimage);
    } else {
        path_basename = basename(argv0);
    }

    size_t namelen = strlen(path_basename);

    if (namelen > maxnamelen) {
        namelen = maxnamelen;
    }

    strcpy(mount_dir, temp_base);
    strncpy(mount_dir + templen, "/.mount_", 8);
    strncpy(mount_dir + templen + 8, path_basename, namelen);
    strncpy(mount_dir+templen+8+namelen, "XXXXXX", 6);
    mount_dir[templen+8+namelen+6] = 0;
}

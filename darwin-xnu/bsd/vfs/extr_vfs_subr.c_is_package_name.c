
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* extension_table ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int max_ext_width ;
 int nexts ;
 int pkg_extensions_lck ;
 int strlen (char const*) ;
 scalar_t__ strncasecmp (char const*,char const*,int) ;

int is_package_name(const char *name, int len)
{
    int i, extlen;
    const char *ptr, *name_ext;

    if (len <= 3) {
 return 0;
    }

    name_ext = ((void*)0);
    for(ptr=name; *ptr != '\0'; ptr++) {
 if (*ptr == '.') {
     name_ext = ptr;
 }
    }


    if (name_ext == ((void*)0)) {
 return 0;
    }


    name_ext++;

    lck_mtx_lock(pkg_extensions_lck);


    ptr = &extension_table[0];
    for(i=0; i < nexts; i++, ptr+=max_ext_width) {
 extlen = strlen(ptr);
 if (strncasecmp(name_ext, ptr, extlen) == 0 && name_ext[extlen] == '\0') {

     lck_mtx_unlock(pkg_extensions_lck);
     return 1;
 }
    }

    lck_mtx_unlock(pkg_extensions_lck);


    return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int binpath ;


 int F_OK ;
 int MAXPATHLEN ;
 int _NSGetExecutablePath (char*,int*) ;
 scalar_t__ access (char*,int ) ;
 int assert (int) ;
 char* dirname (char*) ;
 int snprintf (char*,int,char*,char*,char*) ;

int find_test(char* test_name, char* test_path) {
    char binpath[MAXPATHLEN];
    char* dirpath;
    uint32_t size = sizeof(binpath);
    int retval;

    retval = _NSGetExecutablePath(binpath, &size);
    assert(retval == 0);
    dirpath = dirname(binpath);

    snprintf(test_path, MAXPATHLEN, "%s/perfindex-%s.dylib", dirpath, test_name);
    if(access(test_path, F_OK) == 0)
        return 0;
    else
        return -1;
}

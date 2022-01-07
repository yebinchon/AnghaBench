
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int filepath ;


 int MAXPATHLEN ;
 int PERFINDEX_SUCCESS ;
 int VERIFY (int,char*) ;
 int snprintf (char*,int,char*,char*) ;
 int unlink (char*) ;

int test_file_read_cleanup(char* path, int num_threads, long long length) {
    char filepath[MAXPATHLEN];
    int retval;

    snprintf(filepath, sizeof(filepath), "%s/file_read", path);
    retval = unlink(filepath);
    VERIFY(retval == 0, "unlink failed");

    return PERFINDEX_SUCCESS;
}

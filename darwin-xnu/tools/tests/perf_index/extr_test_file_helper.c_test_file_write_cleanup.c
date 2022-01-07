
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int filepath ;


 int MAXPATHLEN ;
 int PERFINDEX_SUCCESS ;
 int VERIFY (int,char*) ;
 int snprintf (char*,int,char*,char*,int) ;
 int unlink (char*) ;

int test_file_write_cleanup(char* path, int num_threads, long long length) {
    int i;
    char filepath[MAXPATHLEN];
    int retval;

    for(i=0; i<num_threads; i++) {
        snprintf(filepath, sizeof(filepath), "%s/file_write-%d", path, i);
        retval = unlink(filepath);
        VERIFY(retval == 0, "unlink failed");
    }

    return PERFINDEX_SUCCESS;
}

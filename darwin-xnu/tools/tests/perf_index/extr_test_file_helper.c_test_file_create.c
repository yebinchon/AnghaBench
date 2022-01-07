
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXPATHLEN ;
 int O_CREAT ;
 int O_EXCL ;
 int O_WRONLY ;
 int PERFINDEX_SUCCESS ;
 int VERIFY (int,char*) ;
 int close (int) ;
 int open (char*,int,int) ;
 int snprintf (char*,int,char*,char*,int,long long) ;
 int unlink (char*) ;

int test_file_create(char* path, int thread_id, int num_threads, long long length) {
  long long i;
  int fd;
  int retval;
  char filepath[MAXPATHLEN];

  for(i=0; i<length; i++) {
    snprintf(filepath, MAXPATHLEN, "%s/file_create-%d-%lld", path, thread_id, i);
    fd = open(filepath, O_CREAT | O_EXCL | O_WRONLY, 0644);
    VERIFY(fd >= 0, "open failed");

    close(fd);
  }

  for(i=0; i<length; i++) {
    snprintf(filepath, MAXPATHLEN, "%s/file_create-%d-%lld", path, thread_id, i);
    retval = unlink(filepath);
    VERIFY(retval == 0, "unlink failed");
  }

  return PERFINDEX_SUCCESS;
}

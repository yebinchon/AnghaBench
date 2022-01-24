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
 int MAXPATHLEN ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_WRONLY ; 
 int PERFINDEX_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*,int,long long) ; 
 int FUNC4 (char*) ; 

int FUNC5(char* path, int thread_id, int num_threads, long long length) {
  long long i;
  int fd;
  int retval;
  char filepath[MAXPATHLEN];

  for(i=0; i<length; i++) {
    FUNC3(filepath, MAXPATHLEN, "%s/file_create-%d-%lld", path, thread_id, i);
    fd = FUNC2(filepath, O_CREAT | O_EXCL | O_WRONLY, 0644);
    FUNC0(fd >= 0, "open failed");

    FUNC1(fd);
  }

  for(i=0; i<length; i++) {
    FUNC3(filepath, MAXPATHLEN, "%s/file_create-%d-%lld", path, thread_id, i);
    retval = FUNC4(filepath);
    FUNC0(retval == 0, "unlink failed");
  }

  return PERFINDEX_SUCCESS;
}
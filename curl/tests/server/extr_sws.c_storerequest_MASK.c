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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EINTR ; 
 char* REQUEST_DUMP ; 
 char* REQUEST_PROXY_DUMP ; 
 int errno ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 size_t FUNC2 (char const*,int,size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ got_exit_signal ; 
 scalar_t__ is_proxy ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(const char *reqbuf, size_t totalsize)
{
  int res;
  int error = 0;
  size_t written;
  size_t writeleft;
  FILE *dump;
  const char *dumpfile = is_proxy?REQUEST_PROXY_DUMP:REQUEST_DUMP;

  if(reqbuf == NULL)
    return;
  if(totalsize == 0)
    return;

  do {
    dump = FUNC1(dumpfile, "ab");
  } while((dump == NULL) && ((error = errno) == EINTR));
  if(dump == NULL) {
    FUNC3("[2] Error opening file %s error: %d %s",
           dumpfile, error, FUNC4(error));
    FUNC3("Failed to write request input ");
    return;
  }

  writeleft = totalsize;
  do {
    written = FUNC2(&reqbuf[totalsize-writeleft],
                     1, writeleft, dump);
    if(got_exit_signal)
      goto storerequest_cleanup;
    if(written > 0)
      writeleft -= written;
  } while((writeleft > 0) && ((error = errno) == EINTR));

  if(writeleft == 0)
    FUNC3("Wrote request (%zu bytes) input to %s", totalsize, dumpfile);
  else if(writeleft > 0) {
    FUNC3("Error writing file %s error: %d %s",
           dumpfile, error, FUNC4(error));
    FUNC3("Wrote only (%zu bytes) of (%zu bytes) request input to %s",
           totalsize-writeleft, totalsize, dumpfile);
  }

storerequest_cleanup:

  do {
    res = FUNC0(dump);
  } while(res && ((error = errno) == EINTR));
  if(res)
    FUNC3("Error closing file %s error: %d %s",
           dumpfile, error, FUNC4(error));
}
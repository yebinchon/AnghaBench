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
typedef  scalar_t__ CURLUcode ;
typedef  int /*<<< orphan*/  CURLU ;

/* Variables and functions */
 int /*<<< orphan*/  CURLUPART_HOST ; 
 int /*<<< orphan*/  CURLUPART_PATH ; 
 int /*<<< orphan*/  CURLUPART_URL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

int FUNC6(void)
{
  CURLU *h;
  CURLUcode uc;
  char *host;
  char *path;

  h = FUNC1(); /* get a handle to work with */
  if(!h)
    return 1;

  /* parse a full URL */
  uc = FUNC4(h, CURLUPART_URL, "http://example.com/path/index.html", 0);
  if(uc)
    goto fail;

  /* extract host name from the parsed URL */
  uc = FUNC3(h, CURLUPART_HOST, &host, 0);
  if(!uc) {
    FUNC5("Host name: %s\n", host);
    FUNC0(host);
  }

  /* extract the path from the parsed URL */
  uc = FUNC3(h, CURLUPART_PATH, &path, 0);
  if(!uc) {
    FUNC5("Path: %s\n", path);
    FUNC0(path);
  }

  /* redirect with a relative URL */
  uc = FUNC4(h, CURLUPART_URL, "../another/second.html", 0);
  if(uc)
    goto fail;

  /* extract the new, updated path */
  uc = FUNC3(h, CURLUPART_PATH, &path, 0);
  if(!uc) {
    FUNC5("Path: %s\n", path);
    FUNC0(path);
  }

  fail:
  FUNC2(h); /* free url handle */
  return 0;
}
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
struct part {char* member_1; int /*<<< orphan*/  part; scalar_t__ name; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  scalar_t__ CURLUcode ;
typedef  int /*<<< orphan*/  CURLU ;

/* Variables and functions */
 int /*<<< orphan*/  CURLUPART_FRAGMENT ; 
 int /*<<< orphan*/  CURLUPART_HOST ; 
 int /*<<< orphan*/  CURLUPART_OPTIONS ; 
 int /*<<< orphan*/  CURLUPART_PASSWORD ; 
 int /*<<< orphan*/  CURLUPART_PATH ; 
 int /*<<< orphan*/  CURLUPART_PORT ; 
 int /*<<< orphan*/  CURLUPART_QUERY ; 
 int /*<<< orphan*/  CURLUPART_SCHEME ; 
 int /*<<< orphan*/  CURLUPART_USER ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,char*,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC4 (char*,char const*) ; 
 size_t FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(CURLU *u, const char *in, const char *wanted,
                      unsigned int getflags)
{
  int i;
  CURLUcode rc;
  char buf[256];
  char *bufp = &buf[0];
  size_t len = sizeof(buf);
  struct part parts[] = {
    {CURLUPART_SCHEME, "scheme"},
    {CURLUPART_USER, "user"},
    {CURLUPART_PASSWORD, "password"},
    {CURLUPART_OPTIONS, "options"},
    {CURLUPART_HOST, "host"},
    {CURLUPART_PORT, "port"},
    {CURLUPART_PATH, "path"},
    {CURLUPART_QUERY, "query"},
    {CURLUPART_FRAGMENT, "fragment"},
    {0, NULL}
  };
  buf[0] = 0;

  for(i = 0; parts[i].name; i++) {
    char *p = NULL;
    size_t n;
    rc = FUNC1(u, parts[i].part, &p, getflags);
    if(!rc && p) {
      FUNC3(bufp, len, "%s%s", buf[0]?" | ":"", p);
    }
    else
      FUNC3(bufp, len, "%s[%d]", buf[0]?" | ":"", (int)rc);

    n = FUNC5(bufp);
    bufp += n;
    len -= n;
    FUNC0(p);
  }
  if(FUNC4(buf, wanted)) {
    FUNC2(stderr, "in: %s\nwanted: %s\ngot:    %s\n", in, wanted, buf);
    return 1;
  }
  return 0;
}
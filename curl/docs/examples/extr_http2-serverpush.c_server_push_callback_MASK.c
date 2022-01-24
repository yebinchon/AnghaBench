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
struct curl_pushheaders {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  CURLOPT_WRITEDATA ; 
 int CURL_PUSH_DENY ; 
 int CURL_PUSH_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC1 (struct curl_pushheaders*,char*) ; 
 char* FUNC2 (struct curl_pushheaders*,size_t) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC6(CURL *parent,
                                CURL *easy,
                                size_t num_headers,
                                struct curl_pushheaders *headers,
                                void *userp)
{
  char *headp;
  size_t i;
  int *transfers = (int *)userp;
  char filename[128];
  FILE *out;
  static unsigned int count = 0;

  (void)parent; /* we have no use for this */

  FUNC5(filename, 128, "push%u", count++);

  /* here's a new stream, save it in a new file for each new push */
  out = FUNC3(filename, "wb");
  if(!out) {
    /* if we can't save it, deny it */
    FUNC4(stderr, "Failed to create output file for push\n");
    return CURL_PUSH_DENY;
  }

  /* write to this file */
  FUNC0(easy, CURLOPT_WRITEDATA, out);

  FUNC4(stderr, "**** push callback approves stream %u, got %lu headers!\n",
          count, (unsigned long)num_headers);

  for(i = 0; i<num_headers; i++) {
    headp = FUNC2(headers, i);
    FUNC4(stderr, "**** header %lu: %s\n", (unsigned long)i, headp);
  }

  headp = FUNC1(headers, ":path");
  if(headp) {
    FUNC4(stderr, "**** The PATH is %s\n", headp /* skip :path + colon */);
  }

  (*transfers)++; /* one more */
  return CURL_PUSH_OK;
}
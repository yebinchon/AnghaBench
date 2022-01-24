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
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  CURLOPT_WRITEDATA ; 
 int CURL_PUSH_DENY ; 
 int CURL_PUSH_OK ; 
 size_t MAX_FILES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC1 (struct curl_pushheaders*,char*) ; 
 int /*<<< orphan*/ * files ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 size_t pushindex ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC4(CURL *parent,
                                CURL *easy,
                                size_t num_headers,
                                struct curl_pushheaders *headers,
                                void *userp)
{
  char *headp;
  int *transfers = (int *)userp;
  (void)parent; /* we have no use for this */
  (void)num_headers; /* unused */

  if(pushindex == MAX_FILES)
    /* can't fit anymore */
    return CURL_PUSH_DENY;

  /* write to this buffer */
  FUNC3(&files[pushindex]);
  FUNC0(easy, CURLOPT_WRITEDATA, &files[pushindex]);
  pushindex++;

  headp = FUNC1(headers, ":path");
  if(headp)
    FUNC2(stderr, "* Pushed :path '%s'\n", headp /* skip :path + colon */);

  (*transfers)++; /* one more */
  return CURL_PUSH_OK;
}
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
struct curl_slist {char* data; struct curl_slist* next; } ;
typedef  scalar_t__ CURLcode ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 int /*<<< orphan*/  CURLINFO_COOKIELIST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct curl_slist**) ; 
 char* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct curl_slist*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC6(CURL *curl)
{
  CURLcode res;
  struct curl_slist *cookies;
  struct curl_slist *nc;
  int i;

  FUNC5("Cookies, curl knows:\n");
  res = FUNC0(curl, CURLINFO_COOKIELIST, &cookies);
  if(res != CURLE_OK) {
    FUNC4(stderr, "Curl curl_easy_getinfo failed: %s\n",
            FUNC1(res));
    FUNC3(1);
  }
  nc = cookies;
  i = 1;
  while(nc) {
    FUNC5("[%d]: %s\n", i, nc->data);
    nc = nc->next;
    i++;
  }
  if(i == 1) {
    FUNC5("(none)\n");
  }
  FUNC2(cookies);
}
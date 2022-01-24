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
struct Curl_easy {int dummy; } ;
typedef  int /*<<< orphan*/  CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  CURLE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (struct Curl_easy*,char*,int /*<<< orphan*/ ,char**,size_t*) ; 
 char* FUNC1 (char*,char const*,char const*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

CURLcode FUNC4(struct Curl_easy *data,
                                               const char *user,
                                               const char *host,
                                               const long port,
                                               const char *bearer,
                                               char **outptr, size_t *outlen)
{
  CURLcode result = CURLE_OK;
  char *oauth = NULL;

  /* Generate the message */
  if(port == 0 || port == 80)
    oauth = FUNC1("n,a=%s,\1host=%s\1auth=Bearer %s\1\1", user, host,
                    bearer);
  else
    oauth = FUNC1("n,a=%s,\1host=%s\1port=%ld\1auth=Bearer %s\1\1", user,
                    host, port, bearer);
  if(!oauth)
    return CURLE_OUT_OF_MEMORY;

  /* Base64 encode the reply */
  result = FUNC0(data, oauth, FUNC3(oauth), outptr, outlen);

  FUNC2(oauth);

  return result;
}
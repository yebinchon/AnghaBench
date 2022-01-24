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
 char* FUNC1 (char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

CURLcode FUNC4(struct Curl_easy *data,
                                               const char *user,
                                               const char *bearer,
                                               char **outptr, size_t *outlen)
{
  CURLcode result = CURLE_OK;

  /* Generate the message */
  char *xoauth = FUNC1("user=%s\1auth=Bearer %s\1\1", user, bearer);
  if(!xoauth)
    return CURLE_OUT_OF_MEMORY;

  /* Base64 encode the reply */
  result = FUNC0(data, xoauth, FUNC3(xoauth), outptr, outlen);

  FUNC2(xoauth);

  return result;
}
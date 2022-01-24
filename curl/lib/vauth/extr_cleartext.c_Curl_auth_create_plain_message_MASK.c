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
 int /*<<< orphan*/  CURLE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (struct Curl_easy*,char*,size_t,char**,size_t*) ; 
 int SIZE_T_MAX ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,size_t) ; 
 size_t FUNC4 (char const*) ; 

CURLcode FUNC5(struct Curl_easy *data,
                                        const char *authzid,
                                        const char *authcid,
                                        const char *passwd,
                                        char **outptr, size_t *outlen)
{
  CURLcode result;
  char *plainauth;
  size_t zlen;
  size_t clen;
  size_t plen;
  size_t plainlen;

  *outlen = 0;
  *outptr = NULL;
  zlen = (authzid == NULL ? 0 : FUNC4(authzid));
  clen = FUNC4(authcid);
  plen = FUNC4(passwd);

  /* Compute binary message length. Check for overflows. */
  if(((zlen + clen) > SIZE_T_MAX/4) || (plen > (SIZE_T_MAX/2 - 2)))
    return CURLE_OUT_OF_MEMORY;
  plainlen = zlen + clen + plen + 2;

  plainauth = FUNC2(plainlen);
  if(!plainauth)
    return CURLE_OUT_OF_MEMORY;

  /* Calculate the reply */
  if(zlen != 0)
    FUNC3(plainauth, authzid, zlen);
  plainauth[zlen] = '\0';
  FUNC3(plainauth + zlen + 1, authcid, clen);
  plainauth[zlen + clen + 1] = '\0';
  FUNC3(plainauth + zlen + clen + 2, passwd, plen);

  /* Base64 encode the reply */
  result = FUNC0(data, plainauth, plainlen, outptr, outlen);
  FUNC1(plainauth);

  return result;
}
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
 char* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 

CURLcode FUNC2(struct Curl_easy *data,
                            const char *indata,
                            size_t insize,
                            char **outbuf)
{
  char *convbuf;
  (void)data;

  convbuf = FUNC0(insize);
  if(!convbuf)
    return CURLE_OUT_OF_MEMORY;

  FUNC1(convbuf, indata, insize);
  *outbuf = convbuf;
  return CURLE_OK;
}
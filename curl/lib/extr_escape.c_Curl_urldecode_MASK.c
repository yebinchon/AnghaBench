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
 int /*<<< orphan*/  CURLE_URL_MALFORMAT ; 
 int /*<<< orphan*/  FUNC0 (struct Curl_easy*,char*,int) ; 
 scalar_t__ FUNC1 (char const) ; 
 unsigned char FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (size_t) ; 
 size_t FUNC5 (char const*) ; 
 unsigned long FUNC6 (char*,char**,int) ; 

CURLcode FUNC7(struct Curl_easy *data,
                        const char *string, size_t length,
                        char **ostring, size_t *olen,
                        bool reject_ctrl)
{
  size_t alloc = (length?length:FUNC5(string)) + 1;
  char *ns = FUNC4(alloc);
  size_t strindex = 0;
  unsigned long hex;
  CURLcode result = CURLE_OK;

  if(!ns)
    return CURLE_OUT_OF_MEMORY;

  while(--alloc > 0) {
    unsigned char in = *string;
    if(('%' == in) && (alloc > 2) &&
       FUNC1(string[1]) && FUNC1(string[2])) {
      /* this is two hexadecimal digits following a '%' */
      char hexstr[3];
      char *ptr;
      hexstr[0] = string[1];
      hexstr[1] = string[2];
      hexstr[2] = 0;

      hex = FUNC6(hexstr, &ptr, 16);

      in = FUNC2(hex); /* this long is never bigger than 255 anyway */

      if(data) {
        result = FUNC0(data, (char *)&in, 1);
        if(result) {
          /* Curl_convert_from_network calls failf if unsuccessful */
          FUNC3(ns);
          return result;
        }
      }

      string += 2;
      alloc -= 2;
    }

    if(reject_ctrl && (in < 0x20)) {
      FUNC3(ns);
      return CURLE_URL_MALFORMAT;
    }

    ns[strindex++] = in;
    string++;
  }
  ns[strindex] = 0; /* terminate it */

  if(olen)
    /* store output size */
    *olen = strindex;

  /* store output string */
  *ostring = ns;

  return CURLE_OK;
}
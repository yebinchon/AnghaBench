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
 int /*<<< orphan*/  FUNC0 (struct Curl_easy*,char*,int) ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 char* FUNC2 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,unsigned char) ; 
 size_t FUNC6 (char const*) ; 

char *FUNC7(struct Curl_easy *data, const char *string,
                       int inlength)
{
  size_t alloc;
  char *ns;
  char *testing_ptr = NULL;
  size_t newlen;
  size_t strindex = 0;
  size_t length;
  CURLcode result;

  if(inlength < 0)
    return NULL;

  alloc = (inlength?(size_t)inlength:FUNC6(string)) + 1;
  newlen = alloc;

  ns = FUNC4(alloc);
  if(!ns)
    return NULL;

  length = alloc-1;
  while(length--) {
    unsigned char in = *string; /* we need to treat the characters unsigned */

    if(FUNC1(in))
      /* just copy this */
      ns[strindex++] = in;
    else {
      /* encode it */
      newlen += 2; /* the size grows with two, since this'll become a %XX */
      if(newlen > alloc) {
        alloc *= 2;
        testing_ptr = FUNC2(ns, alloc);
        if(!testing_ptr)
          return NULL;
        ns = testing_ptr;
      }

      result = FUNC0(data, (char *)&in, 1);
      if(result) {
        /* Curl_convert_to_network calls failf if unsuccessful */
        FUNC3(ns);
        return NULL;
      }

      FUNC5(&ns[strindex], 4, "%%%02X", in);

      strindex += 3;
    }
    string++;
  }
  ns[strindex] = 0; /* terminate it */
  return ns;
}
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
typedef  scalar_t__ CURLcode ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct Curl_easy*,char const*,int /*<<< orphan*/ ,char**,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (size_t) ; 

__attribute__((used)) static char *FUNC3(struct Curl_easy *data, const char *inputbuff)
{
  char *newp = NULL;
  char *dictp;
  size_t len;

  CURLcode result = FUNC0(data, inputbuff, 0, &newp, &len, FALSE);
  if(!newp || result)
    return NULL;

  dictp = FUNC2(len*2 + 1); /* add one for terminating zero */
  if(dictp) {
    char *ptr;
    char ch;
    int olen = 0;
    /* According to RFC2229 section 2.2, these letters need to be escaped with
       \[letter] */
    for(ptr = newp;
        (ch = *ptr) != 0;
        ptr++) {
      if((ch <= 32) || (ch == 127) ||
          (ch == '\'') || (ch == '\"') || (ch == '\\')) {
        dictp[olen++] = '\\';
      }
      dictp[olen++] = ch;
    }
    dictp[olen] = 0;
  }
  FUNC1(newp);
  return dictp;
}
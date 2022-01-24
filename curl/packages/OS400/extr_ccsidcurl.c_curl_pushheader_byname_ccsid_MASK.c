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

/* Variables and functions */
 unsigned int ASCII_CCSID ; 
 char* FUNC0 (struct curl_pushheaders*,char const*) ; 
 void* FUNC1 (unsigned int,char const*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

char *
FUNC3(struct curl_pushheaders *h, const char *header,
                             unsigned int ccsidin, unsigned int ccsidout)

{
  char *d = (char *) NULL;

  if(header) {
    header = FUNC1(ASCII_CCSID, header, -1, ccsidin);

    if(header) {
      char *s = FUNC0(h, header);
      FUNC2((char *) header);

      if(s)
        d = FUNC1(ccsidout, s, -1, ASCII_CCSID);
    }
  }

  return d;
}
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
 int /*<<< orphan*/  ASCII_CCSID ; 
 char* FUNC0 (struct curl_pushheaders*,size_t) ; 
 char* FUNC1 (unsigned int,char*,int,int /*<<< orphan*/ ) ; 

char *
FUNC2(struct curl_pushheaders *h,
                            size_t num, unsigned int ccsid)

{
  char *d = (char *) NULL;
  char *s = FUNC0(h, num);

  if(s)
    d = FUNC1(ccsid, s, -1, ASCII_CCSID);

  return d;
}
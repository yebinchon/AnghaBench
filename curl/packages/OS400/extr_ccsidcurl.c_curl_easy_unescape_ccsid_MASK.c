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
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 unsigned int ASCII_CCSID ; 
 int /*<<< orphan*/  EINVAL ; 
 char* FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int*) ; 
 char* FUNC1 (unsigned int,char const*,int,unsigned int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char*) ; 

char *
FUNC4(CURL *handle, const char *string, int length,
                         int *outlength,
                         unsigned int sccsid, unsigned int dccsid)

{
  char *s;
  char *d;

  if(!string) {
    errno = EINVAL;
    return (char *) NULL;
    }

  s = FUNC1(ASCII_CCSID, string, length? length: -1, sccsid);

  if(!s)
    return (char *) NULL;

  d = FUNC0(handle, s, 0, outlength);
  FUNC2(s);

  if(!d)
    return (char *) NULL;

  s = FUNC1(dccsid, d, -1, ASCII_CCSID);
  FUNC2(d);

  if(s && outlength)
    *outlength = FUNC3(s);

  return s;
}
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
typedef  int /*<<< orphan*/  CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  ASCII_CCSID ; 
 char* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  LK_EASY_STRERROR ; 
 int MAX_CONV_EXPANSION ; 
 scalar_t__ FUNC1 (char*,int,unsigned int,char const*,int,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*) ; 

const char *
FUNC4(CURLcode error, unsigned int ccsid)

{
  int i;
  const char *s;
  char *buf;

  s = FUNC2(error);

  if(!s)
    return s;

  i = MAX_CONV_EXPANSION * (FUNC3(s) + 1);

  buf = FUNC0(LK_EASY_STRERROR, i);
  if(!buf)
    return (const char *) NULL;

  if(FUNC1(buf, i, ccsid, s, -1, ASCII_CCSID) < 0)
    return (const char *) NULL;

  return (const char *) buf;
}
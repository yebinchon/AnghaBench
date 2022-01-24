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

/* Variables and functions */
 int /*<<< orphan*/  ASCII_CCSID ; 
 char* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  LK_CURL_VERSION ; 
 int MAX_CONV_EXPANSION ; 
 scalar_t__ FUNC1 (char*,int,unsigned int,char*,int,int /*<<< orphan*/ ) ; 
 char* FUNC2 () ; 
 int FUNC3 (char*) ; 

char *
FUNC4(unsigned int ccsid)

{
  int i;
  char *aversion;
  char *eversion;

  aversion = FUNC2();

  if(!aversion)
    return aversion;

  i = FUNC3(aversion) + 1;
  i *= MAX_CONV_EXPANSION;

  eversion = FUNC0(LK_CURL_VERSION, i);
  if(!eversion)
    return (char *) NULL;

  if(FUNC1(eversion, i, ccsid, aversion, -1, ASCII_CCSID) < 0)
    return (char *) NULL;

  return eversion;
}
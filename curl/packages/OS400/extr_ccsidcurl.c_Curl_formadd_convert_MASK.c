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
struct curl_forms {char* value; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASCII_CCSID ; 
 int MAX_CONV_EXPANSION ; 
 int FUNC0 (char*,int,int /*<<< orphan*/ ,char*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int) ; 
 char* FUNC3 (char*,int) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static int
FUNC5(struct curl_forms * forms,
                     int formx, int lengthx, unsigned int ccsid)

{
  int l;
  char *cp;
  char *cp2;

  if(formx < 0 || !forms[formx].value)
    return 0;

  if(lengthx >= 0)
    l = (int) forms[lengthx].value;
  else
    l = FUNC4(forms[formx].value) + 1;

  cp = FUNC2(MAX_CONV_EXPANSION * l);

  if(!cp)
    return -1;

  l = FUNC0(cp, MAX_CONV_EXPANSION * l, ASCII_CCSID,
              forms[formx].value, l, ccsid);

  if(l < 0) {
    FUNC1(cp);
    return -1;
    }

  cp2 = FUNC3(cp, l);         /* Shorten buffer to the string size. */

  if(cp2)
    cp = cp2;

  forms[formx].value = cp;

  if(lengthx >= 0)
    forms[lengthx].value = (char *) l;  /* Update length after conversion. */

  return l;
}
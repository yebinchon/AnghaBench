#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ company; int /*<<< orphan*/  companyid; } ;
struct TYPE_3__ {char* copyright; } ;

/* Variables and functions */
 int MAXCOMPANY ; 
 TYPE_2__* companyinfo ; 
 TYPE_1__ rominfo ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 char* FUNC3 (char*,char*) ; 

char *FUNC4(void)
{
  char *s;
  int i;
  char company[10];

  for (i = 3; i < 8; i++) 
  {
    company[i - 3] = rominfo.copyright[i];
  }
  company[5] = 0;

  /** OK, first look for a hyphen
   *  Capcom use T-12 for example
   */
  s = FUNC3 (company, "-");
  if (s != NULL)
  {
    s++;
    FUNC0 (company, s);
  }

  /** Strip any trailing spaces **/
  for (i = FUNC1 (company) - 1; i >= 0; i--)
    if (company[i] == 32)
      company[i] = 0;

  if (FUNC1 (company) == 0)
    return (char *)companyinfo[MAXCOMPANY - 1].company;

  for (i = 0; i < MAXCOMPANY - 1; i++)
  {
    if (!(FUNC2 (company, companyinfo[i].companyid, FUNC1 (company))))
      return (char *)companyinfo[i].company;
  }

  return (char *)companyinfo[MAXCOMPANY - 1].company;
}

typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ company; int companyid; } ;
struct TYPE_3__ {char* copyright; } ;


 int MAXCOMPANY ;
 TYPE_2__* companyinfo ;
 TYPE_1__ rominfo ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int strncmp (char*,int ,int) ;
 char* strstr (char*,char*) ;

char *get_company(void)
{
  char *s;
  int i;
  char company[10];

  for (i = 3; i < 8; i++)
  {
    company[i - 3] = rominfo.copyright[i];
  }
  company[5] = 0;




  s = strstr (company, "-");
  if (s != ((void*)0))
  {
    s++;
    strcpy (company, s);
  }


  for (i = strlen (company) - 1; i >= 0; i--)
    if (company[i] == 32)
      company[i] = 0;

  if (strlen (company) == 0)
    return (char *)companyinfo[MAXCOMPANY - 1].company;

  for (i = 0; i < MAXCOMPANY - 1; i++)
  {
    if (!(strncmp (company, companyinfo[i].companyid, strlen (company))))
      return (char *)companyinfo[i].company;
  }

  return (char *)companyinfo[MAXCOMPANY - 1].company;
}

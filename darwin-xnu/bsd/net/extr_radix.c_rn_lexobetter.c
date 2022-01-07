
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_char ;



__attribute__((used)) static int
rn_lexobetter(void *m_arg, void *n_arg)
{
 u_char *mp = m_arg, *np = n_arg, *lim;

 if (*mp > *np)
  return 1;
 if (*mp == *np)
  for (lim = mp + *mp; mp < lim;)
   if (*mp++ > *np++)
    return 1;
 return 0;
}

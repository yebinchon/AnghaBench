
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_ruleset {int dummy; } ;
struct pf_anchor {struct pf_ruleset ruleset; } ;


 struct pf_anchor* pf_find_anchor (char const*) ;
 struct pf_ruleset pf_main_ruleset ;

struct pf_ruleset *
pf_find_ruleset(const char *path)
{
 struct pf_anchor *anchor;

 while (*path == '/')
  path++;
 if (!*path)
  return (&pf_main_ruleset);
 anchor = pf_find_anchor(path);
 if (anchor == ((void*)0))
  return (((void*)0));
 else
  return (&anchor->ruleset);
}

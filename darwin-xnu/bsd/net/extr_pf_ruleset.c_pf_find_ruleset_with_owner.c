
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_ruleset {int dummy; } ;
struct pf_anchor {char* owner; struct pf_ruleset ruleset; } ;


 int EINVAL ;
 int EPERM ;
 struct pf_anchor* pf_find_anchor (char const*) ;
 struct pf_ruleset pf_main_ruleset ;
 int strcmp (char const*,char*) ;

struct pf_ruleset *
pf_find_ruleset_with_owner(const char *path, const char *owner, int is_anchor,
    int *error)
{
 struct pf_anchor *anchor;

 while (*path == '/')
  path++;
 if (!*path)
  return (&pf_main_ruleset);
 anchor = pf_find_anchor(path);
 if (anchor == ((void*)0)) {
  *error = EINVAL;
  return (((void*)0));
 } else {
  if ((owner && (!strcmp(owner, anchor->owner)))
      || (is_anchor && !strcmp(anchor->owner, "")))
   return (&anchor->ruleset);
  *error = EPERM;
  return ((void*)0);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pfioc_rule {char* anchor_call; } ;
struct pf_ruleset {TYPE_1__* anchor; } ;
struct pf_rule {int anchor_relative; scalar_t__ anchor_wildcard; TYPE_2__* anchor; } ;
struct TYPE_4__ {char* path; } ;
struct TYPE_3__ {char* path; } ;


 int MAXPATHLEN ;
 int bzero (char*,int) ;
 int printf (char*,char*,char*) ;
 int rs_free (char*) ;
 scalar_t__ rs_malloc (int) ;
 int strlcat (char*,char*,int) ;
 int strlcpy (char*,char*,int) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ strncmp (char*,char*,scalar_t__) ;
 char* strrchr (char*,char) ;

int
pf_anchor_copyout(const struct pf_ruleset *rs, const struct pf_rule *r,
    struct pfioc_rule *pr)
{
 pr->anchor_call[0] = 0;
 if (r->anchor == ((void*)0))
  return (0);
 if (!r->anchor_relative) {
  strlcpy(pr->anchor_call, "/", sizeof (pr->anchor_call));
  strlcat(pr->anchor_call, r->anchor->path,
      sizeof (pr->anchor_call));
 } else {
  char *a, *p;
  int i;

  a = (char *)rs_malloc(MAXPATHLEN);
  bzero(a, MAXPATHLEN);
  if (rs->anchor == ((void*)0))
   a[0] = 0;
  else
   strlcpy(a, rs->anchor->path, MAXPATHLEN);
  for (i = 1; i < r->anchor_relative; ++i) {
   if ((p = strrchr(a, '/')) == ((void*)0))
    p = a;
   *p = 0;
   strlcat(pr->anchor_call, "../",
       sizeof (pr->anchor_call));
  }
  if (strncmp(a, r->anchor->path, strlen(a))) {
   printf("pf_anchor_copyout: '%s' '%s'\n", a,
       r->anchor->path);
   rs_free(a);
   return (1);
  }
  if (strlen(r->anchor->path) > strlen(a))
   strlcat(pr->anchor_call, r->anchor->path + (a[0] ?
       strlen(a) + 1 : 0), sizeof (pr->anchor_call));
  rs_free(a);
 }
 if (r->anchor_wildcard)
  strlcat(pr->anchor_call, pr->anchor_call[0] ? "/*" : "*",
      sizeof (pr->anchor_call));
 return (0);
}

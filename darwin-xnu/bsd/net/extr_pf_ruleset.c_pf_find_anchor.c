
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_anchor {int path; } ;


 struct pf_anchor* RB_FIND (int ,int *,struct pf_anchor*) ;
 int memset (struct pf_anchor*,int ,int) ;
 int pf_anchor_global ;
 int pf_anchors ;
 int rs_free (struct pf_anchor*) ;
 scalar_t__ rs_malloc (int) ;
 int strlcpy (int ,char const*,int) ;

struct pf_anchor *
pf_find_anchor(const char *path)
{
 struct pf_anchor *key, *found;

 key = (struct pf_anchor *)rs_malloc(sizeof (*key));
 memset(key, 0, sizeof (*key));
 strlcpy(key->path, path, sizeof (key->path));
 found = RB_FIND(pf_anchor_global, &pf_anchors, key);
 rs_free(key);
 return (found);
}

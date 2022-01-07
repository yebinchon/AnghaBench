
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* node ;
struct TYPE_5__ {int red; struct TYPE_5__* left; struct TYPE_5__* right; } ;



__attribute__((used)) static void
maybe_split_for_insert (node *rootp, node *parentp, node *gparentp,
                        int p_r, int gp_r, int mode)
{
  node root = *rootp;
  node *rp, *lp;
  rp = &(*rootp)->right;
  lp = &(*rootp)->left;


  if (mode == 1
      || ((*rp) != ((void*)0) && (*lp) != ((void*)0) && (*rp)->red && (*lp)->red))
    {

      root->red = 1;
      if (*rp)
        (*rp)->red = 0;
      if (*lp)
        (*lp)->red = 0;



      if (parentp != ((void*)0) && (*parentp)->red)
        {
          node gp = *gparentp;
          node p = *parentp;





          if ((p_r > 0) != (gp_r > 0))
            {


              p->red = 1;
              gp->red = 1;
              root->red = 0;
              if (p_r < 0)
                {

                  p->left = *rp;
                  *rp = p;
                  gp->right = *lp;
                  *lp = gp;
                }
              else
                {

                  p->right = *lp;
                  *lp = p;
                  gp->left = *rp;
                  *rp = gp;
                }
              *gparentp = root;
            }
          else
            {
              *gparentp = *parentp;


              p->red = 0;
              gp->red = 1;
              if (p_r < 0)
                {

                  gp->left = p->right;
                  p->right = gp;
                }
              else
                {

                  gp->right = p->left;
                  p->left = gp;
                }
            }
        }
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* nfsnode_t ;
struct TYPE_6__ {TYPE_1__* n_cookiecache; scalar_t__ n_cookieverf; scalar_t__ n_eofcookie; } ;
struct TYPE_5__ {int mru; int next; scalar_t__ free; } ;


 int NFSNUMCOOKIES ;
 int NFSTOV (TYPE_2__*) ;
 scalar_t__ VDIR ;
 int memset (int ,int,int ) ;
 scalar_t__ vnode_vtype (int ) ;

void
nfs_invaldir(nfsnode_t dnp)
{
 if (vnode_vtype(NFSTOV(dnp)) != VDIR)
  return;
 dnp->n_eofcookie = 0;
 dnp->n_cookieverf = 0;
 if (!dnp->n_cookiecache)
  return;
 dnp->n_cookiecache->free = 0;
 dnp->n_cookiecache->mru = -1;
 memset(dnp->n_cookiecache->next, -1, NFSNUMCOOKIES);
}

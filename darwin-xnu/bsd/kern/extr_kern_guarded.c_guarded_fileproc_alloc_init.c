
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int f_flags; } ;
struct guarded_fileproc {int gf_attrs; int gf_guard; int gf_magic; TYPE_1__ gf_fileproc; } ;
struct gfp_crarg {int gca_attrs; int gca_guard; } ;
struct fileproc {int dummy; } ;


 int FTYPE_GUARDED ;
 struct fileproc* GFP_TO_FP (struct guarded_fileproc*) ;
 int GUARDED_FILEPROC_MAGIC ;
 int bzero (struct guarded_fileproc*,int) ;
 struct guarded_fileproc* kalloc (int) ;

__attribute__((used)) static struct fileproc *
guarded_fileproc_alloc_init(void *crarg)
{
 struct gfp_crarg *aarg = crarg;
 struct guarded_fileproc *gfp;

 if ((gfp = kalloc(sizeof (*gfp))) == ((void*)0))
  return (((void*)0));

 bzero(gfp, sizeof (*gfp));
 gfp->gf_fileproc.f_flags = FTYPE_GUARDED;
 gfp->gf_magic = GUARDED_FILEPROC_MAGIC;
 gfp->gf_guard = aarg->gca_guard;
 gfp->gf_attrs = aarg->gca_attrs;

 return (GFP_TO_FP(gfp));
}

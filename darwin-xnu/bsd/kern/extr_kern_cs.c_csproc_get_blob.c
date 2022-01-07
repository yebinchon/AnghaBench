
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int p_csflags; int p_textoff; int * p_textvp; } ;
struct cs_blob {int dummy; } ;


 int CS_SIGNED ;
 struct cs_blob* ubc_cs_blob_get (int *,int,int ) ;

struct cs_blob *
csproc_get_blob(struct proc *p)
{
 if (((void*)0) == p)
  return ((void*)0);

 if (((void*)0) == p->p_textvp)
  return ((void*)0);

 if ((p->p_csflags & CS_SIGNED) == 0) {
  return ((void*)0);
 }

 return ubc_cs_blob_get(p->p_textvp, -1, p->p_textoff);
}

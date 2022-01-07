
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cs_blob {int dummy; } ;
typedef TYPE_1__* proc_t ;
struct TYPE_3__ {int p_csflags; int p_textoff; int * p_textvp; } ;


 int CS_SIGNED ;
 char const* csblob_get_identity (struct cs_blob*) ;
 struct cs_blob* ubc_cs_blob_get (int *,int,int ) ;

const char *
cs_identity_get(proc_t p)
{
 struct cs_blob *csblob;

 if ((p->p_csflags & CS_SIGNED) == 0) {
  return ((void*)0);
 }

 if (((void*)0) == p->p_textvp)
  return ((void*)0);

 if ((csblob = ubc_cs_blob_get(p->p_textvp, -1, p->p_textoff)) == ((void*)0))
  return ((void*)0);

 return csblob_get_identity(csblob);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cs_blob {size_t csb_mem_size; scalar_t__ csb_mem_kaddr; } ;
typedef TYPE_1__* proc_t ;
struct TYPE_3__ {int p_textoff; int * p_textvp; } ;


 int EINVAL ;
 struct cs_blob* ubc_cs_blob_get (int *,int,int ) ;

int
cs_blob_get(proc_t p, void **out_start, size_t *out_length)
{
 struct cs_blob *csblob;

 *out_start = ((void*)0);
 *out_length = 0;

 if (((void*)0) == p->p_textvp)
  return EINVAL;

 if ((csblob = ubc_cs_blob_get(p->p_textvp, -1, p->p_textoff)) == ((void*)0))
  return 0;

 *out_start = (void *)csblob->csb_mem_kaddr;
 *out_length = csblob->csb_mem_size;

 return 0;
}

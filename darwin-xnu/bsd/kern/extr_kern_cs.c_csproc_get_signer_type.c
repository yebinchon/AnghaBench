
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int dummy; } ;
struct cs_blob {int dummy; } ;


 unsigned int CS_SIGNER_TYPE_UNKNOWN ;
 unsigned int csblob_get_signer_type (struct cs_blob*) ;
 struct cs_blob* csproc_get_blob (struct proc*) ;

unsigned int
csproc_get_signer_type(struct proc *p)
{
 struct cs_blob *csblob;

 csblob = csproc_get_blob(p);
 if (csblob == ((void*)0))
     return CS_SIGNER_TYPE_UNKNOWN;

 return csblob_get_signer_type(csblob);
}

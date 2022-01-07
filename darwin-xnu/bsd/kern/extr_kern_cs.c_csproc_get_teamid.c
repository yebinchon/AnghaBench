
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int dummy; } ;
struct cs_blob {int dummy; } ;


 char const* csblob_get_teamid (struct cs_blob*) ;
 struct cs_blob* csproc_get_blob (struct proc*) ;

const char *
csproc_get_teamid(struct proc *p)
{
 struct cs_blob *csblob;

 csblob = csproc_get_blob(p);
 if (csblob == ((void*)0))
     return ((void*)0);

 return csblob_get_teamid(csblob);
}

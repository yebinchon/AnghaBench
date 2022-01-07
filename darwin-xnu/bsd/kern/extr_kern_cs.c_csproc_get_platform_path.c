
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int dummy; } ;
struct cs_blob {int csb_platform_path; } ;


 struct cs_blob* csproc_get_blob (struct proc*) ;

int
csproc_get_platform_path(struct proc *p)
{
 struct cs_blob *csblob;

    csblob = csproc_get_blob(p);

 return (csblob == ((void*)0)) ? 0 : csblob->csb_platform_path;
}

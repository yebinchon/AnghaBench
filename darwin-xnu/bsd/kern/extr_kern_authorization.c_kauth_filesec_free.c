
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ kauth_filesec_t ;


 int FREE (scalar_t__,int ) ;
 scalar_t__ KAUTH_FILESEC_NONE ;
 scalar_t__ KAUTH_FILESEC_WANTED ;
 int M_KAUTH ;
 int panic (char*) ;

void
kauth_filesec_free(kauth_filesec_t fsp)
{






 FREE(fsp, M_KAUTH);
}

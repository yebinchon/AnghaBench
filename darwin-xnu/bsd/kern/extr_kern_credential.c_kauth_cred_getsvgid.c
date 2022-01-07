
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int kauth_cred_t ;
typedef int gid_t ;
struct TYPE_2__ {int cr_svgid; } ;


 int NULLCRED_CHECK (int ) ;
 TYPE_1__* posix_cred_get (int ) ;

gid_t
kauth_cred_getsvgid(kauth_cred_t cred)
{
 NULLCRED_CHECK(cred);
 return(posix_cred_get(cred)->cr_svgid);
}

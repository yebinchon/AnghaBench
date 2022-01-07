
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int u_long ;
struct posix_cred {int dummy; } ;
struct label {int dummy; } ;
struct au_session {int dummy; } ;
typedef TYPE_1__* posix_cred_t ;
typedef TYPE_2__* kauth_cred_t ;
struct TYPE_7__ {scalar_t__ cr_label; int cr_audit; int cr_posix; } ;
struct TYPE_6__ {int cr_flags; } ;


 int CRF_MAC_ENFORCE ;
 int kauth_cred_hash (int *,int,int ) ;
 TYPE_1__* posix_cred_get (TYPE_2__*) ;

__attribute__((used)) static u_long
kauth_cred_get_hashkey(kauth_cred_t cred)
{



 u_long hash_key = 0;

 hash_key = kauth_cred_hash((uint8_t *)&cred->cr_posix,
          sizeof (struct posix_cred),
          hash_key);
 hash_key = kauth_cred_hash((uint8_t *)&cred->cr_audit,
          sizeof(struct au_session),
          hash_key);







 return(hash_key);
}

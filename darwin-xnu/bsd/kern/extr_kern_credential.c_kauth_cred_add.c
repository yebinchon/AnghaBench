
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_long ;
typedef int kauth_cred_t ;


 int KAUTH_CRED_HASH_LOCK_ASSERT () ;
 size_t KAUTH_CRED_TABLE_SIZE ;
 int TAILQ_INSERT_HEAD (int *,int ,int ) ;
 int cr_link ;
 int * kauth_cred_find (int ) ;
 size_t kauth_cred_get_hashkey (int ) ;
 int kauth_cred_ref (int ) ;
 int * kauth_cred_table_anchor ;

__attribute__((used)) static int
kauth_cred_add(kauth_cred_t new_cred)
{
 u_long hash_key;

 KAUTH_CRED_HASH_LOCK_ASSERT();

 hash_key = kauth_cred_get_hashkey(new_cred);
 hash_key %= KAUTH_CRED_TABLE_SIZE;






 if (kauth_cred_find(new_cred) != ((void*)0)) {
  return(-1);
 }


 kauth_cred_ref(new_cred);


 TAILQ_INSERT_HEAD(&kauth_cred_table_anchor[hash_key], new_cred, cr_link);

 return(0);
}

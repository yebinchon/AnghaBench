
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u_int32_t ;
struct pf_poolhashkey {void** key32; } ;
struct pf_addr {void** addr32; } ;
typedef int sa_family_t ;




 int mix (void*,void*,void*) ;

__attribute__((used)) static void
pf_hash(struct pf_addr *inaddr, struct pf_addr *hash,
    struct pf_poolhashkey *key, sa_family_t af)
{
 u_int32_t a = 0x9e3779b9, b = 0x9e3779b9, c = key->key32[0];

 switch (af) {
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int s_addr; } ;
struct TYPE_4__ {scalar_t__ sin_family; TYPE_1__ sin_addr; } ;
struct in_ifaddr {int ia_ifa; TYPE_2__ ia_addr; } ;


 scalar_t__ AF_INET ;
 scalar_t__ IA_IS_HASHED (struct in_ifaddr*) ;
 int IFA_ADDREF_LOCKED (int *) ;
 int IFA_LOCK_ASSERT_HELD (int *) ;
 int INADDR_HASH (int ) ;
 int LCK_RW_ASSERT (int ,int ) ;
 int LCK_RW_ASSERT_EXCLUSIVE ;
 int TAILQ_INSERT_HEAD (int ,struct in_ifaddr*,int ) ;
 int ia_hash ;
 int in_ifaddr_rwlock ;
 int panic (char*,struct in_ifaddr*) ;

__attribute__((used)) static void
in_iahash_insert(struct in_ifaddr *ia)
{
 LCK_RW_ASSERT(in_ifaddr_rwlock, LCK_RW_ASSERT_EXCLUSIVE);
 IFA_LOCK_ASSERT_HELD(&ia->ia_ifa);

 if (ia->ia_addr.sin_family != AF_INET) {
  panic("attempt to insert wrong ia %p into hash table\n", ia);

 } else if (IA_IS_HASHED(ia)) {
  panic("attempt to double-insert ia %p into hash table\n", ia);

 }
 TAILQ_INSERT_HEAD(INADDR_HASH(ia->ia_addr.sin_addr.s_addr),
     ia, ia_hash);
 IFA_ADDREF_LOCKED(&ia->ia_ifa);
}

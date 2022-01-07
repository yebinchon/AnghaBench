
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sockaddr_in6 {int dummy; } ;
struct TYPE_7__ {int s_addr; } ;
struct sockaddr_in {TYPE_2__ sin_addr; int sin_len; int sin_family; } ;
struct sockaddr {int sa_family; } ;
struct TYPE_8__ {int s_addr; } ;
struct TYPE_9__ {TYPE_3__ sin_addr; int sin_len; int sin_family; } ;
struct TYPE_6__ {struct in_ifaddr* tqe_next; } ;
struct in_ifaddr {int ia_ifa; TYPE_4__ ia_addr; TYPE_1__ ia_link; } ;
struct TYPE_10__ {struct in_ifaddr* tqh_first; } ;




 int IFA_LOCK_SPIN (int *) ;
 int IFA_UNLOCK (int *) ;
 int in_ifaddr_rwlock ;
 TYPE_5__ in_ifaddrhead ;
 int key_ismyaddr6 (struct sockaddr_in6*) ;
 int lck_rw_done (int ) ;
 int lck_rw_lock_shared (int ) ;
 int panic (char*) ;

int
key_ismyaddr(
    struct sockaddr *sa)
{






 if (sa == ((void*)0))
  panic("key_ismyaddr: NULL pointer is passed.\n");

 switch (sa->sa_family) {
 }

 return 0;
}

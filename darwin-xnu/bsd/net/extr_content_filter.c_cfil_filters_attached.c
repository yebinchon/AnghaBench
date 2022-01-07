
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct socket {int so_flags; TYPE_1__* so_cfil; } ;
struct cfil_entry {int cfe_flags; int * cfe_filter; } ;
struct TYPE_2__ {struct cfil_entry* cfi_entries; } ;


 int CFEF_CFIL_DETACHED ;
 int CFEF_SENT_SOCK_ATTACHED ;
 int FALSE ;
 scalar_t__ IS_UDP (struct socket*) ;
 int MAX_CONTENT_FILTER ;
 int SOF_CONTENT_FILTER ;
 int cfil_filters_udp_attached (struct socket*,int ) ;
 int socket_lock_assert_owned (struct socket*) ;

__attribute__((used)) static int
cfil_filters_attached(struct socket *so)
{
 struct cfil_entry *entry;
 uint32_t kcunit;
 int attached = 0;

 if (IS_UDP(so)) {
  return cfil_filters_udp_attached(so, FALSE);
 }

 if ((so->so_flags & SOF_CONTENT_FILTER) == 0 || so->so_cfil == ((void*)0))
  return (0);

 socket_lock_assert_owned(so);

 for (kcunit = 1; kcunit <= MAX_CONTENT_FILTER; kcunit++) {
  entry = &so->so_cfil->cfi_entries[kcunit - 1];


  if (entry->cfe_filter == ((void*)0))
   continue;
  if ((entry->cfe_flags & CFEF_SENT_SOCK_ATTACHED) == 0)
   continue;
  if ((entry->cfe_flags & CFEF_CFIL_DETACHED) != 0)
   continue;
  attached = 1;
  break;
 }

 return (attached);
}

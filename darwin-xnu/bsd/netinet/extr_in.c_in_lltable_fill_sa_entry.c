
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_in {int sin_len; int sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct TYPE_2__ {int addr4; } ;
struct llentry {TYPE_1__ r_l3addr; } ;


 int AF_INET ;
 int bzero (struct sockaddr_in*,int) ;

__attribute__((used)) static void
in_lltable_fill_sa_entry(const struct llentry *lle, struct sockaddr *sa)
{
 struct sockaddr_in *sin;

 sin = (struct sockaddr_in *)(void *)sa;
 bzero(sin, sizeof(*sin));
 sin->sin_family = AF_INET;
 sin->sin_len = sizeof(*sin);
 sin->sin_addr = lle->r_l3addr.addr4;
}

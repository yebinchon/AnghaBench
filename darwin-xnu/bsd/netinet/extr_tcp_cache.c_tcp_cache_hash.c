
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
typedef int u_int16_t ;
struct TYPE_4__ {int addr; int addr6; } ;
struct tcp_cache_key_src {scalar_t__ af; TYPE_2__ faddr; } ;
struct TYPE_3__ {int addr; int addr6; } ;
struct tcp_cache_key {TYPE_1__ tck_dst; scalar_t__ tck_family; int tck_src; } ;
struct in_addr {int dummy; } ;
struct in6_addr {int dummy; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int bzero (struct tcp_cache_key*,int) ;
 int memcpy (int *,int *,int) ;
 int net_flowhash (struct tcp_cache_key*,int,int ) ;
 int tcp_cache_hash_seed ;
 int tcp_cache_hash_src (struct tcp_cache_key_src*,int *) ;
 int tcp_cache_size ;

__attribute__((used)) static u_int16_t tcp_cache_hash(struct tcp_cache_key_src *tcks, struct tcp_cache_key *key)
{
 u_int32_t hash;

 bzero(key, sizeof(struct tcp_cache_key));

 tcp_cache_hash_src(tcks, &key->tck_src);

 if (tcks->af == AF_INET6) {
  key->tck_family = AF_INET6;
  memcpy(&key->tck_dst.addr6, &tcks->faddr.addr6,
      sizeof(struct in6_addr));
 } else {
  key->tck_family = AF_INET;
  memcpy(&key->tck_dst.addr, &tcks->faddr.addr,
      sizeof(struct in_addr));
 }

 hash = net_flowhash(key, sizeof(struct tcp_cache_key),
     tcp_cache_hash_seed);

 return (hash & (tcp_cache_size - 1));
}

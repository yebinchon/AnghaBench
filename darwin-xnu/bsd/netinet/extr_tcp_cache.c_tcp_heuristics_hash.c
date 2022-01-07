
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_int16_t ;
struct tcp_heuristic_key {int dummy; } ;
struct tcp_cache_key_src {int dummy; } ;


 int bzero (struct tcp_heuristic_key*,int) ;
 int net_flowhash (struct tcp_heuristic_key*,int,int ) ;
 int tcp_cache_hash_seed ;
 int tcp_cache_hash_src (struct tcp_cache_key_src*,struct tcp_heuristic_key*) ;
 int tcp_cache_size ;

__attribute__((used)) static u_int16_t tcp_heuristics_hash(struct tcp_cache_key_src *tcks, struct tcp_heuristic_key *key)
{
 u_int32_t hash;

 bzero(key, sizeof(struct tcp_heuristic_key));

 tcp_cache_hash_src(tcks, key);

 hash = net_flowhash(key, sizeof(struct tcp_heuristic_key),
     tcp_cache_hash_seed);

 return (hash & (tcp_cache_size - 1));
}

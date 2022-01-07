
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int u_int32_t ;
struct tcp_heuristics_head {int dummy; } ;
struct tcp_cache_head {int dummy; } ;
struct TYPE_4__ {int tcp_caches; int tch_mtx; } ;
struct TYPE_3__ {int tcp_heuristics; int thh_mtx; } ;


 int M_TEMP ;
 int M_ZERO ;
 int RandomULong () ;
 int SLIST_INIT (int *) ;
 void* _MALLOC (int,int ,int ) ;
 int lck_attr_alloc_init () ;
 int lck_grp_alloc_init (char*,int ) ;
 int lck_grp_attr_alloc_init () ;
 int lck_mtx_init (int *,int ,int ) ;
 int panic (char*) ;
 int sane_size ;
 TYPE_2__* tcp_cache ;
 int tcp_cache_hash_seed ;
 int tcp_cache_mtx_attr ;
 int tcp_cache_mtx_grp ;
 int tcp_cache_mtx_grp_attr ;
 int tcp_cache_roundup2 (int ) ;
 int tcp_cache_size ;
 int tcp_heuristic_mtx_attr ;
 int tcp_heuristic_mtx_grp ;
 int tcp_heuristic_mtx_grp_attr ;
 TYPE_1__* tcp_heuristics ;

void tcp_cache_init(void)
{
 uint64_t sane_size_meg = sane_size / 1024 / 1024;
 int i;
 tcp_cache_size = tcp_cache_roundup2((u_int32_t)(sane_size_meg >> 2));
 if (tcp_cache_size < 32)
  tcp_cache_size = 32;
 else if (tcp_cache_size > 1024)
  tcp_cache_size = 1024;

 tcp_cache = _MALLOC(sizeof(struct tcp_cache_head) * tcp_cache_size,
     M_TEMP, M_ZERO);
 if (tcp_cache == ((void*)0))
  panic("Allocating tcp_cache failed at boot-time!");

 tcp_cache_mtx_grp_attr = lck_grp_attr_alloc_init();
 tcp_cache_mtx_grp = lck_grp_alloc_init("tcpcache", tcp_cache_mtx_grp_attr);
 tcp_cache_mtx_attr = lck_attr_alloc_init();

 tcp_heuristics = _MALLOC(sizeof(struct tcp_heuristics_head) * tcp_cache_size,
     M_TEMP, M_ZERO);
 if (tcp_heuristics == ((void*)0))
  panic("Allocating tcp_heuristic failed at boot-time!");

 tcp_heuristic_mtx_grp_attr = lck_grp_attr_alloc_init();
 tcp_heuristic_mtx_grp = lck_grp_alloc_init("tcpheuristic", tcp_heuristic_mtx_grp_attr);
 tcp_heuristic_mtx_attr = lck_attr_alloc_init();

 for (i = 0; i < tcp_cache_size; i++) {
  lck_mtx_init(&tcp_cache[i].tch_mtx, tcp_cache_mtx_grp,
      tcp_cache_mtx_attr);
  SLIST_INIT(&tcp_cache[i].tcp_caches);

  lck_mtx_init(&tcp_heuristics[i].thh_mtx, tcp_heuristic_mtx_grp,
      tcp_heuristic_mtx_attr);
  SLIST_INIT(&tcp_heuristics[i].tcp_heuristics);
 }

 tcp_cache_hash_seed = RandomULong();
}

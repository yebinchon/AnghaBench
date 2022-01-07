
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_NC_HASH ;
 int MAX (int ,int) ;
 int M_CACHE ;
 int NUM_STRCACHE_LOCKS ;
 int TAILQ_INIT (int *) ;
 int desiredNegNodes ;
 int desiredNodes ;
 int desiredvnodes ;
 int hashinit (int ,int ,int *) ;
 int init_crc32 () ;
 int init_string_table () ;
 int lck_attr_alloc_init () ;
 int lck_grp_alloc_init (char*,int ) ;
 int lck_grp_attr_alloc_init () ;
 int lck_mtx_init (int *,int ,int ) ;
 void* lck_rw_alloc_init (int ,int ) ;
 int namecache_lck_attr ;
 int namecache_lck_grp ;
 int namecache_lck_grp_attr ;
 void* namecache_rw_lock ;
 int nchash ;
 int nchashmask ;
 int nchashtbl ;
 int nchead ;
 int neghead ;
 int strcache_lck_attr ;
 int strcache_lck_grp ;
 int strcache_lck_grp_attr ;
 int * strcache_mtx_locks ;
 void* strtable_rw_lock ;

void
nchinit(void)
{
 int i;

 desiredNegNodes = (desiredvnodes / 10);
 desiredNodes = desiredvnodes + desiredNegNodes;

 TAILQ_INIT(&nchead);
 TAILQ_INIT(&neghead);

 init_crc32();

 nchashtbl = hashinit(MAX(CONFIG_NC_HASH, (2 *desiredNodes)), M_CACHE, &nchash);
 nchashmask = nchash;
 nchash++;

 init_string_table();


 namecache_lck_grp_attr= lck_grp_attr_alloc_init();

 namecache_lck_grp = lck_grp_alloc_init("Name Cache", namecache_lck_grp_attr);


 namecache_lck_attr = lck_attr_alloc_init();


 namecache_rw_lock = lck_rw_alloc_init(namecache_lck_grp, namecache_lck_attr);



 strcache_lck_grp_attr= lck_grp_attr_alloc_init();

 strcache_lck_grp = lck_grp_alloc_init("String Cache", strcache_lck_grp_attr);


 strcache_lck_attr = lck_attr_alloc_init();


 strtable_rw_lock = lck_rw_alloc_init(strcache_lck_grp, strcache_lck_attr);

 for (i = 0; i < NUM_STRCACHE_LOCKS; i++)
  lck_mtx_init(&strcache_mtx_locks[i], strcache_lck_grp, strcache_lck_attr);
}

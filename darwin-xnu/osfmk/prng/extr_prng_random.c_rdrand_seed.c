
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
struct ccdigest_info {int dummy; } ;


 int CCSHA256_OUTPUT_SIZE ;
 int bzero (int *,int) ;
 int ccdigest_di_clear (struct ccdigest_info const*,int ) ;
 int ccdigest_di_decl (struct ccdigest_info const*,int ) ;
 int ccdigest_final (struct ccdigest_info const*,int ,int *) ;
 int ccdigest_init (struct ccdigest_info const*,int ) ;
 int ccdigest_update (struct ccdigest_info const*,int ,int,int *) ;
 struct ccdigest_info ccsha256_ltc_di ;
 int ctx ;
 int memcpy (void*,int *,size_t) ;
 int rdrand_retry (int *,int) ;

__attribute__((used)) static size_t
rdrand_seed(void * buf, size_t nwords)
{
 size_t i;
 uint64_t w;
 uint8_t hash[CCSHA256_OUTPUT_SIZE];
 const struct ccdigest_info * di = &ccsha256_ltc_di;

 ccdigest_di_decl(di, ctx);
 ccdigest_init(di, ctx);

 for (i = 0; i < 1023; i += 1) {
  if (!rdrand_retry(&w, 10)) {
   nwords = 0;
   goto out;
  }
  ccdigest_update(di, ctx, sizeof w, &w);
 }

 ccdigest_final(di, ctx, hash);

 if (nwords > 2) {
  nwords = 2;
 }

 memcpy(buf, hash, nwords * sizeof(uint64_t));

out:
 ccdigest_di_clear(di, ctx);
 bzero(hash, sizeof hash);
 bzero(&w, sizeof w);

 return nwords;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct secasindex {scalar_t__ proto; } ;
struct sadb_spirange {int sadb_spirange_min; int sadb_spirange_max; } ;
struct TYPE_2__ {int getspi_count; } ;


 scalar_t__ IPPROTO_IPCOMP ;
 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int LOG_DEBUG ;
 int ipseclog (int ) ;
 int * key_checkspidup (struct secasindex*,int) ;
 int key_random () ;
 int key_spi_maxval ;
 int key_spi_minval ;
 int key_spi_trycnt ;
 TYPE_1__ keystat ;
 int sadb_mutex ;

__attribute__((used)) static u_int32_t
key_do_getnewspi(
     struct sadb_spirange *spirange,
     struct secasindex *saidx)
{
 u_int32_t newspi;
 u_int32_t keymin, keymax;
 int count = key_spi_trycnt;

 LCK_MTX_ASSERT(sadb_mutex, LCK_MTX_ASSERT_OWNED);


 if (spirange != ((void*)0)) {
  keymin = spirange->sadb_spirange_min;
  keymax = spirange->sadb_spirange_max;
 } else {
  keymin = key_spi_minval;
  keymax = key_spi_maxval;
 }

 if (saidx->proto == IPPROTO_IPCOMP) {
  u_int32_t t;
  if (keymin >= 0x10000)
   keymin = 0xffff;
  if (keymax >= 0x10000)
   keymax = 0xffff;
  if (keymin > keymax) {
   t = keymin; keymin = keymax; keymax = t;
  }
 }

 if (keymin == keymax) {
  if (key_checkspidup(saidx, keymin) != ((void*)0)) {
   ipseclog((LOG_DEBUG, "key_do_getnewspi: SPI %u exists already.\n", keymin));
   return 0;
  }

  count--;
  newspi = keymin;

 } else {

  u_int32_t range = keymax - keymin + 1;


  newspi = 0;


  while (count--) {
   u_int32_t rand_val = key_random();


   newspi = (range == 0 ? rand_val : keymin + (rand_val % range));

   if (key_checkspidup(saidx, newspi) == ((void*)0))
    break;
  }

  if (count == 0 || newspi == 0) {
   ipseclog((LOG_DEBUG, "key_do_getnewspi: to allocate spi is failed.\n"));
   return 0;
  }
 }


 keystat.getspi_count =
 (keystat.getspi_count + key_spi_trycnt - count) / 2;

 return newspi;
}

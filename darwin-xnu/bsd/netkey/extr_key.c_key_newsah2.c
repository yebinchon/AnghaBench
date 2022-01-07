
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct secasindex {int dummy; } ;
struct secashead {int dummy; } ;


 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 struct secashead* key_getsah (struct secasindex*) ;
 struct secashead* key_newsah (struct secasindex*,int *,int ,int ) ;
 int sadb_mutex ;

struct secashead *
key_newsah2 (struct secasindex *saidx,
    u_int8_t dir)
{
 struct secashead *sah;

 LCK_MTX_ASSERT(sadb_mutex, LCK_MTX_ASSERT_OWNED);

 sah = key_getsah(saidx);
 if (!sah) {
  return(key_newsah(saidx, ((void*)0), 0, dir));
 }
 return sah;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int hash; int d; int ifbit; } ;
typedef TYPE_1__ ccv_nnc_cse_hash_t ;


 int assert (int) ;

__attribute__((used)) static void _ccv_nnc_cse_hash_add(ccv_nnc_cse_hash_t* const hash_map, uint64_t hash, int d, const int map_size)
{
 assert(hash > 0);
 int i, j;
 i = (hash - 1) % map_size;
 for (j = 0; ; j++, i++)
 {
  if (i >= map_size)
   i = 0;
  if (hash_map[i].hash == hash)
   return;
  if (hash_map[i].hash == 0)
  {

   hash_map[i].d = d;
   hash_map[i].ifbit = j;
   hash_map[i].hash = hash;
   return;
  }
  if (j > hash_map[i].ifbit)
  {
   const ccv_nnc_cse_hash_t old_hash = hash_map[i];

   hash_map[i].d = d;
   hash_map[i].ifbit = j;
   hash_map[i].hash = hash;
   d = old_hash.d;
   j = old_hash.ifbit;
   hash = old_hash.hash;
  }
 }
}

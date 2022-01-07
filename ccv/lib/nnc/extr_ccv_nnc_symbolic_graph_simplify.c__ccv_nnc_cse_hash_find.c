
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int ifbit; int const hash; int d; } ;
typedef TYPE_1__ ccv_nnc_cse_hash_t ;


 int assert (int) ;

__attribute__((used)) static int _ccv_nnc_cse_hash_find(ccv_nnc_cse_hash_t* const hash_map, const uint64_t hash, const int map_size)
{
 assert(hash > 0);
 int i, j;
 i = (hash - 1) % map_size;
 for (j = 0; ; j++, i++)
 {
  if (i >= map_size)
   i = 0;
  if (j > hash_map[i].ifbit)
   return -1;
  if (hash_map[i].hash == hash)
   return hash_map[i].d;
 }
}

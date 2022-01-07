
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct rarch_key_map {scalar_t__ sym; int rk; scalar_t__ key; } ;
typedef struct rarch_key_map rwebinput_key_to_code_map_entry_t ;


 int ARRAY_SIZE (struct rarch_key_map*) ;
 int RETROK_UNKNOWN ;
 scalar_t__ encoding_crc32 (int ,int const*,int ) ;
 struct rarch_key_map* rarch_key_map_rwebinput ;
 int retro_assert (int) ;
 struct rarch_key_map* rwebinput_key_to_code_map ;
 int strlen (scalar_t__) ;

__attribute__((used)) static void rwebinput_generate_lut(void)
{
   int i;
   struct rarch_key_map *key_map;

   retro_assert(ARRAY_SIZE(rarch_key_map_rwebinput) ==
      ARRAY_SIZE(rwebinput_key_to_code_map) + 1);

   for (i = 0; i < ARRAY_SIZE(rwebinput_key_to_code_map); i++)
   {
      int j;
      uint32_t crc;
      const rwebinput_key_to_code_map_entry_t *key_to_code =
         &rwebinput_key_to_code_map[i];
      key_map = &rarch_key_map_rwebinput[i];
      crc = encoding_crc32(0, (const uint8_t *)key_to_code->key,
         strlen(key_to_code->key));


      for (j = 0; j < i; j++)
      {
         retro_assert(rarch_key_map_rwebinput[j].sym != crc);
      }

      key_map->rk = key_to_code->rk;
      key_map->sym = crc;
   }


   key_map = &rarch_key_map_rwebinput[ARRAY_SIZE(rarch_key_map_rwebinput) - 1];
   key_map->rk = RETROK_UNKNOWN;
   key_map->sym = 0;
}

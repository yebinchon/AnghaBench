#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
struct rarch_key_map {scalar_t__ sym; int /*<<< orphan*/  rk; scalar_t__ key; } ;
typedef  struct rarch_key_map rwebinput_key_to_code_map_entry_t ;

/* Variables and functions */
 int FUNC0 (struct rarch_key_map*) ; 
 int /*<<< orphan*/  RETROK_UNKNOWN ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 struct rarch_key_map* rarch_key_map_rwebinput ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct rarch_key_map* rwebinput_key_to_code_map ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4(void)
{
   int i;
   struct rarch_key_map *key_map;

   FUNC2(FUNC0(rarch_key_map_rwebinput) ==
      FUNC0(rwebinput_key_to_code_map) + 1);

   for (i = 0; i < FUNC0(rwebinput_key_to_code_map); i++)
   {
      int j;
      uint32_t crc;
      const rwebinput_key_to_code_map_entry_t *key_to_code =
         &rwebinput_key_to_code_map[i];
      key_map = &rarch_key_map_rwebinput[i];
      crc = FUNC1(0, (const uint8_t *)key_to_code->key,
         FUNC3(key_to_code->key));

      /* sanity check: make sure there's no collisions */
      for (j = 0; j < i; j++)
      {
         FUNC2(rarch_key_map_rwebinput[j].sym != crc);
      }

      key_map->rk = key_to_code->rk;
      key_map->sym = crc;
   }

   /* set terminating entry */
   key_map = &rarch_key_map_rwebinput[FUNC0(rarch_key_map_rwebinput) - 1];
   key_map->rk = RETROK_UNKNOWN;
   key_map->sym = 0;
}
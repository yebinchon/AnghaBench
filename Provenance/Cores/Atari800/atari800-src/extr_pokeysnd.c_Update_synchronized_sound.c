
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ANTIC_CPU_CLOCK ;
 int POKEYSND_GenerateSync (scalar_t__) ;
 scalar_t__ prev_update_tick ;

__attribute__((used)) static void Update_synchronized_sound(void)
{
 POKEYSND_GenerateSync(ANTIC_CPU_CLOCK - prev_update_tick);
 prev_update_tick = ANTIC_CPU_CLOCK;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int keybits_t ;


 int KEYBITS_WORD_BITS ;

__attribute__((used)) static void update_keystate(keybits_t *keystate, int sym, int is_down)
{
 keybits_t *ks_word, mask;

 mask = 1;
 mask <<= sym & (KEYBITS_WORD_BITS - 1);
 ks_word = keystate + sym / KEYBITS_WORD_BITS;
 if (is_down)
  *ks_word |= mask;
 else
  *ks_word &= ~mask;
}

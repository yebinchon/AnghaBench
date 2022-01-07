
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (int *) ;
 int * mod_map_bit ;
 int * mod_map_idx ;
 int xkb_context_unref (int *) ;
 int * xkb_ctx ;
 int xkb_keymap_unref (int *) ;
 int * xkb_map ;
 int * xkb_state ;
 int xkb_state_unref (int *) ;

void free_xkb(void)
{
   if (mod_map_idx)
      free(mod_map_idx);
   if (mod_map_bit)
      free(mod_map_bit);
   if (xkb_map)
      xkb_keymap_unref(xkb_map);
   if (xkb_ctx)
      xkb_context_unref(xkb_ctx);
   if (xkb_state)
      xkb_state_unref(xkb_state);

   mod_map_idx = ((void*)0);
   mod_map_bit = ((void*)0);
   xkb_map = ((void*)0);
   xkb_ctx = ((void*)0);
   xkb_state = ((void*)0);
}

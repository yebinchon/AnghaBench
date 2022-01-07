
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* dyn_ltree; } ;
typedef TYPE_2__ deflate_state ;
struct TYPE_4__ {scalar_t__ Freq; } ;


 int LITERALS ;
 int Z_BINARY ;
 int Z_TEXT ;

__attribute__((used)) static int detect_data_type(deflate_state *s)
   {




      unsigned long black_mask = 0xf3ffc07fUL;
      int n;


      for (n = 0; n <= 31; n++, black_mask >>= 1)
         if ((black_mask & 1) && (s->dyn_ltree[n].Freq != 0))
            return Z_BINARY;


      if (s->dyn_ltree[9].Freq != 0 || s->dyn_ltree[10].Freq != 0
            || s->dyn_ltree[13].Freq != 0)
         return Z_TEXT;
      for (n = 32; n < LITERALS; n++)
         if (s->dyn_ltree[n].Freq != 0)
            return Z_TEXT;




      return Z_BINARY;
   }

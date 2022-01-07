
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct in_default_bind {int bit; scalar_t__ btype; int code; } ;
typedef int binds ;
struct TYPE_2__ {struct in_default_bind* defbinds; } ;


 TYPE_1__ DRV (int) ;
 int IN_BINDTYPE_COUNT ;
 size_t IN_BIND_OFFS (int ,scalar_t__) ;
 int* calloc (int,int) ;
 int memcpy (int*,int*,int) ;

__attribute__((used)) static int *in_alloc_binds(int drv_id, int key_count)
{
 const struct in_default_bind *defbinds;
 int *binds;
 int i;

 binds = calloc(key_count * IN_BINDTYPE_COUNT * 2, sizeof(binds[0]));
 if (binds == ((void*)0))
  return ((void*)0);

 defbinds = DRV(drv_id).defbinds;
 if (defbinds != ((void*)0)) {
  for (i = 0; ; i++) {
   if (defbinds[i].bit == 0 && defbinds[i].btype == 0
       && defbinds[i].bit == 0)
    break;
   binds[IN_BIND_OFFS(defbinds[i].code, defbinds[i].btype)] |=
    1 << defbinds[i].bit;
  }


  memcpy(binds + key_count * IN_BINDTYPE_COUNT, binds,
   sizeof(binds[0]) * key_count * IN_BINDTYPE_COUNT);
 }

 return binds;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ binding; } ;


 scalar_t__ Q_stricmp (char const*,scalar_t__) ;
 TYPE_1__* keys ;

int Key_GetKey(const char *binding) {
  int i;

  if (binding) {
   for (i=0 ; i<256 ; i++) {
      if (keys[i].binding && Q_stricmp(binding, keys[i].binding) == 0) {
        return i;
      }
    }
  }
  return -1;
}

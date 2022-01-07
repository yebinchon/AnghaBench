
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* binding; } ;


 TYPE_1__* keys ;

char *Key_GetBinding( int keynum ) {
 if ( keynum == -1 ) {
  return "";
 }

 return keys[ keynum ].binding;
}

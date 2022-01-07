
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int skin_t ;
typedef int qhandle_t ;
struct TYPE_2__ {int numSkins; int ** skins; } ;


 TYPE_1__ tr ;

skin_t *R_GetSkinByHandle( qhandle_t hSkin ) {
 if ( hSkin < 1 || hSkin >= tr.numSkins ) {
  return tr.skins[0];
 }
 return tr.skins[ hSkin ];
}

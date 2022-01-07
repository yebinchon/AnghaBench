
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sharedEntity_t ;
typedef int byte ;
struct TYPE_2__ {int gentitySize; scalar_t__ gentities; } ;


 TYPE_1__ sv ;

int SV_NumForGentity( sharedEntity_t *ent ) {
 int num;

 num = ( (byte *)ent - (byte *)sv.gentities ) / sv.gentitySize;

 return num;
}

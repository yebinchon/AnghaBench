
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_2__ {int representativeValue; int colocationGroupId; int nodeId; } ;
typedef int Size ;
typedef TYPE_1__ ColocatedPlacementsHashKey ;


 int hash_combine (int ,int ) ;
 int hash_uint32 (int ) ;

__attribute__((used)) static uint32
ColocatedPlacementsHashHash(const void *key, Size keysize)
{
 ColocatedPlacementsHashKey *entry = (ColocatedPlacementsHashKey *) key;
 uint32 hash = 0;

 hash = hash_uint32(entry->nodeId);
 hash = hash_combine(hash, hash_uint32(entry->colocationGroupId));
 hash = hash_combine(hash, hash_uint32(entry->representativeValue));

 return hash;
}

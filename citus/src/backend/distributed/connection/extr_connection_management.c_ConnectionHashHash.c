
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_2__ {int database; int user; int port; int hostname; } ;
typedef int Size ;
typedef TYPE_1__ ConnectionHashKey ;


 int NAMEDATALEN ;
 int hash_combine (int ,int ) ;
 int hash_uint32 (int ) ;
 int string_hash (int ,int ) ;

__attribute__((used)) static uint32
ConnectionHashHash(const void *key, Size keysize)
{
 ConnectionHashKey *entry = (ConnectionHashKey *) key;
 uint32 hash = 0;

 hash = string_hash(entry->hostname, NAMEDATALEN);
 hash = hash_combine(hash, hash_uint32(entry->port));
 hash = hash_combine(hash, string_hash(entry->user, NAMEDATALEN));
 hash = hash_combine(hash, string_hash(entry->database, NAMEDATALEN));

 return hash;
}

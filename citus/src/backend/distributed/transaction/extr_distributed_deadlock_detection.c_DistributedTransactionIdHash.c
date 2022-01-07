
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32 ;
typedef int int64 ;
typedef int TimestampTz ;
struct TYPE_2__ {int timestamp; int transactionNumber; int initiatorNodeIdentifier; } ;
typedef int Size ;
typedef TYPE_1__ DistributedTransactionId ;


 int hash_any (unsigned char*,int) ;
 int hash_combine (int ,int ) ;
 int hash_uint32 (int ) ;

__attribute__((used)) static uint32
DistributedTransactionIdHash(const void *key, Size keysize)
{
 DistributedTransactionId *entry = (DistributedTransactionId *) key;
 uint32 hash = 0;

 hash = hash_uint32(entry->initiatorNodeIdentifier);
 hash = hash_combine(hash, hash_any((unsigned char *) &entry->transactionNumber,
            sizeof(int64)));
 hash = hash_combine(hash, hash_any((unsigned char *) &entry->timestamp,
            sizeof(TimestampTz)));

 return hash;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ transactionNumber; scalar_t__ initiatorNodeIdentifier; int timestamp; } ;
typedef int Size ;
typedef TYPE_1__ DistributedTransactionId ;


 int TimestampDifferenceExceeds (int ,int ,int ) ;

__attribute__((used)) static int
DistributedTransactionIdCompare(const void *a, const void *b, Size keysize)
{
 DistributedTransactionId *xactIdA = (DistributedTransactionId *) a;
 DistributedTransactionId *xactIdB = (DistributedTransactionId *) b;

 if (!TimestampDifferenceExceeds(xactIdB->timestamp, xactIdA->timestamp, 0))
 {

  return -1;
 }
 else if (!TimestampDifferenceExceeds(xactIdA->timestamp, xactIdB->timestamp, 0))
 {

  return 1;
 }
 else if (xactIdA->transactionNumber < xactIdB->transactionNumber)
 {
  return -1;
 }
 else if (xactIdA->transactionNumber > xactIdB->transactionNumber)
 {
  return 1;
 }
 else if (xactIdA->initiatorNodeIdentifier < xactIdB->initiatorNodeIdentifier)
 {
  return -1;
 }
 else if (xactIdA->initiatorNodeIdentifier > xactIdB->initiatorNodeIdentifier)
 {
  return 1;
 }
 else
 {
  return 0;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ transactionNumber; } ;
struct TYPE_5__ {TYPE_1__ transactionId; } ;
typedef TYPE_2__ BackendData ;



bool
IsInDistributedTransaction(BackendData *backendData)
{
 return backendData->transactionId.transactionNumber != 0;
}

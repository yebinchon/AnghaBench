
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64 ;
struct TYPE_3__ {int transactionNumber; } ;
struct TYPE_4__ {TYPE_1__ transactionId; } ;


 int Assert (int ) ;
 TYPE_2__* MyBackendData ;

uint64
CurrentDistributedTransactionNumber(void)
{
 Assert(MyBackendData != ((void*)0));

 return MyBackendData->transactionId.transactionNumber;
}

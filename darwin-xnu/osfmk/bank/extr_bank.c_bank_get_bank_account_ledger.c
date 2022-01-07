
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ledger_t ;
typedef TYPE_1__* bank_account_t ;
struct TYPE_4__ {scalar_t__ ba_holder; scalar_t__ ba_merchant; int ba_bill; } ;


 TYPE_1__* BANK_ACCOUNT_NULL ;
 int LEDGER_NULL ;

__attribute__((used)) static ledger_t
bank_get_bank_account_ledger(bank_account_t bank_account)
{
 ledger_t bankledger = LEDGER_NULL;

 if (bank_account != BANK_ACCOUNT_NULL &&
  bank_account->ba_holder != bank_account->ba_merchant)
  bankledger = bank_account->ba_bill;

 return (bankledger);
}

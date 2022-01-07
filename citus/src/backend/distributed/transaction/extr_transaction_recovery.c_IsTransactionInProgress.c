
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef int uint32 ;
typedef int int32 ;
typedef int HTAB ;


 int HASH_FIND ;
 int ParsePreparedTransactionName (char*,int *,int*,int *,int *) ;
 int hash_search (int *,int *,int ,int*) ;

__attribute__((used)) static bool
IsTransactionInProgress(HTAB *activeTransactionNumberSet, char *preparedTransactionName)
{
 int32 groupId = 0;
 int procId = 0;
 uint32 connectionNumber = 0;
 uint64 transactionNumber = 0;
 bool isValidName = 0;
 bool isTransactionInProgress = 0;

 isValidName = ParsePreparedTransactionName(preparedTransactionName, &groupId, &procId,
              &transactionNumber, &connectionNumber);
 if (isValidName)
 {
  hash_search(activeTransactionNumberSet, &transactionNumber, HASH_FIND,
     &isTransactionInProgress);
 }

 return isTransactionInProgress;
}

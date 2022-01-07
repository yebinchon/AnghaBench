
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef int uint32 ;
typedef int int32 ;


 scalar_t__ EINVAL ;
 scalar_t__ ERANGE ;
 int INT_MAX ;
 int UINT_MAX ;
 int ULLONG_MAX ;
 scalar_t__ errno ;
 int pg_strtouint64 (char*,int *,int) ;
 char* strchr (char*,char) ;
 int strtol (char*,int *,int) ;
 int strtoul (char*,int *,int) ;

bool
ParsePreparedTransactionName(char *preparedTransactionName,
        int32 *groupId, int *procId,
        uint64 *transactionNumber,
        uint32 *connectionNumber)
{
 char *currentCharPointer = preparedTransactionName;

 currentCharPointer = strchr(currentCharPointer, '_');
 if (currentCharPointer == ((void*)0))
 {
  return 0;
 }


 ++currentCharPointer;

 *groupId = strtol(currentCharPointer, ((void*)0), 10);

 if ((*groupId == 0 && errno == EINVAL) ||
  (*groupId == INT_MAX && errno == ERANGE))
 {
  return 0;
 }

 currentCharPointer = strchr(currentCharPointer, '_');
 if (currentCharPointer == ((void*)0))
 {
  return 0;
 }


 ++currentCharPointer;

 *procId = strtol(currentCharPointer, ((void*)0), 10);
 if ((*procId == 0 && errno == EINVAL) ||
  (*procId == INT_MAX && errno == ERANGE))
 {
  return 0;
 }

 currentCharPointer = strchr(currentCharPointer, '_');
 if (currentCharPointer == ((void*)0))
 {
  return 0;
 }


 ++currentCharPointer;

 *transactionNumber = pg_strtouint64(currentCharPointer, ((void*)0), 10);
 if ((*transactionNumber == 0 && errno != 0) ||
  (*transactionNumber == ULLONG_MAX && errno == ERANGE))
 {
  return 0;
 }

 currentCharPointer = strchr(currentCharPointer, '_');
 if (currentCharPointer == ((void*)0))
 {
  return 0;
 }


 ++currentCharPointer;

 *connectionNumber = strtoul(currentCharPointer, ((void*)0), 10);
 if ((*connectionNumber == 0 && errno == EINVAL) ||
  (*connectionNumber == UINT_MAX && errno == ERANGE))
 {
  return 0;
 }

 return 1;
}

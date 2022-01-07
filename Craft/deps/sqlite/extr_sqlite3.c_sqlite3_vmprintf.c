
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int zBase ;
typedef int va_list ;
struct TYPE_5__ {int useMalloc; } ;
typedef TYPE_1__ StrAccum ;


 int SQLITE_MAX_LENGTH ;
 int SQLITE_PRINT_BUF_SIZE ;
 char* sqlite3StrAccumFinish (TYPE_1__*) ;
 int sqlite3StrAccumInit (TYPE_1__*,char*,int,int ) ;
 int sqlite3VXPrintf (TYPE_1__*,int ,char const*,int ) ;
 scalar_t__ sqlite3_initialize () ;

char *sqlite3_vmprintf(const char *zFormat, va_list ap){
  char *z;
  char zBase[SQLITE_PRINT_BUF_SIZE];
  StrAccum acc;

  if( sqlite3_initialize() ) return 0;

  sqlite3StrAccumInit(&acc, zBase, sizeof(zBase), SQLITE_MAX_LENGTH);
  acc.useMalloc = 2;
  sqlite3VXPrintf(&acc, 0, zFormat, ap);
  z = sqlite3StrAccumFinish(&acc);
  return z;
}

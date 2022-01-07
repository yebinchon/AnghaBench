
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StrAccum ;


 int sqlite3StrAccumAppend (int *,char const*,int) ;

__attribute__((used)) static void explainAppendTerm(
  StrAccum *pStr,
  int iTerm,
  const char *zColumn,
  const char *zOp
){
  if( iTerm ) sqlite3StrAccumAppend(pStr, " AND ", 5);
  sqlite3StrAccumAppend(pStr, zColumn, -1);
  sqlite3StrAccumAppend(pStr, zOp, 1);
  sqlite3StrAccumAppend(pStr, "?", 1);
}

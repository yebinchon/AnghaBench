
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SQuery ;


 int TSDB_FUNC_FIRST ;
 int TSDB_FUNC_FIRST_DST ;
 int onlyOneQueryType (int *,int ,int ) ;

__attribute__((used)) static bool onlyFirstQuery(SQuery *pQuery) { return onlyOneQueryType(pQuery, TSDB_FUNC_FIRST, TSDB_FUNC_FIRST_DST); }

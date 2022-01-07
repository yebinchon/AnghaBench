
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SQuery ;


 int TSDB_FUNC_LAST ;
 int TSDB_FUNC_LAST_DST ;
 int onlyOneQueryType (int *,int ,int ) ;

__attribute__((used)) static bool onlyLastQuery(SQuery *pQuery) { return onlyOneQueryType(pQuery, TSDB_FUNC_LAST, TSDB_FUNC_LAST_DST); }

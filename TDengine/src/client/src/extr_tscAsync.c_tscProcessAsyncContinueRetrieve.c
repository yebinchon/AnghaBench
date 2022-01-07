
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TAOS_RES ;


 int tscProcessAsyncRetrieve ;
 int tscProcessAsyncRetrieveImpl (void*,int *,int,int ) ;

__attribute__((used)) static void tscProcessAsyncContinueRetrieve(void *param, TAOS_RES *tres, int numOfRows) {
  tscProcessAsyncRetrieveImpl(param, tres, numOfRows, tscProcessAsyncRetrieve);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int maxSize; int values; int keywords; int size; } ;
typedef int Size ;
typedef TYPE_1__ ConnParamsInfo ;


 int CalculateMaxSize () ;
 TYPE_1__ ConnParams ;
 int malloc (int) ;
 int memset (int ,int ,int) ;

void
InitConnParams()
{
 Size maxSize = CalculateMaxSize();
 ConnParamsInfo connParams = {
  .keywords = malloc(maxSize * sizeof(char *)),
  .values = malloc(maxSize * sizeof(char *)),
  .size = 0,
  .maxSize = maxSize
 };

 memset(connParams.keywords, 0, maxSize * sizeof(char *));
 memset(connParams.values, 0, maxSize * sizeof(char *));

 ConnParams = connParams;
}

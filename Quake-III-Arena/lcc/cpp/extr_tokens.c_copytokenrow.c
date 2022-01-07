
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int lp; } ;
typedef TYPE_1__ Tokenrow ;


 int maketokenrow (int,TYPE_1__*) ;
 int movetokenrow (TYPE_1__*,TYPE_1__*) ;
 int rowlen (TYPE_1__*) ;

Tokenrow *
copytokenrow(Tokenrow *dtr, Tokenrow *str)
{
 int len = rowlen(str);

 maketokenrow(len, dtr);
 movetokenrow(dtr, str);
 dtr->lp += len;
 return dtr;
}

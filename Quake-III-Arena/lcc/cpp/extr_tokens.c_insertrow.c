
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int tp; } ;
typedef TYPE_1__ Tokenrow ;


 int adjustrow (TYPE_1__*,int) ;
 int makespace (TYPE_1__*) ;
 int movetokenrow (TYPE_1__*,TYPE_1__*) ;
 int rowlen (TYPE_1__*) ;

void
insertrow(Tokenrow *dtr, int ntok, Tokenrow *str)
{
 int nrtok = rowlen(str);

 dtr->tp += ntok;
 adjustrow(dtr, nrtok-ntok);
 dtr->tp -= ntok;
 movetokenrow(dtr, str);
 makespace(dtr);
 dtr->tp += nrtok;
 makespace(dtr);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pData; scalar_t__ HamMode; } ;
typedef TYPE_1__ IO ;


 int OSFileFlush (int ) ;

void FileFlush(IO *o)
{

 if (o == ((void*)0))
 {
  return;
 }

 if (o->HamMode)
 {
  return;
 }

 OSFileFlush(o->pData);
}

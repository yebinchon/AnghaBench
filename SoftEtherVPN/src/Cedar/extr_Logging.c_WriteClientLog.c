
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_3__ {int Logger; } ;
typedef TYPE_1__ CLIENT ;


 int InsertUnicodeRecord (int ,int *) ;

void WriteClientLog(CLIENT *c, wchar_t *str)
{

 if (c == ((void*)0))
 {
  return;
 }

 InsertUnicodeRecord(c->Logger, str);
}

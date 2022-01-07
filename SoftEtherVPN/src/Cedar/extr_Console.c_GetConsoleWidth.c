
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_4__ {int (* GetWidth ) (TYPE_1__*) ;} ;
typedef TYPE_1__ CONSOLE ;


 int stub1 (TYPE_1__*) ;

UINT GetConsoleWidth(CONSOLE *c)
{
 UINT size;

 size = c->GetWidth(c);

 if (size == 0)
 {
  size = 80;
 }

 if (size < 32)
 {
  size = 32;
 }

 if (size > 65536)
 {
  size = 65535;
 }

 return size;
}

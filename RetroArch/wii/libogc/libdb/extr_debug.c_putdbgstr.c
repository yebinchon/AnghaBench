
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* write ) (TYPE_1__*,char const*,int ) ;} ;


 TYPE_1__* current_device ;
 int strlen (char const*) ;
 int stub1 (TYPE_1__*,char const*,int ) ;

__attribute__((used)) static void putdbgstr(const char *str)
{
 current_device->write(current_device,str,strlen(str));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ s32 ;
struct TYPE_3__ {scalar_t__ (* read ) (TYPE_1__*,char*,int) ;} ;


 TYPE_1__* current_device ;
 scalar_t__ stub1 (TYPE_1__*,char*,int) ;

__attribute__((used)) static char getdbgchar()
{
 char ch = 0;
 s32 len = 0;

 len = current_device->read(current_device,&ch,1);

 return (len>0)?ch:0;
}

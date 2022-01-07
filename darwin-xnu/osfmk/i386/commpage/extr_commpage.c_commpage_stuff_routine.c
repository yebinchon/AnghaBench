
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int code_length; int code_address; int commpage_address; } ;
typedef TYPE_1__ commpage_descriptor ;


 int commpage_stuff (int ,int ,int ) ;

__attribute__((used)) static void
commpage_stuff_routine(
    commpage_descriptor *rd )
{
 commpage_stuff(rd->commpage_address,rd->code_address,rd->code_length);
}

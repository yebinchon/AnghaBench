
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* rcc_enum__ty ;
struct TYPE_2__ {int value; int id; } ;


 int do_identifier (int ) ;
 int do_int (int ) ;
 int printf (char*) ;

__attribute__((used)) static void do_enum(void *x) {
 rcc_enum__ty e = x;

 do_identifier(e->id);
 printf("=");
 do_int(e->value);
}

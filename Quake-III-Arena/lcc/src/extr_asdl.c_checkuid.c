
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_3__* rcc_interface_ty ;
typedef int list_ty ;
struct TYPE_5__ {int codelist; } ;
struct TYPE_6__ {TYPE_1__ rcc_Function; } ;
struct TYPE_7__ {scalar_t__ kind; TYPE_2__ v; } ;


 TYPE_3__* Seq_get (int ,int) ;
 int Seq_length (int ) ;
 scalar_t__ rcc_Address_enum ;
 scalar_t__ rcc_Function_enum ;
 scalar_t__ rcc_Local_enum ;

__attribute__((used)) static int checkuid(list_ty list) {
 int i, n = 0, count = Seq_length(list);

 for (i = 0; i < count; i++) {
  rcc_interface_ty in = Seq_get(list, i);
  if (in->kind == rcc_Local_enum
  || in->kind == rcc_Address_enum)
   n++;
  else if (in->kind == rcc_Function_enum)
   n += checkuid(in->v.rcc_Function.codelist);
 }
 return n;
}

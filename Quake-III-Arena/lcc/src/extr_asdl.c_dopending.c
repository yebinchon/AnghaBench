
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rcc_symbol_ty ;
struct TYPE_2__ {int items; } ;
typedef int * Symbol ;


 int Seq_addhi (int ,int ) ;
 int mk_symbol (int *) ;
 int * pending ;
 TYPE_1__* pickle ;
 int rcc_Symbol (int,int ) ;
 int symboluid (int *) ;

__attribute__((used)) static void dopending(Symbol p) {
 if (pending != ((void*)0)) {
  int uid = symboluid(pending);
  rcc_symbol_ty symbol = mk_symbol(pending);
  Seq_addhi(pickle->items, rcc_Symbol(uid, symbol));
 }
 pending = p;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int list_ty ;
typedef int * Symbol ;


 int CODE ;
 int Seq_addhi (int ,int ) ;
 int Seq_new (int ) ;
 int asdl_local (int *) ;
 int asdl_segment (int ) ;
 int dopending (int *) ;
 int emitcode () ;
 int gencode (int **,int **) ;
 int interfaces ;
 int put (int ) ;
 int rcc_Function (int ,int ,int ,int,int ) ;
 int symboluid (int *) ;
 int to_generic_int (int ) ;

__attribute__((used)) static void asdl_function(Symbol f, Symbol caller[], Symbol callee[], int ncalls) {
 list_ty codelist = Seq_new(0), save, calleelist = Seq_new(0), callerlist = Seq_new(0);
 int i;

 dopending(f);
 for (i = 0; caller[i] != ((void*)0); i++) {
  asdl_local(caller[i]);
  Seq_addhi(callerlist, to_generic_int(symboluid(caller[i])));
 }
 for (i = 0; callee[i] != ((void*)0); i++) {
  asdl_local(callee[i]);
  Seq_addhi(calleelist, to_generic_int(symboluid(callee[i])));
 }
 save = interfaces;
 interfaces = codelist;
 gencode(caller, callee);
 asdl_segment(CODE);
 emitcode();
 interfaces = save;
 put(rcc_Function(symboluid(f), callerlist, calleelist, ncalls, codelist));
}

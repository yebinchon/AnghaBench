
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int Tree ;
struct TYPE_6__ {scalar_t__ defined; } ;
typedef TYPE_1__* Symbol ;


 int EXTERN ;
 int afunc ;
 int ftype (int ,int ) ;
 int idtree (int ) ;
 int inttype ;
 TYPE_1__* mksymbol (int ,char*,int ) ;
 int pointer (int ) ;
 int vcall (TYPE_1__*,int ,int ,int *) ;
 int voidptype ;
 int voidtype ;
 int walk (int ,int ,int ) ;

__attribute__((used)) static void bbexit(Symbol yylink, Symbol f, Tree e) {
 static Symbol epilogue;

 if (epilogue == 0) {
  epilogue = mksymbol(EXTERN, "_epilogue", ftype(inttype, voidptype));
  epilogue->defined = 0;
 }
 walk(vcall(epilogue, voidtype, pointer(idtree(afunc)), ((void*)0)), 0, 0);
}

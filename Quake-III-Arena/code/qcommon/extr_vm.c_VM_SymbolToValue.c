
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* symbols; } ;
typedef TYPE_1__ vm_t ;
struct TYPE_5__ {int symValue; int symName; struct TYPE_5__* next; } ;
typedef TYPE_2__ vmSymbol_t ;


 int strcmp (char const*,int ) ;

int VM_SymbolToValue( vm_t *vm, const char *symbol ) {
 vmSymbol_t *sym;

 for ( sym = vm->symbols ; sym ; sym = sym->next ) {
  if ( !strcmp( symbol, sym->symName ) ) {
   return sym->symValue;
  }
 }
 return 0;
}

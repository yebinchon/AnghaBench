
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * pmap_t ;
typedef int * ledger_t ;


 int FALSE ;
 int LEDGER_CREATE_ACTIVE_ENTRIES ;
 int assert (int ) ;
 int ledger_dereference (int *) ;
 int * ledger_instantiate (int *,int ) ;
 int * pmap_create (int *,int ,int ) ;
 int * task_ledger_template ;

__attribute__((used)) static pmap_t
pmap_create_wrapper() {
 pmap_t new_pmap = ((void*)0);
 ledger_t ledger;
 assert(task_ledger_template != ((void*)0));
 if ((ledger = ledger_instantiate(task_ledger_template, LEDGER_CREATE_ACTIVE_ENTRIES)) == ((void*)0))
  return ((void*)0);
        new_pmap = pmap_create(ledger, 0, FALSE);
 ledger_dereference(ledger);
 return new_pmap;
}

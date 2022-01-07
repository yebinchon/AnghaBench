
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ offset; } ;
struct TYPE_8__ {TYPE_1__ x; } ;
typedef TYPE_2__* Symbol ;


 int assert (int) ;
 int mk_symbol (TYPE_2__*) ;
 int put (int ) ;
 int rcc_Address (int ,int ,int ,long) ;
 int symboluid (TYPE_2__*) ;

__attribute__((used)) static void asdl_address(Symbol q, Symbol p, long n) {
 assert(q->x.offset == 0);
 put(rcc_Address(symboluid(q), mk_symbol(q), symboluid(p), n));
}

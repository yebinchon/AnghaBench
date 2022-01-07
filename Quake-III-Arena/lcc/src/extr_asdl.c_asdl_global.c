
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int seg; } ;
struct TYPE_7__ {TYPE_1__ u; } ;
typedef TYPE_2__* Symbol ;


 int dopending (TYPE_2__*) ;
 int put (int ) ;
 int rcc_Global (int ,int ) ;
 int symboluid (TYPE_2__*) ;

__attribute__((used)) static void asdl_global(Symbol p) {
 dopending(p);
 put(rcc_Global(symboluid(p), p->u.seg));
}

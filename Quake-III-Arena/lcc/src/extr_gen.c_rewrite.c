
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_12__ {scalar_t__ inst; } ;
struct TYPE_14__ {TYPE_1__ x; } ;
struct TYPE_13__ {int (* _label ) (TYPE_3__*) ;} ;
struct TYPE_11__ {TYPE_2__ x; } ;
typedef TYPE_3__* Node ;


 TYPE_10__* IR ;
 int assert (int) ;
 int debug (int ) ;
 int dumpcover (TYPE_3__*,int,int ) ;
 int dumptree (TYPE_3__*) ;
 int fprint (int ,char*) ;
 int prelabel (TYPE_3__*) ;
 int reduce (TYPE_3__*,int) ;
 int stderr ;
 int stub1 (TYPE_3__*) ;

__attribute__((used)) static void rewrite(Node p) {
 assert(p->x.inst == 0);
 prelabel(p);
 debug(dumptree(p));
 debug(fprint(stderr, "\n"));
 (*IR->x._label)(p);
 debug(dumpcover(p, 1, 0));
 reduce(p, 1);
}

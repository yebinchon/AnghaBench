
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* tell ) (TYPE_1__*) ;} ;
typedef TYPE_1__ rio ;
typedef int off_t ;


 int stub1 (TYPE_1__*) ;

__attribute__((used)) static inline off_t rioTell(rio *r) {
    return r->tell(r);
}

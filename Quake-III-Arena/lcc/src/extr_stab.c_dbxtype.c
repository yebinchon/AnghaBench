
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* Type ;
struct TYPE_6__ {int typeno; } ;
struct TYPE_7__ {TYPE_1__ x; } ;


 int asgncode (TYPE_2__*,int ) ;
 int dbxout (TYPE_2__*) ;

__attribute__((used)) static int dbxtype(Type ty) {
 asgncode(ty, 0);
 dbxout(ty);
 return ty->x.typeno;
}

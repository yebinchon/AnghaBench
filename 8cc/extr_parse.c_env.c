
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Map ;


 int * globalenv ;
 int * localenv ;

__attribute__((used)) static Map *env() {
    return localenv ? localenv : globalenv;
}

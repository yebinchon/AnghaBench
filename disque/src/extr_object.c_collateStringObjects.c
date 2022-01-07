
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int robj ;


 int DISQUE_COMPARE_COLL ;
 int compareStringObjectsWithFlags (int *,int *,int ) ;

int collateStringObjects(robj *a, robj *b) {
    return compareStringObjectsWithFlags(a,b,DISQUE_COMPARE_COLL);
}

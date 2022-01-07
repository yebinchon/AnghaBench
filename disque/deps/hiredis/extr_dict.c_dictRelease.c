
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dict ;


 int _dictClear (int *) ;
 int free (int *) ;

__attribute__((used)) static void dictRelease(dict *ht) {
    _dictClear(ht);
    free(ht);
}

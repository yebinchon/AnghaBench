
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dictEntry ;
typedef int dict ;


 scalar_t__ DICT_OK ;
 scalar_t__ dictAdd (int *,void*,void*) ;
 int * dictFind (int *,void*) ;
 int dictFreeVal (int *,int *) ;
 int dictSetVal (int *,int *,void*) ;

int dictReplace(dict *d, void *key, void *val)
{
    dictEntry *entry, auxentry;



    if (dictAdd(d, key, val) == DICT_OK)
        return 1;

    entry = dictFind(d, key);





    auxentry = *entry;
    dictSetVal(d, entry, val);
    dictFreeVal(d, &auxentry);
    return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DICT_NOTUSED (void*) ;
 int JOB_ID_LEN ;
 scalar_t__ memcmp (void const*,void const*,int ) ;

int dictJobKeyCompare(void *privdata, const void *key1,
                      const void *key2)
{
    DICT_NOTUSED(privdata);
    return memcmp(key1, key2, JOB_ID_LEN) == 0;
}

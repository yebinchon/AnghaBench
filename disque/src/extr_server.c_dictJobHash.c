
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int JOB_ID_LEN ;
 unsigned int dictGenHashFunction (void const*,int ) ;

unsigned int dictJobHash(const void *key) {
    return dictGenHashFunction(key,JOB_ID_LEN);
}

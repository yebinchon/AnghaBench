
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int dictGenHashFunction (void const*,int ) ;
 int strlen (void const*) ;

unsigned int dictStringHash(const void *key) {
    return dictGenHashFunction(key, strlen(key));
}

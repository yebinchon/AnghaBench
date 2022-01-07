
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sds ;


 unsigned int dictGenHashFunction (unsigned char const*,int ) ;
 int sdslen (int const) ;

__attribute__((used)) static unsigned int callbackHash(const void *key) {
    return dictGenHashFunction((const unsigned char *)key,
                               sdslen((const sds)key));
}

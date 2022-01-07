
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sds ;


 int sdscatlen (int ,char const*,int ) ;
 int strlen (char const*) ;

sds sdscat(sds s, const char *t) {
    return sdscatlen(s, t, strlen(t));
}

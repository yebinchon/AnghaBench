
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sds ;


 int sdscpylen (int ,char const*,int ) ;
 int strlen (char const*) ;

sds sdscpy(sds s, const char *t) {
    return sdscpylen(s, t, strlen(t));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int robj ;
typedef int buf ;


 int * createStringObject (char*,int) ;
 int snprintf (char*,int,char*,long double) ;
 int * strchr (char*,char) ;

robj *createStringObjectFromLongDouble(long double value) {
    char buf[256];
    int len;






    len = snprintf(buf,sizeof(buf),"%.17Lf", value);

    if (strchr(buf,'.') != ((void*)0)) {
        char *p = buf+len-1;
        while(*p == '0') {
            p--;
            len--;
        }
        if (*p == '.') len--;
    }
    return createStringObject(buf,len);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int consumeNewline (char*) ;
 scalar_t__ malloc (long) ;
 int readBytes (int *,char*,long) ;
 int readLong (int *,char,long*) ;

int readString(FILE *fp, char** target) {
    long len;
    *target = ((void*)0);
    if (!readLong(fp,'$',&len)) {
        return 0;
    }


    len += 2;
    *target = (char*)malloc(len);
    if (!readBytes(fp,*target,len)) {
        return 0;
    }
    if (!consumeNewline(*target+len-2)) {
        return 0;
    }
    (*target)[len-2] = '\0';
    return 1;
}

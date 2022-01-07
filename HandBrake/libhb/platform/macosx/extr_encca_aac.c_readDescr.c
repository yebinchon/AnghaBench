
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UInt8 ;


 int readDescrLen (int **) ;

__attribute__((used)) static int readDescr(UInt8 **buffer, int *tag)
{
    *tag = *(*buffer)++;
    return readDescrLen(buffer);
}

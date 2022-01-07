
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PACK ;
typedef int BUF ;


 int * PackGetBufEx (int *,char*,int ) ;

BUF *PackGetBuf(PACK *p, char *name)
{
 return PackGetBufEx(p, name, 0);
}

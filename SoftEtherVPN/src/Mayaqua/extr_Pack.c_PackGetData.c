
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PACK ;


 int PackGetDataEx (int *,char*,void*,int ) ;

bool PackGetData(PACK *p, char *name, void *data)
{
 return PackGetDataEx(p, name, data, 0);
}

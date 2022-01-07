
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int PACK ;


 int PackGetDataEx2 (int *,char*,void*,int ,int ) ;

bool PackGetData2(PACK *p, char *name, void *data, UINT size)
{
 return PackGetDataEx2(p, name, data, size, 0);
}

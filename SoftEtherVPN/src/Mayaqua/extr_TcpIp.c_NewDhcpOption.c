
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
typedef void* UCHAR ;
struct TYPE_3__ {void* Id; void* Size; void* Data; } ;
typedef TYPE_1__ DHCP_OPTION ;


 int Copy (void*,void*,int) ;
 void* ZeroMalloc (int) ;

DHCP_OPTION *NewDhcpOption(UINT id, void *data, UINT size)
{
 DHCP_OPTION *ret;
 if (size != 0 && data == ((void*)0))
 {
  return ((void*)0);
 }

 ret = ZeroMalloc(sizeof(DHCP_OPTION));
 ret->Data = ZeroMalloc(size);
 Copy(ret->Data, data, size);
 ret->Size = (UCHAR)size;
 ret->Id = (UCHAR)id;

 return ret;
}

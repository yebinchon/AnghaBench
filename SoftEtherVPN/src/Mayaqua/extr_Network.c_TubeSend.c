
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int TUBE ;


 int TubeSendEx (int *,void*,int ,void*,int) ;

bool TubeSend(TUBE *t, void *data, UINT size, void *header)
{
 return TubeSendEx(t, data, size, header, 0);
}

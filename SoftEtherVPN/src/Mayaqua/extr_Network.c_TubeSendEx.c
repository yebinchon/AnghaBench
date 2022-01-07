
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int TUBE ;


 int TubeSendEx2 (int *,void*,int ,void*,int,int ) ;

bool TubeSendEx(TUBE *t, void *data, UINT size, void *header, bool no_flush)
{
 return TubeSendEx2(t, data, size, header, no_flush, 0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int NET_BUFFER_LIST_STATUS ;
typedef int NET_BUFFER_LIST ;


 int NET_BUFFER_LIST_NEXT_NBL (int ) ;

void NeoNdisSetNetBufferListsStatus(NET_BUFFER_LIST *nbl, UINT status)
{
 if (nbl == ((void*)0))
 {
  return;
 }

 while (nbl != ((void*)0))
 {
  NET_BUFFER_LIST_STATUS(nbl) = status;

  nbl = NET_BUFFER_LIST_NEXT_NBL(nbl);
 }
}

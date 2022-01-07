
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ FF_SYNC_t ;
typedef int BYTE ;


 scalar_t__ CreateMutex (int *,int ,int *) ;
 int FALSE ;
 scalar_t__ INVALID_HANDLE_VALUE ;

int ff_cre_syncobj (
 BYTE vol,
 FF_SYNC_t* sobj
)
{

 *sobj = CreateMutex(((void*)0), FALSE, ((void*)0));
 return (int)(*sobj != INVALID_HANDLE_VALUE);
}

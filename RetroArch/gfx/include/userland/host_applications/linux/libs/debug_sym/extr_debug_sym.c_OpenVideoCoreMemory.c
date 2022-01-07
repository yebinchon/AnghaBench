
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VC_MEM_ACCESS_HANDLE_T ;


 int OpenVideoCoreMemoryFile (int *,int *) ;

int OpenVideoCoreMemory( VC_MEM_ACCESS_HANDLE_T *vcHandlePtr )
{
    return OpenVideoCoreMemoryFile( ((void*)0), vcHandlePtr );
}

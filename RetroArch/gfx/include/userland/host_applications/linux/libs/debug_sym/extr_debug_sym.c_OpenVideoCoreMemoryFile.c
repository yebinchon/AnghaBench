
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VC_MEM_ACCESS_HANDLE_T ;


 int OpenVideoCoreMemoryFileWithOffset (char const*,int *,int ) ;

int OpenVideoCoreMemoryFile( const char *filename, VC_MEM_ACCESS_HANDLE_T *vcHandlePtr )
{
    return OpenVideoCoreMemoryFileWithOffset( filename, vcHandlePtr, 0 );
}

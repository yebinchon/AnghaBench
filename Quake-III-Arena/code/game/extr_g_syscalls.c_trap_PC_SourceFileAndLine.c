
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_PC_SOURCE_FILE_AND_LINE ;
 int syscall (int ,int,char*,int*) ;

int trap_PC_SourceFileAndLine( int handle, char *filename, int *line ) {
 return syscall( BOTLIB_PC_SOURCE_FILE_AND_LINE, handle, filename, line );
}

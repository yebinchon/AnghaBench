
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EditFilename (char*,char*,int *,int) ;
 int FileSelector (char*,int ,int *,int ) ;
 int TRUE ;

__attribute__((used)) static int BasicUIGetDirectoryPath(char *directory)
{



 return EditFilename("Path", directory, ((void*)0), -1);

}

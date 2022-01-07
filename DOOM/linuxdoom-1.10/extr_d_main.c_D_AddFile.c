
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* malloc (scalar_t__) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;
 char** wadfiles ;

void D_AddFile (char *file)
{
    int numwadfiles;
    char *newfile;

    for (numwadfiles = 0 ; wadfiles[numwadfiles] ; numwadfiles++)
 ;

    newfile = malloc (strlen(file)+1);
    strcpy (newfile, file);

    wadfiles[numwadfiles] = newfile;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UWORD ;
typedef int UBYTE ;


 int FILENAME_MAX ;
 int StateSav_SaveUBYTE (int const*,scalar_t__) ;
 int StateSav_SaveUWORD (scalar_t__*,int) ;
 int * getcwd (char*,int) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ strncmp (char const*,char*,scalar_t__) ;

void StateSav_SaveFNAME(const char *filename)
{
 UWORD namelen;
 namelen = strlen(filename);

 StateSav_SaveUWORD(&namelen, 1);
 StateSav_SaveUBYTE((const UBYTE *) filename, namelen);
}

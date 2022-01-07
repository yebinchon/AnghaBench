
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UWORD ;
typedef int UBYTE ;


 size_t FILENAME_MAX ;
 int Log_print (char*,int) ;
 int StateSav_ReadUBYTE (int *,size_t) ;
 int StateSav_ReadUWORD (size_t*,int) ;

void StateSav_ReadFNAME(char *filename)
{
 UWORD namelen = 0;

 StateSav_ReadUWORD(&namelen, 1);
 if (namelen >= FILENAME_MAX) {
  Log_print("Filenames of %d characters not supported on this platform", (int) namelen);
  return;
 }
 StateSav_ReadUBYTE((UBYTE *) filename, namelen);
 filename[namelen] = 0;
}

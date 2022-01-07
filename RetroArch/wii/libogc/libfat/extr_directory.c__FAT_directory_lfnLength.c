
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char ABOVE_UCS_RANGE ;
 int ILLEGAL_LFN_CHARACTERS ;
 int MAX_LFN_LENGTH ;
 size_t NAME_MAX ;
 int mbsrtowcs (int *,char const**,int,int *) ;
 size_t strnlen (char const*,size_t) ;
 int * strpbrk (char const*,int ) ;

__attribute__((used)) static int _FAT_directory_lfnLength (const char* name) {
 unsigned int i;
 size_t nameLength;
 int ucsLength;
 const char* tempName = name;

 nameLength = strnlen(name, NAME_MAX);

 if ( nameLength >= NAME_MAX) {
  return -1;
 }

 if (strpbrk (name, ILLEGAL_LFN_CHARACTERS) != ((void*)0)) {
  return -1;
 }

 for (i = 0; i < nameLength; i++) {
  unsigned char ch = (unsigned char) name[i];
  if (ch < 0x20 || ch >= ABOVE_UCS_RANGE) {
   return -1;
  }
 }

 ucsLength = mbsrtowcs(((void*)0), &tempName, MAX_LFN_LENGTH, ((void*)0));
 if (ucsLength < 0 || ucsLength >= MAX_LFN_LENGTH) {
  return -1;
 }


 return ucsLength;
}

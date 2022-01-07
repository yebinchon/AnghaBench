
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UTF8 ;
typedef int Boolean ;


 int isLegalUTF8 (size_t const*,int) ;
 int* trailingBytesForUTF8 ;

Boolean isLegalUTF8Sequence(const UTF8 *source, const UTF8 *sourceEnd) {
    int length = trailingBytesForUTF8[*source]+1;
    if (source+length > sourceEnd) {
 return 0;
    }
    return isLegalUTF8(source, length);
}

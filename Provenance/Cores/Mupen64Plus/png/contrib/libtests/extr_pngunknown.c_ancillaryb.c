
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_byte ;


 int PNG_CHUNK_ANCILLARY (int ) ;
 int PNG_U32 (int const,int const,int const,int const) ;

__attribute__((used)) static int
ancillaryb(const png_byte *name)
{
   return PNG_CHUNK_ANCILLARY(PNG_U32(name[0], name[1], name[2], name[3]));
}

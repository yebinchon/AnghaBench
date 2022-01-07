
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PNG_CHUNK_ANCILLARY (int ) ;
 int PNG_U32 (char const,char const,char const,char const) ;

__attribute__((used)) static int
ancillary(const char *name)
{
   return PNG_CHUNK_ANCILLARY(PNG_U32(name[0], name[1], name[2], name[3]));
}

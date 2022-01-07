
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int msnprintf (char*,int,char*,unsigned char) ;

__attribute__((used)) static void auth_digest_md5_to_ascii(unsigned char *source,
                                     unsigned char *dest)
{
  int i;
  for(i = 0; i < 16; i++)
    msnprintf((char *) &dest[i * 2], 3, "%02x", source[i]);
}

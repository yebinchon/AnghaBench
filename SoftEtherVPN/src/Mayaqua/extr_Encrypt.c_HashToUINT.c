
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int UCHAR ;


 int Copy (int *,int *,int) ;
 int Endian32 (int ) ;
 int SHA1_SIZE ;
 int Sha1 (int *,void*,int ) ;

UINT HashToUINT(void *data, UINT size)
{
 UCHAR hash[SHA1_SIZE];
 UINT u;

 if (data == ((void*)0) && size != 0)
 {
  return 0;
 }

 Sha1(hash, data, size);

 Copy(&u, hash, sizeof(UINT));

 u = Endian32(u);

 return u;
}

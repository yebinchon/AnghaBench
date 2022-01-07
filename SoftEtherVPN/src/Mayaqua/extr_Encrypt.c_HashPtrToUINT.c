
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ret ;
typedef int p ;
typedef int UINT ;
typedef int UCHAR ;


 int Copy (int *,int *,int) ;
 int MD5_SIZE ;
 int Md5 (int *,void**,int) ;

UINT HashPtrToUINT(void *p)
{
 UCHAR hash_data[MD5_SIZE];
 UINT ret;

 if (p == ((void*)0))
 {
  return 0;
 }

 Md5(hash_data, &p, sizeof(p));

 Copy(&ret, hash_data, sizeof(ret));

 return ret;
}

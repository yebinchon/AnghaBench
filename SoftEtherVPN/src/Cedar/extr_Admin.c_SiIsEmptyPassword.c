
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UCHAR ;


 scalar_t__ Cmp (void*,int *,int) ;
 int SHA1_SIZE ;
 int Sha0 (int *,char*,int ) ;

bool SiIsEmptyPassword(void *hash_password)
{
 UCHAR hash[SHA1_SIZE];

 if (hash_password == ((void*)0))
 {
  return 0;
 }

 Sha0(hash, "", 0);

 if (Cmp(hash_password, hash, SHA1_SIZE) == 0)
 {
  return 1;
 }

 return 0;
}

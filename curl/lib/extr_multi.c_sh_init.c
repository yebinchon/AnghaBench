
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curl_hash {int dummy; } ;


 int Curl_hash_init (struct curl_hash*,int,int ,int ,int ) ;
 int fd_key_compare ;
 int hash_fd ;
 int sh_freeentry ;

__attribute__((used)) static int sh_init(struct curl_hash *hash, int hashsize)
{
  return Curl_hash_init(hash, hashsize, hash_fd, fd_key_compare,
                        sh_freeentry);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curl_hash {int dummy; } ;
struct Curl_sh_entry {int transfers; } ;
typedef int curl_socket_t ;


 int Curl_hash_add (struct curl_hash*,char*,int,struct Curl_sh_entry*) ;
 scalar_t__ Curl_hash_init (int *,int ,int ,int ,int ) ;
 int TRHASH_SIZE ;
 struct Curl_sh_entry* calloc (int,int) ;
 int free (struct Curl_sh_entry*) ;
 struct Curl_sh_entry* sh_getentry (struct curl_hash*,int ) ;
 int trhash ;
 int trhash_compare ;
 int trhash_dtor ;

__attribute__((used)) static struct Curl_sh_entry *sh_addentry(struct curl_hash *sh,
                                         curl_socket_t s)
{
  struct Curl_sh_entry *there = sh_getentry(sh, s);
  struct Curl_sh_entry *check;

  if(there) {

    return there;
  }


  check = calloc(1, sizeof(struct Curl_sh_entry));
  if(!check)
    return ((void*)0);

  if(Curl_hash_init(&check->transfers, TRHASH_SIZE, trhash,
                    trhash_compare, trhash_dtor)) {
    free(check);
    return ((void*)0);
  }


  if(!Curl_hash_add(sh, (char *)&s, sizeof(curl_socket_t), check)) {
    free(check);
    return ((void*)0);
  }

  return check;
}

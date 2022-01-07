
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int guchar ;
typedef int gsize ;
struct TYPE_7__ {int* str; int len; int allocated_len; } ;
typedef TYPE_1__ GString ;
typedef int GChecksum ;


 int G_CHECKSUM_SHA1 ;
 int TRUE ;
 int g_checksum_free (int *) ;
 int g_checksum_get_digest (int *,int*,int*) ;
 int * g_checksum_new (int ) ;
 int g_checksum_type_get_length (int ) ;
 int g_checksum_update (int *,int*,int) ;
 int g_return_val_if_fail (int,int) ;
 int g_string_free (TYPE_1__*,int ) ;
 TYPE_1__* g_string_new (int *) ;
 int g_string_set_size (TYPE_1__*,int ) ;
 int network_mysqld_proto_password_hash (TYPE_1__*,char const*,int) ;

int network_mysqld_proto_password_scramble(GString *response,
  const char *challenge, gsize challenge_len,
  const char *hashed_password, gsize hashed_password_len) {
 int i;
 GChecksum *cs;
 GString *step2;

 g_return_val_if_fail(((void*)0) != challenge, -1);
 g_return_val_if_fail(20 == challenge_len, -1);
 g_return_val_if_fail(((void*)0) != hashed_password, -1);
 g_return_val_if_fail(20 == hashed_password_len, -1);
 step2 = g_string_new(((void*)0));
 network_mysqld_proto_password_hash(step2, hashed_password, hashed_password_len);


 cs = g_checksum_new(G_CHECKSUM_SHA1);
 g_checksum_update(cs, (guchar *)challenge, challenge_len);
 g_checksum_update(cs, (guchar *)step2->str, step2->len);

 g_string_set_size(response, g_checksum_type_get_length(G_CHECKSUM_SHA1));
 response->len = response->allocated_len;
 g_checksum_get_digest(cs, (guchar *)response->str, &(response->len));

 g_checksum_free(cs);


 for (i = 0; i < 20; i++) {
  response->str[i] = (guchar)response->str[i] ^ (guchar)hashed_password[i];
 }

 g_string_free(step2, TRUE);

 return 0;
}

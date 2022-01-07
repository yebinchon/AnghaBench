
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int guchar ;
typedef int gsize ;
struct TYPE_4__ {int* str; int len; int allocated_len; } ;
typedef TYPE_1__ GString ;
typedef int GChecksum ;


 int FALSE ;
 int G_CHECKSUM_SHA1 ;
 int g_checksum_free (int *) ;
 int g_checksum_get_digest (int *,int*,int *) ;
 int * g_checksum_new (int ) ;
 int g_checksum_type_get_length (int ) ;
 int g_checksum_update (int *,int*,int) ;
 int g_return_val_if_fail (int,int ) ;
 int g_string_set_size (TYPE_1__*,int ) ;

int network_mysqld_proto_password_unscramble(
  GString *hashed_password,
  const char *challenge, gsize challenge_len,
  const char *response, gsize response_len,
  const char *double_hashed, gsize double_hashed_len) {
 int i;
 GChecksum *cs;

 g_return_val_if_fail(((void*)0) != response, FALSE);
 g_return_val_if_fail(20 == response_len, FALSE);
 g_return_val_if_fail(((void*)0) != challenge, FALSE);
 g_return_val_if_fail(20 == challenge_len, FALSE);
 g_return_val_if_fail(((void*)0) != double_hashed, FALSE);
 g_return_val_if_fail(20 == double_hashed_len, FALSE);
 cs = g_checksum_new(G_CHECKSUM_SHA1);
 g_checksum_update(cs, (guchar *)challenge, challenge_len);
 g_checksum_update(cs, (guchar *)double_hashed, double_hashed_len);

 g_string_set_size(hashed_password, g_checksum_type_get_length(G_CHECKSUM_SHA1));
 hashed_password->len = hashed_password->allocated_len;
 g_checksum_get_digest(cs, (guchar *)hashed_password->str, &(hashed_password->len));

 g_checksum_free(cs);


 for (i = 0; i < 20; i++) {
  hashed_password->str[i] = (guchar)response[i] ^ (guchar)hashed_password->str[i];
 }

 return 0;
}

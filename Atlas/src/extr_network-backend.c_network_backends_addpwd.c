
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t* pwd_table_index; int ** pwd_table; int raw_pwds; } ;
typedef TYPE_1__ network_backends_t ;
typedef size_t gint ;
typedef int gchar ;
typedef scalar_t__ gboolean ;
typedef int GString ;
typedef int GHashTable ;


 int ERR_PWD_DECRYPT ;
 int ERR_PWD_ENCRYPT ;
 int PWD_SUCCESS ;
 int copy_pwd ;
 int * decrypt (int *) ;
 int * encrypt (int *) ;
 int g_atomic_int_set (size_t*,int) ;
 int g_free (int *) ;
 int g_hash_table_foreach (int *,int ,int *) ;
 int g_hash_table_insert (int *,int ,int *) ;
 int g_hash_table_remove_all (int *) ;
 int g_ptr_array_add (int ,int ) ;
 int g_strdup (int *) ;
 int g_strdup_printf (char*,int *,int *) ;
 int * g_string_new (int *) ;
 int g_warning (char*,int *) ;
 int network_mysqld_proto_password_hash (int *,int *,int ) ;
 int strlen (int *) ;

int network_backends_addpwd(network_backends_t *bs, gchar *user, gchar *pwd, gboolean is_encrypt) {
 GString *hashed_password = g_string_new(((void*)0));
 if (is_encrypt) {
  gchar *decrypt_pwd = decrypt(pwd);
  if (decrypt_pwd == ((void*)0)) {
   g_warning("failed to decrypt %s\n", pwd);
   return ERR_PWD_DECRYPT;
  }
  network_mysqld_proto_password_hash(hashed_password, decrypt_pwd, strlen(decrypt_pwd));
  g_free(decrypt_pwd);
  g_ptr_array_add(bs->raw_pwds, g_strdup_printf("%s:%s", user, pwd));
 } else {
  gchar *encrypt_pwd = encrypt(pwd);
  if (encrypt_pwd == ((void*)0)) {
   g_warning("failed to encrypt %s\n", pwd);
   return ERR_PWD_ENCRYPT;
  }
  g_ptr_array_add(bs->raw_pwds, g_strdup_printf("%s:%s", user, encrypt_pwd));
  g_free(encrypt_pwd);
  network_mysqld_proto_password_hash(hashed_password, pwd, strlen(pwd));
 }


 gint index = *(bs->pwd_table_index);
 GHashTable *old_table = bs->pwd_table[index];
 GHashTable *new_table = bs->pwd_table[1-index];
 g_hash_table_remove_all(new_table);
 g_hash_table_foreach(old_table, copy_pwd, new_table);
 g_hash_table_insert(new_table, g_strdup(user), hashed_password);
 g_atomic_int_set(bs->pwd_table_index, 1-index);

 return PWD_SUCCESS;
}

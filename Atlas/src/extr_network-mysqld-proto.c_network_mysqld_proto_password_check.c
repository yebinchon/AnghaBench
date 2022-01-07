
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gsize ;
typedef int gboolean ;
typedef int GString ;


 int FALSE ;
 int S (int *) ;
 int TRUE ;
 int g_return_val_if_fail (int,int ) ;
 int g_string_free (int *,int ) ;
 int * g_string_new (int *) ;
 int network_mysqld_proto_password_hash (int *,int ) ;
 int network_mysqld_proto_password_unscramble (int *,char const*,int,char const*,int,char const*,int) ;
 int strleq (int ,char const*,int) ;

gboolean network_mysqld_proto_password_check(
  const char *challenge, gsize challenge_len,
  const char *response, gsize response_len,
  const char *double_hashed, gsize double_hashed_len) {

 GString *hashed_password, *step2;
 gboolean is_same;

 g_return_val_if_fail(((void*)0) != response, FALSE);
 g_return_val_if_fail(20 == response_len, FALSE);
 g_return_val_if_fail(((void*)0) != challenge, FALSE);
 g_return_val_if_fail(20 == challenge_len, FALSE);
 g_return_val_if_fail(((void*)0) != double_hashed, FALSE);
 g_return_val_if_fail(20 == double_hashed_len, FALSE);

 hashed_password = g_string_new(((void*)0));

 network_mysqld_proto_password_unscramble(hashed_password,
   challenge, challenge_len,
   response, response_len,
   double_hashed, double_hashed_len);


 step2 = g_string_new(((void*)0));
 network_mysqld_proto_password_hash(step2, S(hashed_password));


 is_same = strleq(S(step2), double_hashed, double_hashed_len);

 g_string_free(step2, TRUE);
 g_string_free(hashed_password, TRUE);

 return is_same;
}

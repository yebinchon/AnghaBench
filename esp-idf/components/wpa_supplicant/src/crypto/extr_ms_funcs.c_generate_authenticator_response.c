
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int generate_authenticator_response_pwhash (int *,int const*,int const*,int const*,size_t,int const*,int *) ;
 scalar_t__ nt_password_hash (int const*,size_t,int *) ;

int generate_authenticator_response(const u8 *password, size_t password_len,
    const u8 *peer_challenge,
    const u8 *auth_challenge,
    const u8 *username, size_t username_len,
    const u8 *nt_response, u8 *response)
{
 u8 password_hash[16];
 if (nt_password_hash(password, password_len, password_hash))
  return -1;
 return generate_authenticator_response_pwhash(
  password_hash, peer_challenge, auth_challenge,
  username, username_len, nt_response, response);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int urle_user_name ;
typedef int urle_login_token ;


 scalar_t__ rc_url_encode (char*,int,char const*) ;
 int snprintf (char*,size_t,char*,char*,char*,unsigned int) ;

int rc_url_post_playing(char* buffer, size_t size, const char* user_name, const char* login_token, unsigned gameid) {
  char urle_user_name[64];
  char urle_login_token[64];
  int written;

  if (rc_url_encode(urle_user_name, sizeof(urle_user_name), user_name) != 0) {
    return -1;
  }

  if (rc_url_encode(urle_login_token, sizeof(urle_login_token), login_token) != 0) {
    return -1;
  }

  written = snprintf(
    buffer,
    size,
    "http://retroachievements.org/dorequest.php?r=postactivity&u=%s&t=%s&a=3&m=%u",
    urle_user_name,
    urle_login_token,
    gameid
  );

  return (size_t)written >= size ? -1 : 0;
}

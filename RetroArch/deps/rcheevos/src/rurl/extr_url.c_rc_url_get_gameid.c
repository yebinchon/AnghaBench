
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int snprintf (char*,size_t,char*,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char) ;

int rc_url_get_gameid(char* buffer, size_t size, unsigned char hash[16]) {
  int written = snprintf(
    buffer,
    size,
    "http://retroachievements.org/dorequest.php?r=gameid&m=%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
    hash[ 0], hash[ 1], hash[ 2], hash[ 3], hash[ 4], hash[ 5], hash[ 6], hash[ 7],
    hash[ 8], hash[ 9], hash[10], hash[11],hash[12], hash[13], hash[14], hash[15]
  );

  return (size_t)written >= size ? -1 : 0;
}

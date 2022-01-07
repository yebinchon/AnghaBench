
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int snprintf (char*,size_t,char*,char const*) ;

int rc_url_get_badge_image(char* buffer, size_t size, const char* badge_name) {
  int written = snprintf(
    buffer,
    size,
    "http://i.retroachievements.org/Badge/%s",
    badge_name
  );

  return (size_t)written >= size ? -1 : 0;
}

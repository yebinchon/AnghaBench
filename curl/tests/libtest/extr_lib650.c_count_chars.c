
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static size_t count_chars(void *userp, const char *buf, size_t len)
{
  size_t *pcounter = (size_t *) userp;

  (void) buf;
  *pcounter += len;
  return len;
}

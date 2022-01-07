
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef TYPE_1__* gss_buffer_t ;
struct TYPE_3__ {int length; scalar_t__ value; } ;


 int printf (char*,...) ;

void
printgbuf(const char *str, gss_buffer_t buf)
{
 size_t i;
 size_t len = buf->length > 128 ? 128 : buf->length;

 printf("%s:   len = %d value = %p\n", str ? str : "buffer", (int)buf->length, buf->value);
 for (i = 0; i < len; i++) {
  const char *s = ((i + 1) % 8) ? " " : ((i + 1) % 16) ? "    " : "\n";
  printf("%02x%s", ((uint8_t *)buf->value)[i], s);
 }
 if (i % 16)
  printf("\n");
}

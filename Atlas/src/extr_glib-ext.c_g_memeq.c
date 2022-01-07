
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ gsize ;
typedef int gboolean ;


 int FALSE ;
 scalar_t__ memcmp (char const*,char const*,scalar_t__) ;

gboolean g_memeq(const char *a, gsize a_len, const char *b, gsize b_len) {
 if (a_len != b_len) return FALSE;

 return (0 == memcmp(a, b, b_len));
}

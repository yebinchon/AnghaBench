
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gsize ;
typedef int gboolean ;
typedef int GString ;


 int FALSE ;
 int S (int const*) ;
 int TRUE ;
 int g_free (char*) ;
 scalar_t__ g_string_equal (int const*,int const*) ;
 char* g_utf8_casefold (int ) ;
 int strlen (char*) ;
 int strleq (char*,int ,char*,int ) ;

gboolean g_string_equal_ci(const GString *a, const GString *b) {
 char *a_ci, *b_ci;
 gsize a_ci_len, b_ci_len;
 gboolean is_equal = FALSE;

 if (g_string_equal(a, b)) return TRUE;

 a_ci = g_utf8_casefold(S(a));
 a_ci_len = strlen(a_ci);

 b_ci = g_utf8_casefold(S(b));
 b_ci_len = strlen(b_ci);

 is_equal = strleq(a_ci, a_ci_len, b_ci, b_ci_len);

 g_free(a_ci);
 g_free(b_ci);

 return is_equal;
}

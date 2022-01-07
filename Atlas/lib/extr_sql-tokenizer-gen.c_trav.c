
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* gpointer ;
typedef int gint ;
typedef scalar_t__ gboolean ;


 scalar_t__ FALSE ;
 int GPOINTER_TO_INT (void*) ;
 int printf (char*,...) ;

gboolean trav(gpointer _a, gpointer _b, gpointer _udata) {
 gboolean *is_first = _udata;
 const char *key = _a;
 gint value = GPOINTER_TO_INT(_b);

 if (!*is_first) {
  printf(",");
 }
 printf("\n\t%d /* %s */", value, key);

 *is_first = FALSE;
 return FALSE;
}

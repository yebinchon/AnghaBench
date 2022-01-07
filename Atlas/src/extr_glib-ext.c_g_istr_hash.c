
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int guint32 ;
typedef int guint ;
typedef unsigned char* gconstpointer ;


 int g_ascii_toupper (unsigned char) ;

guint g_istr_hash(gconstpointer v) {

 const unsigned char *p = v;
 unsigned char c;
 guint32 h = 5381;

 while ((c = *p++)) {
  h = ((h << 5) + h) + g_ascii_toupper(c);
 }

 return h;
}

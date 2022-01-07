
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char gchar ;


 char* getenv (char const*) ;

const gchar *getenv_def(const gchar *key, const gchar *def) {
 const char *p;

 p = getenv(key);

 return p ? p : def;
}

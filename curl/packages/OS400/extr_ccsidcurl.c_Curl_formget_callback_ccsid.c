
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t (* append ) (int ,char const*,size_t) ;int arg; int ccsid; } ;
typedef TYPE_1__ cfcdata ;


 int ASCII_CCSID ;
 size_t MAX_CONV_EXPANSION ;
 int convert (char*,size_t,int ,char const*,size_t,int ) ;
 int free (char*) ;
 char* malloc (size_t) ;
 size_t stub1 (int ,char const*,size_t) ;
 size_t stub2 (int ,char*,int) ;

__attribute__((used)) static size_t
Curl_formget_callback_ccsid(void *arg, const char *buf, size_t len)

{
  cfcdata * p;
  char *b;
  int l;
  size_t ret;

  p = (cfcdata *) arg;

  if((long) len <= 0)
    return (*p->append)(p->arg, buf, len);

  b = malloc(MAX_CONV_EXPANSION * len);

  if(!b)
    return (size_t) -1;

  l = convert(b, MAX_CONV_EXPANSION * len, p->ccsid, buf, len, ASCII_CCSID);

  if(l < 0) {
    free(b);
    return (size_t) -1;
    }

  ret = (*p->append)(p->arg, b, l);
  free(b);
  return ret == l? len: -1;
}

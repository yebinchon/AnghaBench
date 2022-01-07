
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transfer {unsigned int num; } ;
typedef int curl_infotype ;
typedef int CURL ;
 int dump (char const*,unsigned int,unsigned char*,size_t,int) ;
 int fprintf (int ,char*,unsigned int,char*) ;
 int stderr ;

__attribute__((used)) static
int my_trace(CURL *handle, curl_infotype type,
             char *data, size_t size,
             void *userp)
{
  const char *text;
  struct transfer *t = (struct transfer *)userp;
  unsigned int num = t->num;
  (void)handle;

  switch(type) {
  case 128:
    fprintf(stderr, "== %u Info: %s", num, data);

  default:
    return 0;

  case 131:
    text = "=> Send header";
    break;
  case 133:
    text = "=> Send data";
    break;
  case 129:
    text = "=> Send SSL data";
    break;
  case 132:
    text = "<= Recv header";
    break;
  case 134:
    text = "<= Recv data";
    break;
  case 130:
    text = "<= Recv SSL data";
    break;
  }

  dump(text, num, (unsigned char *)data, size, 1);
  return 0;
}

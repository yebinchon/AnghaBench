
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int curl_infotype ;
typedef int CURL ;







 int TRUE ;
 int dump (char const*,int ,unsigned char*,size_t,int ) ;
 int fprintf (int ,char*,unsigned char*) ;
 int stderr ;

__attribute__((used)) static
int my_trace(CURL *handle, curl_infotype type,
             unsigned char *data, size_t size,
             void *userp)
{
  const char *text;

  (void)userp;
  (void)handle;

  switch(type) {
  case 128:
    fprintf(stderr, "== Info: %s", data);

  default:
    return 0;

  case 129:
    text = "=> Send header";
    break;
  case 131:
    text = "=> Send data";
    break;
  case 130:
    text = "<= Recv header";
    break;
  case 132:
    text = "<= Recv data";
    break;
  }

  dump(text, stderr, data, size, TRUE);
  return 0;
}

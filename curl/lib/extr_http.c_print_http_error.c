
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SingleRequest {char* p; char* httpcode; } ;
struct Curl_easy {struct SingleRequest req; } ;


 int failf (struct Curl_easy*,char*,char*) ;
 char* strchr (char*,char) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static void print_http_error(struct Curl_easy *data)
{
  struct SingleRequest *k = &data->req;
  char *beg = k->p;


  if(!strncmp(beg, "HTTP", 4)) {


    beg = strchr(beg, ' ');
    if(beg && *++beg) {


      char end_char = '\r';
      char *end = strchr(beg, end_char);
      if(!end) {

        end_char = '\n';
        end = strchr(beg, end_char);
      }

      if(end) {

        *end = '\0';
        failf(data, "The requested URL returned error: %s", beg);


        *end = end_char;
        return;
      }
    }
  }


  failf(data, "The requested URL returned error: %d", k->httpcode);
}

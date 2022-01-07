
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connectdata {struct Curl_easy* data; int * sock; } ;
struct Curl_easy {int dummy; } ;
typedef scalar_t__ ssize_t ;


 unsigned char CURL_IAC ;
 size_t FIRSTSOCKET ;
 int SOCKERRNO ;
 int failf (struct Curl_easy*,char*,int) ;
 int printoption (struct Curl_easy*,char*,int,int) ;
 scalar_t__ swrite (int ,unsigned char*,int) ;

__attribute__((used)) static void send_negotiation(struct connectdata *conn, int cmd, int option)
{
   unsigned char buf[3];
   ssize_t bytes_written;
   struct Curl_easy *data = conn->data;

   buf[0] = CURL_IAC;
   buf[1] = (unsigned char)cmd;
   buf[2] = (unsigned char)option;

   bytes_written = swrite(conn->sock[FIRSTSOCKET], buf, 3);
   if(bytes_written < 0) {
     int err = SOCKERRNO;
     failf(data,"Sending data failed (%d)",err);
   }

   printoption(conn->data, "SENT", cmd, option);
}

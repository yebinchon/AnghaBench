
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pingpong {struct connectdata* conn; } ;
struct connectdata {struct Curl_easy* data; } ;
struct TYPE_4__ {int httpcode; } ;
struct TYPE_3__ {char* buffer; } ;
struct Curl_easy {TYPE_2__ info; TYPE_1__ state; } ;
typedef int curl_socket_t ;
typedef int CURLcode ;


 int CURLE_OPERATION_TIMEDOUT ;
 int Curl_pp_readresp (int ,struct pingpong*,int*,size_t*) ;
 int Curl_sec_read_msg (struct connectdata*,char* const,int ) ;
 int FTP_STOP ;
 int PROT_CONFIDENTIAL ;
 int PROT_PRIVATE ;
 int PROT_SAFE ;
 int infof (struct Curl_easy*,char*) ;
 int state (struct connectdata*,int ) ;

__attribute__((used)) static CURLcode ftp_readresp(curl_socket_t sockfd,
                             struct pingpong *pp,
                             int *ftpcode,
                             size_t *size)
{
  struct connectdata *conn = pp->conn;
  struct Curl_easy *data = conn->data;



  int code;
  CURLcode result = Curl_pp_readresp(sockfd, pp, &code, size);
  data->info.httpcode = code;

  if(ftpcode)
    *ftpcode = code;

  if(421 == code) {







    infof(data, "We got a 421 - timeout!\n");
    state(conn, FTP_STOP);
    return CURLE_OPERATION_TIMEDOUT;
  }

  return result;
}

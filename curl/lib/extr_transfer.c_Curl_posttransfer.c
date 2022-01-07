
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int prev_signal; } ;
struct TYPE_3__ {int no_signal; } ;
struct Curl_easy {TYPE_2__ state; TYPE_1__ set; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int SIGPIPE ;
 int signal (int ,int ) ;

CURLcode Curl_posttransfer(struct Curl_easy *data)
{





  (void)data;


  return CURLE_OK;
}

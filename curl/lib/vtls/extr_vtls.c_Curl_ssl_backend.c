
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; } ;
struct TYPE_4__ {TYPE_1__ info; } ;


 scalar_t__ CURLSSLBACKEND_NONE ;
 TYPE_2__* Curl_ssl ;
 int multissl_init (int *) ;

int Curl_ssl_backend(void)
{




  return (int)CURLSSLBACKEND_NONE;

}

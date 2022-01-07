
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int timediff_t ;
struct curltime {int dummy; } ;
struct connectdata {int lastused; int data; } ;
struct TYPE_2__ {int maxage_conn; } ;
struct Curl_easy {TYPE_1__ set; } ;


 int Curl_timediff (struct curltime,int ) ;
 int FALSE ;
 int TRUE ;
 int infof (struct Curl_easy*,char*,int) ;

__attribute__((used)) static bool conn_maxage(struct Curl_easy *data,
                        struct connectdata *conn,
                        struct curltime now)
{
  if(!conn->data) {
    timediff_t idletime = Curl_timediff(now, conn->lastused);
    idletime /= 1000;

    if(idletime > data->set.maxage_conn) {
      infof(data, "Too old connection (%ld seconds), disconnect it\n",
            idletime);
      return TRUE;
    }
  }
  return FALSE;
}

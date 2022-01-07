
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct connectdata {int dummy; } ;
struct TYPE_6__ {TYPE_1__* handler; } ;
typedef TYPE_2__ contenc_writer ;
struct TYPE_5__ {int (* unencode_write ) (struct connectdata*,TYPE_2__*,char const*,size_t) ;} ;
typedef int CURLcode ;


 int CURLE_OK ;
 int stub1 (struct connectdata*,TYPE_2__*,char const*,size_t) ;

CURLcode Curl_unencode_write(struct connectdata *conn, contenc_writer *writer,
                             const char *buf, size_t nbytes)
{
  if(!nbytes)
    return CURLE_OK;
  return writer->handler->unencode_write(conn, writer, buf, nbytes);
}

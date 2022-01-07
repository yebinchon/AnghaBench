
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct connectdata {int dummy; } ;
struct TYPE_3__ {int downstream; } ;
typedef TYPE_1__ contenc_writer ;
typedef int CURLcode ;


 int Curl_unencode_write (struct connectdata*,int ,char const*,size_t) ;

__attribute__((used)) static CURLcode identity_unencode_write(struct connectdata *conn,
                                        contenc_writer *writer,
                                        const char *buf, size_t nbytes)
{
  return Curl_unencode_write(conn, writer->downstream, buf, nbytes);
}

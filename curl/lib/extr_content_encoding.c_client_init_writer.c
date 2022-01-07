
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct connectdata {int dummy; } ;
struct TYPE_3__ {scalar_t__ downstream; } ;
typedef TYPE_1__ contenc_writer ;
typedef int CURLcode ;


 int CURLE_OK ;
 int CURLE_WRITE_ERROR ;

__attribute__((used)) static CURLcode client_init_writer(struct connectdata *conn,
                                   contenc_writer *writer)
{
  (void) conn;
  return writer->downstream? CURLE_WRITE_ERROR: CURLE_OK;
}

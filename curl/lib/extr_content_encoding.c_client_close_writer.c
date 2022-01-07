
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connectdata {int dummy; } ;
typedef int contenc_writer ;



__attribute__((used)) static void client_close_writer(struct connectdata *conn,
                                contenc_writer *writer)
{
  (void) conn;
  (void) writer;
}

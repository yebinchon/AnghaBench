
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int rdbuf_pos; int rdbuf; } ;


 int TOKEN_RESPONSE ;
 int strlen (int ) ;
 int util_memsearch (int ,int ,int ,int ) ;

int connection_upload_wget(struct connection *conn)
{
    int offset = util_memsearch(conn->rdbuf, conn->rdbuf_pos, TOKEN_RESPONSE, strlen(TOKEN_RESPONSE));

    if (offset == -1)
        return 0;

    return offset;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int rdbuf_pos; int rdbuf; } ;


 char* TOKEN_RESPONSE ;
 int strlen (char*) ;
 int util_memsearch (int ,int,char*,int) ;

int connection_upload_tftp(struct connection *conn)
{
    int offset = util_memsearch(conn->rdbuf, conn->rdbuf_pos, TOKEN_RESPONSE, strlen(TOKEN_RESPONSE));

    if (offset == -1)
        return 0;

    if (util_memsearch(conn->rdbuf, offset, "Permission denied", 17) != -1)
        return offset * -1;

    if (util_memsearch(conn->rdbuf, offset, "timeout", 7) != -1)
        return offset * -1;

    if (util_memsearch(conn->rdbuf, offset, "illegal option", 14) != -1)
        return offset * -1;

    return offset;
}

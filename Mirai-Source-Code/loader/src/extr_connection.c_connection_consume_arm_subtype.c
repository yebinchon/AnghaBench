
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int arch; } ;
struct connection {int rdbuf_pos; int fd; TYPE_1__ info; int rdbuf; } ;


 char* TOKEN_RESPONSE ;
 int printf (char*,int) ;
 int strcpy (int ,char*) ;
 int strlen (char*) ;
 int util_memsearch (int ,int,char*,int) ;

int connection_consume_arm_subtype(struct connection *conn)
{
    int offset = util_memsearch(conn->rdbuf, conn->rdbuf_pos, TOKEN_RESPONSE, strlen(TOKEN_RESPONSE));

    if (offset == -1)
        return 0;

    if (util_memsearch(conn->rdbuf, offset, "ARMv7", 5) != -1 || util_memsearch(conn->rdbuf, offset, "ARMv6", 5) != -1)
    {



        strcpy(conn->info.arch, "arm7");
    }

    return offset;
}

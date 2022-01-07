
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int rdbuf_pos; int rdbuf; } ;


 int TOKEN_RESPONSE ;
 int strlen (int ) ;
 int util_memsearch (int ,int ,int ,int ) ;

int connection_consume_verify_login(struct connection *conn)
{
    int prompt_ending = util_memsearch(conn->rdbuf, conn->rdbuf_pos, TOKEN_RESPONSE, strlen(TOKEN_RESPONSE));

    if (prompt_ending == -1)
        return 0;
    else
        return prompt_ending;
}

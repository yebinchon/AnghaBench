
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cmd; } ;
typedef TYPE_1__ Conn ;


 int CMD_BURY ;
 int CMD_DELETE ;
 int CMD_IGNORE ;
 int CMD_KICK ;
 int CMD_KICKJOB ;
 int CMD_LIST_TUBES ;
 int CMD_LIST_TUBES_WATCHED ;
 int CMD_LIST_TUBE_USED ;
 int CMD_PAUSE_TUBE ;
 int CMD_PEEKJOB ;
 int CMD_PEEK_BURIED ;
 int CMD_PEEK_DELAYED ;
 int CMD_PEEK_READY ;
 int CMD_PUT ;
 int CMD_QUIT ;
 int CMD_RELEASE ;
 int CMD_RESERVE ;
 int CMD_RESERVE_JOB ;
 int CMD_RESERVE_TIMEOUT ;
 int CMD_STATS ;
 int CMD_STATSJOB ;
 int CMD_STATS_TUBE ;
 int CMD_TOUCH ;
 int CMD_USE ;
 int CMD_WATCH ;
 int OP_BURY ;
 int OP_DELETE ;
 int OP_IGNORE ;
 int OP_KICK ;
 int OP_KICKJOB ;
 int OP_LIST_TUBES ;
 int OP_LIST_TUBES_WATCHED ;
 int OP_LIST_TUBE_USED ;
 int OP_PAUSE_TUBE ;
 int OP_PEEKJOB ;
 int OP_PEEK_BURIED ;
 int OP_PEEK_DELAYED ;
 int OP_PEEK_READY ;
 int OP_PUT ;
 int OP_QUIT ;
 int OP_RELEASE ;
 int OP_RESERVE ;
 int OP_RESERVE_JOB ;
 int OP_RESERVE_TIMEOUT ;
 int OP_STATS ;
 int OP_STATSJOB ;
 int OP_STATS_TUBE ;
 int OP_TOUCH ;
 int OP_UNKNOWN ;
 int OP_USE ;
 int OP_WATCH ;
 int TEST_CMD (int ,int ,int ) ;

__attribute__((used)) static int
which_cmd(Conn *c)
{

    if (strncmp((c->cmd), (CMD_PUT), CONSTSTRLEN(CMD_PUT)) == 0) return (OP_PUT);;
    if (strncmp((c->cmd), (CMD_PEEKJOB), CONSTSTRLEN(CMD_PEEKJOB)) == 0) return (OP_PEEKJOB);;
    if (strncmp((c->cmd), (CMD_PEEK_READY), CONSTSTRLEN(CMD_PEEK_READY)) == 0) return (OP_PEEK_READY);;
    if (strncmp((c->cmd), (CMD_PEEK_DELAYED), CONSTSTRLEN(CMD_PEEK_DELAYED)) == 0) return (OP_PEEK_DELAYED);;
    if (strncmp((c->cmd), (CMD_PEEK_BURIED), CONSTSTRLEN(CMD_PEEK_BURIED)) == 0) return (OP_PEEK_BURIED);;
    if (strncmp((c->cmd), (CMD_RESERVE_TIMEOUT), CONSTSTRLEN(CMD_RESERVE_TIMEOUT)) == 0) return (OP_RESERVE_TIMEOUT);;
    if (strncmp((c->cmd), (CMD_RESERVE_JOB), CONSTSTRLEN(CMD_RESERVE_JOB)) == 0) return (OP_RESERVE_JOB);;
    if (strncmp((c->cmd), (CMD_RESERVE), CONSTSTRLEN(CMD_RESERVE)) == 0) return (OP_RESERVE);;
    if (strncmp((c->cmd), (CMD_DELETE), CONSTSTRLEN(CMD_DELETE)) == 0) return (OP_DELETE);;
    if (strncmp((c->cmd), (CMD_RELEASE), CONSTSTRLEN(CMD_RELEASE)) == 0) return (OP_RELEASE);;
    if (strncmp((c->cmd), (CMD_BURY), CONSTSTRLEN(CMD_BURY)) == 0) return (OP_BURY);;
    if (strncmp((c->cmd), (CMD_KICK), CONSTSTRLEN(CMD_KICK)) == 0) return (OP_KICK);;
    if (strncmp((c->cmd), (CMD_KICKJOB), CONSTSTRLEN(CMD_KICKJOB)) == 0) return (OP_KICKJOB);;
    if (strncmp((c->cmd), (CMD_TOUCH), CONSTSTRLEN(CMD_TOUCH)) == 0) return (OP_TOUCH);;
    if (strncmp((c->cmd), (CMD_STATSJOB), CONSTSTRLEN(CMD_STATSJOB)) == 0) return (OP_STATSJOB);;
    if (strncmp((c->cmd), (CMD_STATS_TUBE), CONSTSTRLEN(CMD_STATS_TUBE)) == 0) return (OP_STATS_TUBE);;
    if (strncmp((c->cmd), (CMD_STATS), CONSTSTRLEN(CMD_STATS)) == 0) return (OP_STATS);;
    if (strncmp((c->cmd), (CMD_USE), CONSTSTRLEN(CMD_USE)) == 0) return (OP_USE);;
    if (strncmp((c->cmd), (CMD_WATCH), CONSTSTRLEN(CMD_WATCH)) == 0) return (OP_WATCH);;
    if (strncmp((c->cmd), (CMD_IGNORE), CONSTSTRLEN(CMD_IGNORE)) == 0) return (OP_IGNORE);;
    if (strncmp((c->cmd), (CMD_LIST_TUBES_WATCHED), CONSTSTRLEN(CMD_LIST_TUBES_WATCHED)) == 0) return (OP_LIST_TUBES_WATCHED);;
    if (strncmp((c->cmd), (CMD_LIST_TUBE_USED), CONSTSTRLEN(CMD_LIST_TUBE_USED)) == 0) return (OP_LIST_TUBE_USED);;
    if (strncmp((c->cmd), (CMD_LIST_TUBES), CONSTSTRLEN(CMD_LIST_TUBES)) == 0) return (OP_LIST_TUBES);;
    if (strncmp((c->cmd), (CMD_QUIT), CONSTSTRLEN(CMD_QUIT)) == 0) return (OP_QUIT);;
    if (strncmp((c->cmd), (CMD_PAUSE_TUBE), CONSTSTRLEN(CMD_PAUSE_TUBE)) == 0) return (OP_PAUSE_TUBE);;
    return OP_UNKNOWN;
}

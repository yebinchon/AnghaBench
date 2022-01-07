
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int msgid; } ;
struct TYPE_7__ {TYPE_1__ header; } ;
struct TYPE_8__ {TYPE_2__ msg; } ;
struct TYPE_9__ {TYPE_3__ u; } ;
typedef TYPE_4__ MMAL_DBG_ENTRY_T ;


 char* mmal_msgname (int) ;
 int snprintf (char*,size_t,char*,int,char*) ;

__attribute__((used)) static void on_msg(MMAL_DBG_ENTRY_T *entry,
                   char *buf,
                   size_t buflen)
{
   uint32_t id = entry->u.msg.header.msgid;
   snprintf(buf,buflen,"msgid %d (%s)", id, mmal_msgname(id));
}

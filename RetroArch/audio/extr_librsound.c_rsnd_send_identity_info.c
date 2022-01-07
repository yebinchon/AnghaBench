
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
struct TYPE_4__ {int ctl_socket; } ;
struct TYPE_5__ {char* identity; TYPE_1__ conn; } ;
typedef TYPE_2__ rsound_t ;


 int RSD_PROTO_MAXSIZE ;
 scalar_t__ rsnd_send_chunk (int ,char*,scalar_t__,int ) ;
 int snprintf (char*,int,char*,...) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int rsnd_send_identity_info(rsound_t *rd)
{



   char tmpbuf[256];
   char sendbuf[256];

   snprintf(tmpbuf, 256 - 1, " IDENTITY %s", rd->identity);
   tmpbuf[256 - 1] = '\0';
   snprintf(sendbuf, 256 - 1, "RSD%5d%s", (int)strlen(tmpbuf), tmpbuf);
   sendbuf[256 - 1] = '\0';

   if ( rsnd_send_chunk(rd->conn.ctl_socket, sendbuf, strlen(sendbuf), 0) != (ssize_t)strlen(sendbuf) )
      return -1;

   return 0;
}

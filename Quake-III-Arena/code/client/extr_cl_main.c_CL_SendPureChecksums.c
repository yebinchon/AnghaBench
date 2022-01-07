
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int cMsg ;
struct TYPE_2__ {int serverId; } ;


 int CL_AddReliableCommand (char*) ;
 int Com_sprintf (char*,int,char*) ;
 char* FS_ReferencedPakPureChecksums () ;
 int MAX_INFO_VALUE ;
 int Q_strcat (char*,int,char const*) ;
 TYPE_1__ cl ;
 char const* va (char*,int ) ;

void CL_SendPureChecksums( void ) {
 const char *pChecksums;
 char cMsg[MAX_INFO_VALUE];
 int i;


 pChecksums = FS_ReferencedPakPureChecksums();



 Com_sprintf(cMsg, sizeof(cMsg), "Yf ");
 Q_strcat(cMsg, sizeof(cMsg), va("%d ", cl.serverId) );
 Q_strcat(cMsg, sizeof(cMsg), pChecksums);
 for (i = 0; i < 2; i++) {
  cMsg[i] += 10;
 }
 CL_AddReliableCommand( cMsg );
}

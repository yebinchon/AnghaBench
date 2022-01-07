
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Cmd_Args () ;
 int Q_strncpyz (char*,int ,int) ;

void Cmd_ArgsBuffer( char *buffer, int bufferLength ) {
 Q_strncpyz( buffer, Cmd_Args(), bufferLength );
}

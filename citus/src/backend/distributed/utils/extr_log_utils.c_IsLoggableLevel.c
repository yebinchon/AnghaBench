
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int client_min_messages ;
 int log_min_messages ;

bool
IsLoggableLevel(int logLevel)
{
 return log_min_messages <= logLevel || client_min_messages <= logLevel;
}

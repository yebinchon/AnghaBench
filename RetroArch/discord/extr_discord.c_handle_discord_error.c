
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RARCH_LOG (char*,int,char const*) ;

__attribute__((used)) static void handle_discord_error(int errcode, const char* message)
{
   RARCH_LOG("[discord] error (%d: %s)\n", errcode, message);
}

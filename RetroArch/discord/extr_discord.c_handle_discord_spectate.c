
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RARCH_LOG (char*,char const*) ;

__attribute__((used)) static void handle_discord_spectate(const char* secret)
{
   RARCH_LOG("[discord] spectate (%s)\n", secret);
}

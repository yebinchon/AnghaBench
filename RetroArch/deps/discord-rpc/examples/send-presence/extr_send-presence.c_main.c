
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Discord_Shutdown () ;
 int discordInit () ;
 int gameLoop () ;

int main(int argc, char* argv[])
{
    discordInit();

    gameLoop();

    Discord_Shutdown();
    return 0;
}

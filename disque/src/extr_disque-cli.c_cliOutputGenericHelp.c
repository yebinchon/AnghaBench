
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* sds ;


 char* cliVersion () ;
 int printf (char*,char*) ;
 int sdsfree (char*) ;

__attribute__((used)) static void cliOutputGenericHelp(void) {
    sds version = cliVersion();
    printf(
        "disque %s\r\n"
        "Type: \"help @<group>\" to get a list of commands in <group>\r\n"
        "      \"help <command>\" for help on <command>\r\n"
        "      \"help <tab>\" to get a list of possible help topics\r\n"
        "      \"quit\" to exit\r\n",
        version
    );
    sdsfree(version);
}

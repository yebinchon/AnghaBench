
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int stdout ;

__attribute__((used)) static void ShowCommands()
{
    fprintf(stdout, "\nCommands:\n");
    fprintf(stdout, " [h]elp    Show this message\n");
    fprintf(stdout, " [q]uit    Exit HandBrakeCLI\n");
    fprintf(stdout, " [p]ause   Pause encoding\n");
    fprintf(stdout, " [r]esume  Resume encoding\n");
}

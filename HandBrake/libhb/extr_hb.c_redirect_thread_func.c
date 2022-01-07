
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int _file; } ;
typedef int FILE ;


 int dup2 (int,int) ;
 int * fdopen (int,char*) ;
 int * fgets (char*,int,int *) ;
 int hb_log_callback (char*) ;
 scalar_t__ pipe (int*) ;
 TYPE_1__* stderr ;

__attribute__((used)) static void redirect_thread_func(void * _data)
{
    int pfd[2];
    if (pipe(pfd))
       return;




    dup2(pfd[1], 2);

    FILE * log_f = fdopen(pfd[0], "rb");

    char line_buffer[500];
    while(fgets(line_buffer, 500, log_f) != ((void*)0))
    {
        hb_log_callback(line_buffer);
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ucontext_t ;
struct TYPE_2__ {char* logfile; } ;


 int O_APPEND ;
 int O_CREAT ;
 int O_WRONLY ;
 int STDOUT_FILENO ;
 int backtrace (void**,int) ;
 int backtrace_symbols_fd (void**,int,int) ;
 int close (int) ;
 int * getMcontextEip (int *) ;
 int open (char*,int,int) ;
 TYPE_1__ server ;

void logStackTrace(ucontext_t *uc) {
    void *trace[100];
    int trace_size = 0, fd;
    int log_to_stdout = server.logfile[0] == '\0';


    fd = log_to_stdout ?
        STDOUT_FILENO :
        open(server.logfile, O_APPEND|O_CREAT|O_WRONLY, 0644);
    if (fd == -1) return;


    trace_size = backtrace(trace, 100);


    if (getMcontextEip(uc) != ((void*)0))
        trace[1] = getMcontextEip(uc);


    backtrace_symbols_fd(trace, trace_size, fd);


    if (!log_to_stdout) close(fd);
}

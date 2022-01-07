
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_id_t ;
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
typedef int name ;


 int SIGINT ;
 scalar_t__ TRUE ;
 scalar_t__ affinity ;
 char* basename (char*) ;
 int calibrate_client_work () ;
 int client ;
 int fflush (int ) ;
 int getpid () ;
 int gettimeofday (struct timeval*,int *) ;
 scalar_t__ malloc (int) ;
 int num_clients ;
 int num_msgs ;
 int num_servers ;
 int parse_args (int,char**) ;
 int printf (char*,double,...) ;
 int record_perf_data (char*,char*,double,char*,int ) ;
 scalar_t__ save_perfdata ;
 int server ;
 char** server_port_name ;
 int signal (int ,int ) ;
 int signal_handler ;
 int snprintf (char*,int,char*,char*) ;
 int sprintf (char*,char*,int,int) ;
 int stderr ;
 int stdout ;
 int thread_join (int *) ;
 int thread_setup (int ) ;
 int thread_spawn (int *,int ,void*) ;
 scalar_t__ verbose ;
 int wait_for_servers () ;

int main(int argc, char *argv[])
{
 int i;
 int j;
 thread_id_t *client_id;
 thread_id_t *server_id;

 signal(SIGINT, signal_handler);
 parse_args(argc, argv);

 calibrate_client_work();





 if (affinity)
  thread_setup(0);

 server_id = (thread_id_t *) malloc(num_servers * sizeof(thread_id_t));
 server_port_name = (char **) malloc(num_servers * sizeof(char *));
 if (verbose)
  printf("creating %d servers\n", num_servers);
 for (i = 0; i < num_servers; i++) {
  server_port_name[i] = (char *) malloc(sizeof("PORT.pppppp.xx"));

  sprintf(server_port_name[i], "PORT.%06d.%02d", getpid(), i);
  thread_spawn(&server_id[i], server, (void *) (long) i);
 }

 int totalclients = num_servers * num_clients;
 int totalmsg = num_msgs * totalclients;
 struct timeval starttv, endtv, deltatv;





 wait_for_servers();

 printf("%d server%s, %d client%s per server (%d total) %u messages...",
   num_servers, (num_servers > 1)? "s" : "",
   num_clients, (num_clients > 1)? "s" : "",
   totalclients,
   totalmsg);
 fflush(stdout);




 gettimeofday(&starttv, ((void*)0));
 gettimeofday(&starttv, ((void*)0));

 client_id = (thread_id_t *) malloc(totalclients * sizeof(thread_id_t));
 if (verbose)
  printf("creating %d clients\n", totalclients);
 for (i = 0; i < num_servers; i++) {
  for (j = 0; j < num_clients; j++) {
   thread_spawn(
    &client_id[(i*num_clients) + j],
    client,
    (void *) (long) i);
  }
 }


 for (i = 0; i < num_servers; i++) {
  thread_join(&server_id[i]);
 }

 gettimeofday(&endtv, ((void*)0));

 for (i = 0; i < totalclients; i++) {
  thread_join(&client_id[i]);
 }


 deltatv.tv_sec = endtv.tv_sec - starttv.tv_sec;
 deltatv.tv_usec = endtv.tv_usec - starttv.tv_usec;
 if (endtv.tv_usec < starttv.tv_usec) {
  deltatv.tv_sec--;
  deltatv.tv_usec += 1000000;
 }

 double dsecs = (double) deltatv.tv_sec +
  1.0E-6 * (double) deltatv.tv_usec;

 double time_in_sec = (double)deltatv.tv_sec + (double)deltatv.tv_usec/1000.0;
 double throughput_msg_p_sec = (double) totalmsg/dsecs;
 double avg_msg_latency = dsecs*1.0E6 / (double)totalmsg;

 printf(" in %ld.%03u seconds\n",
        (long)deltatv.tv_sec, deltatv.tv_usec/1000);
 printf("  throughput in messages/sec:     %g\n",
   (double)totalmsg / dsecs);
 printf("  average message latency (usec): %2.3g\n",
   dsecs * 1.0E6 / (double) totalmsg);

 if (save_perfdata == TRUE) {
  char name[256];
  snprintf(name, sizeof(name), "%s_avg_msg_latency", basename(argv[0]));
  record_perf_data(name, "usec", avg_msg_latency, "Message latency measured in microseconds. Lower is better", stderr);
 }
 return (0);

}

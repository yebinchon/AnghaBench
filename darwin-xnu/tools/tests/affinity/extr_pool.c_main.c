
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int setnum; int thread; TYPE_4__* stage; } ;
typedef TYPE_2__ worker_info_t ;
struct TYPE_8__ {int* data; int isize; scalar_t__ tag; } ;
typedef TYPE_3__ work_t ;
struct TYPE_6__ {int queue; scalar_t__ waiters; int cnd; int mtx; } ;
struct TYPE_9__ {int stagenum; char* name; int work_todo; TYPE_1__ bufq; TYPE_1__* output; TYPE_1__* input; int * fn; } ;
typedef TYPE_4__ stage_info_t ;
typedef int kern_return_t ;


 int DBG (char*,...) ;
 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_TAIL (int *,TYPE_3__*,int ) ;
 int TRUE ;
 int WORKERS_MAX ;
 int affinity ;
 void* atoi (char*) ;
 int barrier ;
 int * consumer_fnp ;
 int err (int,char*,int,int) ;
 int funnel ;
 int getopt (int,char**,char*) ;
 int halting ;
 int iterations ;
 int link ;
 unsigned long long mach_absolute_time () ;
 scalar_t__ malloc (int) ;
 int manager_fn ;
 int mutter (char*,int,...) ;
 char* optarg ;
 scalar_t__ optind ;
 int printf (char*,int,int) ;
 int * producer_fnp ;
 int pthread_cond_init (int *,int *) ;
 int pthread_create (int *,int *,int *,void*) ;
 int pthread_join (int ,void**) ;
 int pthread_mutex_init (int *,int *) ;
 int reader_writer_fn ;
 int s_if_plural (int) ;
 int threads ;
 unsigned long long timer ;
 int usage () ;
 void* verbosity ;

int
main(int argc, char *argv[])
{
 int i;
 int j;
 int k;
 int pages = 256;
 int buffers = 2;
 int producers = 2;
 int consumers = 2;
 int stages = 2;
 int *status;
 stage_info_t *stage_info;
 stage_info_t *sp;
 worker_info_t *worker_info;
 worker_info_t *wp;
 kern_return_t ret;
 int c;


 while ((c = getopt (argc, argv, "ab:i:p:s:twv:")) != -1) {
  switch (c) {
  case 'a':
   affinity = !affinity;
   break;
  case 'b':
   buffers = atoi(optarg);
   break;
  case 'i':
   iterations = atoi(optarg);
   break;
  case 'p':
   pages = atoi(optarg);
   break;
  case 's':
   stages = atoi(optarg);
   if (stages >= WORKERS_MAX)
    usage();
   break;
  case 't':
   halting = TRUE;
   break;
  case 'w':
   consumer_fnp = &reader_writer_fn;
   break;
  case 'v':
   verbosity = atoi(optarg);
   break;
  case 'h':
  case '?':
  default:
   usage();
  }
 }
 argc -= optind; argv += optind;
 if (argc > 0)
  producers = atoi(*argv);
 argc--; argv++;
 if (argc > 0)
  consumers = atoi(*argv);

 pthread_mutex_init(&funnel, ((void*)0));
 pthread_cond_init(&barrier, ((void*)0));




 threads = consumers * (stages - 1) + producers;
 mutter("Launching %d producer%s with %d stage%s of %d consumer%s\n"
  "  with %saffinity, consumer reads%s data\n",
  producers, s_if_plural(producers),
  stages - 1, s_if_plural(stages - 1),
  consumers, s_if_plural(consumers),
  affinity? "": "no ",
  (consumer_fnp == &reader_writer_fn)? " and writes" : "");
 if (pages < 256)
  mutter("  %dkB bytes per buffer, ", pages * 4);
 else
  mutter("  %dMB bytes per buffer, ", pages / 256);
 mutter("%d buffer%s per producer ",
  buffers, s_if_plural(buffers));
 if (buffers * pages < 256)
  mutter("(total %dkB)\n", buffers * pages * 4);
 else
  mutter("(total %dMB)\n", buffers * pages / 256);
 mutter("  processing %d buffer%s...\n",
  iterations, s_if_plural(iterations));

 stage_info = (stage_info_t *) malloc(stages * sizeof(stage_info_t));
 worker_info = (worker_info_t *) malloc(threads * sizeof(worker_info_t));


 for (i = 0; i < stages; i++) {
  sp = &stage_info[i];
  sp->stagenum = i;
  pthread_mutex_init(&sp->bufq.mtx, ((void*)0));
  pthread_cond_init(&sp->bufq.cnd, ((void*)0));
  TAILQ_INIT(&sp->bufq.queue);
  sp->bufq.waiters = 0;
  if (i == 0) {
   sp->fn = producer_fnp;
   sp->name = "producer";
  } else {
   sp->fn = consumer_fnp;
   sp->name = "consumer";
  }
  sp->input = &sp->bufq;
  sp->output = &stage_info[(i + 1) % stages].bufq;
  stage_info[i].work_todo = iterations;
 }


 for (i = 0; i < producers; i++) {
  work_t *work_array;
  int *data;
  int isize;

  isize = pages * 4096 / sizeof(int);
  data = (int *) malloc(buffers * pages * 4096);


  work_array = (work_t *) malloc(buffers * sizeof(work_t));
  for (j = 0; j < buffers; j++) {
   work_array[j].data = data + (isize * j);
   work_array[j].isize = isize;
   work_array[j].tag = 0;
   TAILQ_INSERT_TAIL(&stage_info[0].bufq.queue, &work_array[j], link);
   DBG("  empty work item %p for data %p\n",
    &work_array[j], work_array[j].data);
  }
  wp = &worker_info[i];
  wp->setnum = i + 1;
  wp->stage = &stage_info[0];
  if (ret = pthread_create(&wp->thread,
      ((void*)0),
      &manager_fn,
      (void *) wp))
   err(1, "pthread_create %d,%d", 0, i);
 }


 for (i = 1; i < stages; i++) {
  for (j = 0; j < consumers; j++) {
   wp = &worker_info[producers + (consumers*(i-1)) + j];
   wp->setnum = j + 1;
   wp->stage = &stage_info[i];
   if (ret = pthread_create(&wp->thread,
      ((void*)0),
      &manager_fn,
      (void *) wp))
    err(1, "pthread_create %d,%d", i, j);
  }
 }




 for (k = 0; k < threads; k++) {
  int i;
  int j;

  wp = &worker_info[k];
  if (k < producers) {
   i = 0;
   j = k;
  } else {
   i = (k - producers) / consumers;
   j = (k - producers) % consumers;
  }
  if(ret = pthread_join(wp->thread, (void **)&status))
      err(1, "pthread_join %d,%d", i, j);
  DBG("Thread %d,%d status %d\n", i, j, status);
 }




 timer = mach_absolute_time() - timer;
 timer = timer / 1000000ULL;
 printf("%d.%03d seconds elapsed.\n",
  (int) (timer/1000ULL), (int) (timer % 1000ULL));

 return 0;
}

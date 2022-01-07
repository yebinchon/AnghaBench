
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int* data; } ;
typedef TYPE_2__ work_t ;
struct TYPE_6__ {int queue; int waiters; int cnd; int mtx; } ;
struct TYPE_8__ {int stagenum; char* name; int thread; TYPE_1__ bufq; TYPE_1__* output; TYPE_1__* input; int * fn; TYPE_4__* set; } ;
typedef TYPE_3__ stage_info_t ;
struct TYPE_9__ {int setnum; int isize; int* data; TYPE_3__** stage; } ;
typedef TYPE_4__ line_info_t ;
typedef int kern_return_t ;


 int DBG (char*,...) ;
 int FALSE ;
 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_TAIL (int *,TYPE_2__*,int ) ;
 void* TRUE ;
 int WORKERS_MAX ;
 int affinity ;
 void* atoi (char*) ;
 int auto_config (int,int*,int*) ;
 int barrier ;
 void* cache_config ;
 int * consumer_fnp ;
 int err (int,char*,int,int) ;
 int funnel ;
 int getopt (int,char**,char*) ;
 void* halting ;
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
 int pages = 256;
 int buffers = 2;
 int sets = 2;
 int stages = 2;
 int *status;
 line_info_t *line_info;
 line_info_t *lp;
 stage_info_t *stage_info;
 stage_info_t *sp;
 kern_return_t ret;
 int c;


 while ((c = getopt (argc, argv, "ab:chi:p:s:twv:")) != -1) {
  switch (c) {
  case 'a':
   affinity = !affinity;
   break;
  case 'b':
   buffers = atoi(optarg);
   break;
  case 'c':
   cache_config = TRUE;
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
  case '?':
  case 'h':
  default:
   usage();
  }
 }
 argc -= optind; argv += optind;
 if (argc > 0)
  sets = atoi(*argv);

 if (cache_config)
  auto_config(pages, &buffers, &sets);

 pthread_mutex_init(&funnel, ((void*)0));
 pthread_cond_init(&barrier, ((void*)0));




 threads = sets * stages;
 mutter("Launching %d set%s of %d threads with %saffinity, "
   "consumer reads%s data\n",
  sets, s_if_plural(sets), stages, affinity? "": "no ",
  (consumer_fnp == &reader_writer_fn)? " and writes" : "");
 if (pages < 256)
  mutter("  %dkB bytes per buffer, ", pages * 4);
 else
  mutter("  %dMB bytes per buffer, ", pages / 256);
 mutter("%d buffer%s per set ",
  buffers, s_if_plural(buffers));
 if (buffers * pages < 256)
  mutter("(total %dkB)\n", buffers * pages * 4);
 else
  mutter("(total %dMB)\n", buffers * pages / 256);
 mutter("  processing %d buffer%s...\n",
  iterations, s_if_plural(iterations));
 line_info = (line_info_t *) malloc(sets * sizeof(line_info_t));
 stage_info = (stage_info_t *) malloc(sets * stages * sizeof(stage_info_t));
 for (i = 0; i < sets; i++) {
  work_t *work_array;

  lp = &line_info[i];

  lp->setnum = i + 1;
  lp->isize = pages * 4096 / sizeof(int);
  lp->data = (int *) malloc(buffers * pages * 4096);


  for (j = 0; j < stages; j++) {
   sp = &stage_info[(i*stages) + j];
   sp->stagenum = j;
   sp->set = lp;
   lp->stage[j] = sp;
   pthread_mutex_init(&sp->bufq.mtx, ((void*)0));
   pthread_cond_init(&sp->bufq.cnd, ((void*)0));
   TAILQ_INIT(&sp->bufq.queue);
   sp->bufq.waiters = FALSE;
  }





  for (j = 0; j < stages; j++) {
   sp = lp->stage[j];
   if (j == 0) {
    sp->fn = producer_fnp;
    sp->name = "producer";
   } else {
    sp->fn = consumer_fnp;
    sp->name = "consumer";
   }
   sp->input = &lp->stage[j]->bufq;
   sp->output = &lp->stage[(j + 1) % stages]->bufq;
  }


  work_array = (work_t *) malloc(buffers * sizeof(work_t));
  for (j = 0; j < buffers; j++) {
   work_array[j].data = lp->data + (lp->isize * j);
   TAILQ_INSERT_TAIL(&lp->stage[0]->bufq.queue, &work_array[j], link);
   DBG("  empty work item %p for set %d data %p\n",
    &work_array[j], i, work_array[j].data);
  }


  for (j = 0; j < stages; j++) {
   if (ret = pthread_create(&lp->stage[j]->thread, ((void*)0),
     &manager_fn,
     (void *) lp->stage[j]))
   err(1, "pthread_create %d,%d", i, j);
  }
 }




 for (i = 0; i < sets; i++) {
  lp = &line_info[i];
  for (j = 0; j < stages; j++) {
   if(ret = pthread_join(lp->stage[j]->thread, (void **)&status))
       err(1, "pthread_join %d,%d", i, j);
   DBG("Thread %d,%d status %d\n", i, j, status);
  }
 }




 timer = mach_absolute_time() - timer;
 timer = timer / 1000000ULL;
 printf("%d.%03d seconds elapsed.\n",
  (int) (timer/1000ULL), (int) (timer % 1000ULL));

 return 0;
}

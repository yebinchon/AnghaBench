#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int setnum; int /*<<< orphan*/  thread; TYPE_4__* stage; } ;
typedef  TYPE_2__ worker_info_t ;
struct TYPE_8__ {int* data; int isize; scalar_t__ tag; } ;
typedef  TYPE_3__ work_t ;
struct TYPE_6__ {int /*<<< orphan*/  queue; scalar_t__ waiters; int /*<<< orphan*/  cnd; int /*<<< orphan*/  mtx; } ;
struct TYPE_9__ {int stagenum; char* name; int work_todo; TYPE_1__ bufq; TYPE_1__* output; TYPE_1__* input; int /*<<< orphan*/ * fn; } ;
typedef  TYPE_4__ stage_info_t ;
typedef  int /*<<< orphan*/  kern_return_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int WORKERS_MAX ; 
 int affinity ; 
 void* FUNC3 (char*) ; 
 int /*<<< orphan*/  barrier ; 
 int /*<<< orphan*/ * consumer_fnp ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int,int) ; 
 int /*<<< orphan*/  funnel ; 
 int FUNC5 (int,char**,char*) ; 
 int /*<<< orphan*/  halting ; 
 int iterations ; 
 int /*<<< orphan*/  link ; 
 unsigned long long FUNC6 () ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  manager_fn ; 
 int /*<<< orphan*/  FUNC8 (char*,int,...) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int) ; 
 int /*<<< orphan*/ * producer_fnp ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  reader_writer_fn ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int threads ; 
 unsigned long long timer ; 
 int /*<<< orphan*/  FUNC15 () ; 
 void* verbosity ; 

int
FUNC16(int argc, char *argv[])
{
	int			i;
	int			j;
	int			k;
	int			pages = 256; /* 1MB */
	int			buffers = 2;
	int			producers = 2;
	int			consumers = 2;
	int			stages = 2;
	int			*status;
	stage_info_t		*stage_info;
	stage_info_t		*sp;
	worker_info_t		*worker_info;
	worker_info_t		*wp;
	kern_return_t		ret;
	int			c;

	/* Do switch parsing: */
	while ((c = FUNC5 (argc, argv, "ab:i:p:s:twv:")) != -1) {
		switch (c) {
		case 'a':
			affinity = !affinity;
			break;
		case 'b':
			buffers = FUNC3(optarg);
			break;
		case 'i':
			iterations = FUNC3(optarg);
			break;
		case 'p':
			pages = FUNC3(optarg);
			break;
		case 's':
			stages = FUNC3(optarg);
			if (stages >= WORKERS_MAX)
				FUNC15();
			break;
		case 't':
			halting = TRUE;
			break;
		case 'w':
			consumer_fnp = &reader_writer_fn;
			break;
		case 'v':
			verbosity = FUNC3(optarg);
			break;
		case 'h':
		case '?':
		default:
			FUNC15();
		}
	}
	argc -= optind; argv += optind;
	if (argc > 0)
		producers = FUNC3(*argv);
	argc--; argv++;
	if (argc > 0)
		consumers = FUNC3(*argv);
	
	FUNC13(&funnel, NULL);
	FUNC10(&barrier, NULL);

	/*
 	 * Fire up the worker threads.
	 */
	threads = consumers * (stages - 1) + producers;
	FUNC8("Launching %d producer%s with %d stage%s of %d consumer%s\n"
		"  with %saffinity, consumer reads%s data\n",
		producers, FUNC14(producers),
		stages - 1, FUNC14(stages - 1),
		consumers, FUNC14(consumers),
		affinity? "": "no ",
		(consumer_fnp == &reader_writer_fn)? " and writes" : "");
	if (pages < 256)
		FUNC8("  %dkB bytes per buffer, ", pages * 4);
	else
		FUNC8("  %dMB bytes per buffer, ", pages / 256);
	FUNC8("%d buffer%s per producer ",
		buffers, FUNC14(buffers));
	if (buffers * pages < 256)
		FUNC8("(total %dkB)\n", buffers * pages * 4);
	else
		FUNC8("(total %dMB)\n", buffers * pages / 256);
	FUNC8("  processing %d buffer%s...\n",
		iterations, FUNC14(iterations));

	stage_info = (stage_info_t *) FUNC7(stages * sizeof(stage_info_t));
	worker_info = (worker_info_t *) FUNC7(threads * sizeof(worker_info_t));

	/* Set up the queue for the workers of this thread set: */
	for (i = 0; i < stages; i++) {
		sp = &stage_info[i];
		sp->stagenum = i;
		FUNC13(&sp->bufq.mtx, NULL);
		FUNC10(&sp->bufq.cnd, NULL);
		FUNC1(&sp->bufq.queue);
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
 
	/* Create the producers */
	for (i = 0; i < producers; i++) {
		work_t	*work_array;
		int	*data;
		int	isize;

		isize = pages * 4096 / sizeof(int);
		data = (int *) FUNC7(buffers * pages * 4096);

		/* Set up the empty work buffers */
		work_array = (work_t *)  FUNC7(buffers * sizeof(work_t));
		for (j = 0; j < buffers; j++) {
			work_array[j].data = data + (isize * j);	
			work_array[j].isize = isize;
			work_array[j].tag = 0;
			FUNC2(&stage_info[0].bufq.queue, &work_array[j], link);
			FUNC0("  empty work item %p for data %p\n",
				&work_array[j], work_array[j].data);
		}
		wp = &worker_info[i];
		wp->setnum = i + 1;
		wp->stage = &stage_info[0];
		if ((ret = FUNC11(&wp->thread,
					 NULL,
					 &manager_fn,
					 (void *) wp)))
			FUNC4(1, "pthread_create %d,%d", 0, i);
	}

	/* Create consumers */
	for (i = 1; i < stages; i++) {
		for (j = 0; j < consumers; j++) {
			wp = &worker_info[producers + (consumers*(i-1)) + j];
			wp->setnum = j + 1;
			wp->stage = &stage_info[i];
			if ((ret = FUNC11(&wp->thread,
						NULL,
						&manager_fn,
						(void *) wp)))
				FUNC4(1, "pthread_create %d,%d", i, j);
		}
	}

	/*
	 * We sit back anf wait for the slaves to finish.
	 */
	for (k = 0; k < threads; k++) {
		int	i;
		int	j;

		wp = &worker_info[k];
		if (k < producers) {
			i = 0;
			j = k;
		} else {
			i = (k - producers) / consumers;
			j = (k - producers) % consumers;
		}
		if((ret = FUNC12(wp->thread, (void **)&status)))
		    FUNC4(1, "pthread_join %d,%d", i, j);
		FUNC0("Thread %d,%d status %d\n", i, j, status);
	}

	/*
	 * See how long the work took.
	 */
	timer = FUNC6() - timer;
	timer = timer / 1000000ULL;
	FUNC9("%d.%03d seconds elapsed.\n",
		(int) (timer/1000ULL), (int) (timer % 1000ULL));

	return 0;
}
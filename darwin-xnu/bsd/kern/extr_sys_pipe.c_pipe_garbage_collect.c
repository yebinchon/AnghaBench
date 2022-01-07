
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct pipe_garbage {int pg_timestamp; struct pipe_garbage* pg_next; struct pipe_garbage* pg_pipe; int pipe_state; } ;
struct pipe {int pg_timestamp; struct pipe* pg_next; struct pipe* pg_pipe; int pipe_state; } ;


 int PIPE_DEAD ;
 scalar_t__ PIPE_GARBAGE_QUEUE_LIMIT ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int mach_absolute_time () ;
 int nanoseconds_to_absolutetime (int,int*) ;
 int panic (char*,scalar_t__) ;
 int pipe_garbage_age_limit ;
 int pipe_garbage_count ;
 struct pipe_garbage* pipe_garbage_head ;
 int pipe_garbage_lock ;
 struct pipe_garbage* pipe_garbage_tail ;
 int pipe_garbage_zone ;
 int pipe_zone ;
 int printf (char*,struct pipe_garbage*) ;
 scalar_t__ zalloc (int ) ;
 int zfree (int ,struct pipe_garbage*) ;

__attribute__((used)) static void
pipe_garbage_collect(struct pipe *cpipe)
{
 uint64_t old, now;
 struct pipe_garbage *pgp;


 old = pipe_garbage_age_limit * 1000000;
 nanoseconds_to_absolutetime(old, &old);

 lck_mtx_lock(pipe_garbage_lock);


 now = mach_absolute_time();
 old = now - old;
 while ((pgp = pipe_garbage_head) && pgp->pg_timestamp < old) {
  pipe_garbage_head = pgp->pg_next;
  if (pipe_garbage_head == ((void*)0))
   pipe_garbage_tail = ((void*)0);
  pipe_garbage_count--;
  zfree(pipe_zone, pgp->pg_pipe);
  zfree(pipe_garbage_zone, pgp);
 }


 if (cpipe) {
  cpipe->pipe_state = PIPE_DEAD;
  pgp = (struct pipe_garbage *)zalloc(pipe_garbage_zone);
  if (pgp == ((void*)0)) {
   printf("Leaking pipe %p - no room left in the queue",
       cpipe);
   lck_mtx_unlock(pipe_garbage_lock);
   return;
  }

  pgp->pg_pipe = cpipe;
  pgp->pg_timestamp = now;
  pgp->pg_next = ((void*)0);

  if (pipe_garbage_tail)
   pipe_garbage_tail->pg_next = pgp;
  pipe_garbage_tail = pgp;
  if (pipe_garbage_head == ((void*)0))
   pipe_garbage_head = pipe_garbage_tail;

  if (pipe_garbage_count++ >= PIPE_GARBAGE_QUEUE_LIMIT)
   panic("Length of pipe garbage queue exceeded %d",
       PIPE_GARBAGE_QUEUE_LIMIT);
 }
 lck_mtx_unlock(pipe_garbage_lock);
}

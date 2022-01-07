
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int main_arena_ind ;
typedef int buf ;
typedef int arena_ind ;


 int BUFERROR_BUF ;
 int assert_ptr_not_null (void*,char*) ;
 int assert_u_eq (unsigned int,unsigned int,char*) ;
 int buferror (int,char*,int) ;
 int free (void*) ;
 int mallctl (char*,unsigned int*,size_t*,unsigned int*,int) ;
 void* malloc (int) ;
 int test_fail (char*,char*) ;

void *
thd_start(void *arg)
{
 unsigned main_arena_ind = *(unsigned *)arg;
 void *p;
 unsigned arena_ind;
 size_t size;
 int err;

 p = malloc(1);
 assert_ptr_not_null(p, "Error in malloc()");
 free(p);

 size = sizeof(arena_ind);
 if ((err = mallctl("thread.arena", &arena_ind, &size, &main_arena_ind,
     sizeof(main_arena_ind)))) {
  char buf[BUFERROR_BUF];

  buferror(err, buf, sizeof(buf));
  test_fail("Error in mallctl(): %s", buf);
 }

 size = sizeof(arena_ind);
 if ((err = mallctl("thread.arena", &arena_ind, &size, ((void*)0), 0))) {
  char buf[BUFERROR_BUF];

  buferror(err, buf, sizeof(buf));
  test_fail("Error in mallctl(): %s", buf);
 }
 assert_u_eq(arena_ind, main_arena_ind,
     "Arena index should be same as for main thread");

 return (((void*)0));
}

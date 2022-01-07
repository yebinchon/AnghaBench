
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int attach_master ;
 int attach_slave ;
 int close (int ) ;
 int pthread_join (int ,int *) ;
 int reader ;
 int writer ;
 int writing ;

__attribute__((used)) static void
join_threads(void)
{
 close(attach_slave);
 close(attach_master);
 writing = 0;
 pthread_join(reader, ((void*)0));
 pthread_join(writer, ((void*)0));
}

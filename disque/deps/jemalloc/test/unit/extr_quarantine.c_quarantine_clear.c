
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int QUARANTINE_SIZE ;
 int assert_ptr_not_null (void*,char*) ;
 int dallocx (void*,int ) ;
 void* mallocx (int,int ) ;

void
quarantine_clear(void)
{
 void *p;

 p = mallocx(QUARANTINE_SIZE*2, 0);
 assert_ptr_not_null(p, "Unexpected mallocx() failure");
 dallocx(p, 0);
}

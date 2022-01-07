
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int ) ;
 size_t esp_himem_get_free_size () ;
 size_t esp_himem_get_phys_size () ;
 int printf (char*,...) ;
 int test_region (size_t,int) ;

void app_main(void)
{
    size_t memcnt=esp_himem_get_phys_size();
    size_t memfree=esp_himem_get_free_size();
    printf("Himem has %dKiB of memory, %dKiB of which is free. Testing the free memory...\n", (int)memcnt/1024, (int)memfree/1024);
    assert(test_region(memfree, 0xaaaa));
    printf("Done!\n");
}

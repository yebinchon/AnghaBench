
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptr_t ;


 int dmadone ;
 int sem_signal (int *) ;

__attribute__((used)) static void dma_callback(ptr_t data __attribute__((unused))) {
    sem_signal(&dmadone);
}

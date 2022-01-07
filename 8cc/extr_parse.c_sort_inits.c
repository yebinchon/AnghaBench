
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Vector ;


 int comp_init ;
 int qsort (int ,int ,int,int ) ;
 int vec_body (int *) ;
 int vec_len (int *) ;

__attribute__((used)) static void sort_inits(Vector *inits) {
    qsort(vec_body(inits), vec_len(inits), sizeof(void *), comp_init);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int* calloc (size_t,int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fscanf (int *,char*,int*) ;
 int* realloc (int*,size_t) ;

int *read_tokenized_data(char *filename, size_t *read)
{
    size_t size = 512;
    size_t count = 0;
    FILE *fp = fopen(filename, "r");
    int *d = calloc(size, sizeof(int));
    int n, one;
    one = fscanf(fp, "%d", &n);
    while(one == 1){
        ++count;
        if(count > size){
            size = size*2;
            d = realloc(d, size*sizeof(int));
        }
        d[count-1] = n;
        one = fscanf(fp, "%d", &n);
    }
    fclose(fp);
    d = realloc(d, count*sizeof(int));
    *read = count;
    return d;
}

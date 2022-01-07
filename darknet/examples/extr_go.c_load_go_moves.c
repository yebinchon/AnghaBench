
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int n; char** data; } ;
typedef TYPE_1__ moves ;
typedef int FILE ;


 char** calloc (int,int) ;
 char* fgetgo (int *) ;
 int * fopen (char*,char*) ;
 int printf (char*,int) ;
 void* realloc (char**,int) ;

moves load_go_moves(char *filename)
{
    moves m;
    m.n = 128;
    m.data = calloc(128, sizeof(char*));
    FILE *fp = fopen(filename, "rb");
    int count = 0;
    char *line = 0;
    while ((line = fgetgo(fp))) {
        if (count >= m.n) {
            m.n *= 2;
            m.data = realloc(m.data, m.n*sizeof(char*));
        }
        m.data[count] = line;
        ++count;
    }
    printf("%d\n", count);
    m.n = count;
    m.data = realloc(m.data, count*sizeof(char*));
    return m;
}

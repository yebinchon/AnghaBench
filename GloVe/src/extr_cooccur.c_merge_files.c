
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int id; } ;
typedef int FILE ;
typedef TYPE_1__ CRECID ;
typedef int CREC ;


 int delete (TYPE_1__*,int) ;
 scalar_t__ feof (int *) ;
 char* file_head ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 int fread (TYPE_1__*,int,int,int *) ;
 int fwrite (TYPE_1__*,int,int,int *) ;
 int insert (TYPE_1__*,TYPE_1__,int) ;
 void* malloc (int) ;
 scalar_t__ merge_write (TYPE_1__,TYPE_1__*,int *) ;
 int remove (char*) ;
 int sprintf (char*,char*,char*,int) ;
 int stderr ;
 int * stdout ;
 int verbose ;

int merge_files(int num) {
    int i, size;
    long long counter = 0;
    CRECID *pq, new, old;
    char filename[200];
    FILE **fid, *fout;
    fid = malloc(sizeof(FILE) * num);
    pq = malloc(sizeof(CRECID) * num);
    fout = stdout;
    if (verbose > 1) fprintf(stderr, "Merging cooccurrence files: processed 0 lines.");


    for (i = 0; i < num; i++) {
        sprintf(filename,"%s_%04d.bin",file_head,i);
        fid[i] = fopen(filename,"rb");
        if (fid[i] == ((void*)0)) {fprintf(stderr, "Unable to open file %s.\n",filename); return 1;}
        fread(&new, sizeof(CREC), 1, fid[i]);
        new.id = i;
        insert(pq,new,i+1);
    }


    size = num;
    old = pq[0];
    i = pq[0].id;
    delete(pq, size);
    fread(&new, sizeof(CREC), 1, fid[i]);
    if (feof(fid[i])) size--;
    else {
        new.id = i;
        insert(pq, new, size);
    }


    while (size > 0) {
        counter += merge_write(pq[0], &old, fout);
        if ((counter%100000) == 0) if (verbose > 1) fprintf(stderr,"\033[39G%lld lines.",counter);
        i = pq[0].id;
        delete(pq, size);
        fread(&new, sizeof(CREC), 1, fid[i]);
        if (feof(fid[i])) size--;
        else {
            new.id = i;
            insert(pq, new, size);
        }
    }
    fwrite(&old, sizeof(CREC), 1, fout);
    fprintf(stderr,"\033[0GMerging cooccurrence files: processed %lld lines.\n",++counter);
    for (i=0;i<num;i++) {
        sprintf(filename,"%s_%04d.bin",file_head,i);
        remove(filename);
    }
    fprintf(stderr,"\n");
    return 0;
}

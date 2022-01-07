
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;
typedef int CREC ;


 int MAX_STRING_LENGTH ;
 int array_size ;
 int fclose (int *) ;
 scalar_t__ feof (int *) ;
 char* file_head ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 int fread (int *,int,int,int *) ;
 int free (int *) ;
 void* malloc (int) ;
 int remove (char*) ;
 int shuffle (int *,long) ;
 int sprintf (char*,char*,char*,int) ;
 int stderr ;
 int * stdout ;
 scalar_t__ verbose ;
 int write_chunk (int *,long,int *) ;

int shuffle_merge(int num) {
    long i, j, k, l = 0;
    int fidcounter = 0;
    CREC *array;
    char filename[MAX_STRING_LENGTH];
    FILE **fid, *fout = stdout;

    array = malloc(sizeof(CREC) * array_size);
    fid = malloc(sizeof(FILE) * num);
    for (fidcounter = 0; fidcounter < num; fidcounter++) {
        sprintf(filename,"%s_%04d.bin",file_head, fidcounter);
        fid[fidcounter] = fopen(filename, "rb");
        if (fid[fidcounter] == ((void*)0)) {
            fprintf(stderr, "Unable to open file %s.\n",filename);
            return 1;
        }
    }
    if (verbose > 0) fprintf(stderr, "Merging temp files: processed %ld lines.", l);

    while (1) {
        i = 0;

        for (j = 0; j < num; j++) {
            if (feof(fid[j])) continue;
            for (k = 0; k < array_size / num; k++){
                fread(&array[i], sizeof(CREC), 1, fid[j]);
                if (feof(fid[j])) break;
                i++;
            }
        }
        if (i == 0) break;
        l += i;
        shuffle(array, i-1);
        write_chunk(array,i,fout);
        if (verbose > 0) fprintf(stderr, "\033[31G%ld lines.", l);
    }
    fprintf(stderr, "\033[0GMerging temp files: processed %ld lines.", l);
    for (fidcounter = 0; fidcounter < num; fidcounter++) {
        fclose(fid[fidcounter]);
        sprintf(filename,"%s_%04d.bin",file_head, fidcounter);
        remove(filename);
    }
    fprintf(stderr, "\n\n");
    free(array);
    return 0;
}

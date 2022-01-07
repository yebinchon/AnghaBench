
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
 int * malloc (int) ;
 int shuffle (int *,long) ;
 int shuffle_merge (int) ;
 int sprintf (char*,char*,char*,int) ;
 int stderr ;
 int * stdin ;
 int verbose ;
 int write_chunk (int *,long,int *) ;

int shuffle_by_chunks() {
    long i = 0, l = 0;
    int fidcounter = 0;
    char filename[MAX_STRING_LENGTH];
    CREC *array;
    FILE *fin = stdin, *fid;
    array = malloc(sizeof(CREC) * array_size);

    fprintf(stderr,"SHUFFLING COOCCURRENCES\n");
    if (verbose > 0) fprintf(stderr,"array size: %lld\n", array_size);
    sprintf(filename,"%s_%04d.bin",file_head, fidcounter);
    fid = fopen(filename,"w");
    if (fid == ((void*)0)) {
        fprintf(stderr, "Unable to open file %s.\n",filename);
        return 1;
    }
    if (verbose > 1) fprintf(stderr, "Shuffling by chunks: processed 0 lines.");

    while (1) {
        if (i >= array_size) {
            shuffle(array, i-2);
            l += i;
            if (verbose > 1) fprintf(stderr, "\033[22Gprocessed %ld lines.", l);
            write_chunk(array,i,fid);
            fclose(fid);
            fidcounter++;
            sprintf(filename,"%s_%04d.bin",file_head, fidcounter);
            fid = fopen(filename,"w");
            if (fid == ((void*)0)) {
                fprintf(stderr, "Unable to open file %s.\n",filename);
                return 1;
            }
            i = 0;
        }
        fread(&array[i], sizeof(CREC), 1, fin);
        if (feof(fin)) break;
        i++;
    }
    shuffle(array, i-2);
    write_chunk(array,i,fid);
    l += i;
    if (verbose > 1) fprintf(stderr, "\033[22Gprocessed %ld lines.\n", l);
    if (verbose > 1) fprintf(stderr, "Wrote %d temporary file(s).\n", fidcounter + 1);
    fclose(fid);
    free(array);
    return shuffle_merge(fidcounter + 1);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_slices; int ** slices; } ;


 int BYTES_PER_LINE ;
 int MAX_SLICE_LENGTH ;
 int O_RDONLY ;
 TYPE_1__ binary ;
 void* calloc (int,int) ;
 int ceil (int) ;
 int close (int) ;
 int open (char*,int ) ;
 int read (int,unsigned char*,int) ;
 int sprintf (int *,char*,unsigned char) ;
 int strlen (int *) ;

int load_binary(char *path)
{

    int fd, size = 0, got = 0, i, slice = 0;
    unsigned char ch;

    if ((fd = open(path, O_RDONLY)) == -1)
        return -1;
    while ((got = read(fd, &ch, 1)) > 0) size++;
    close(fd);

    binary.num_slices = ceil(size / (float)BYTES_PER_LINE);
    binary.slices = calloc(binary.num_slices, sizeof(unsigned char *));
    if (binary.slices == ((void*)0))
        return -1;

    for (i = 0; i < binary.num_slices; i++)
    {
        binary.slices[i] = calloc(1, MAX_SLICE_LENGTH + 1);
        if (binary.slices[i] == ((void*)0))
            return -1;
    }

    if ((fd = open(path, O_RDONLY)) == -1)
        return -1;
    do
    {
        for (i = 0; i < BYTES_PER_LINE; i++)
        {
            got = read(fd, &ch, 1);
            if (got != 1) break;

            sprintf(binary.slices[slice] + strlen(binary.slices[slice]), "\\\\x%02X", ch);
        }

        slice++;
    } while(got > 0);
    close(fd);

    return 0;
}

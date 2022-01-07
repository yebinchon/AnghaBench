
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ voidpf ;
typedef scalar_t__ uInt ;
struct zipent {int compression_method; scalar_t__ compressed_size; scalar_t__ uncompressed_size; int version_needed_to_extract; int os_needed_to_extract; scalar_t__ disk_number_start; } ;
struct TYPE_9__ {int avail_in; int avail_out; int * next_in; int * next_out; scalar_t__ opaque; scalar_t__ zfree; scalar_t__ zalloc; } ;
struct TYPE_7__ {int z_err; int transparent; char mode; char* path; TYPE_5__ stream; int * file; scalar_t__ start; int * inbuf; int * msg; int crc; int back; scalar_t__ out; scalar_t__ in; scalar_t__ z_eof; int * outbuf; } ;
typedef TYPE_1__ gz_stream ;
typedef int * gzFile ;
typedef scalar_t__ free_func ;
typedef scalar_t__ alloc_func ;
struct TYPE_8__ {char* zip; scalar_t__ number_of_this_disk; int * fp; } ;
typedef TYPE_2__ ZIP ;
typedef int Byte ;


 scalar_t__ ALLOC (int) ;
 int EOF ;
 int ERROR_CORRUPT ;
 int ERROR_UNSUPPORTED ;
 int MAX_WBITS ;
 int Z_BUFSIZE ;
 int Z_ERRNO ;
 int * Z_NULL ;
 int Z_OK ;
 int crc32 (long,int *,int ) ;
 int * destroy (TYPE_1__*) ;
 scalar_t__ errno ;
 int errormsg (char*,int ,char*) ;
 scalar_t__ ferror (int *) ;
 scalar_t__ fread (int *,int,int,int *) ;
 scalar_t__ ftell (int *) ;
 int inflateInit2 (TYPE_5__*,int ) ;
 scalar_t__ seekcompresszip (TYPE_2__*,struct zipent*) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;

gzFile zip2gz(ZIP* zip, struct zipent* ent)
{
    int err;
    gz_stream *s;
    const char *path;
    int transparent = 0;
    uInt len;

    if (!zip || !ent)
        return ((void*)0);


    if (ent->compression_method == 0x0000)
    {



        if (ent->compressed_size != ent->uncompressed_size) {
            errormsg("Wrong uncompressed size in store compression", ERROR_CORRUPT,zip->zip);
            return ((void*)0);
        }

        transparent = 1;
    }
    else if (ent->compression_method == 0x0008)
    {

        if (ent->version_needed_to_extract > 0x14) {
            errormsg("Version too new", ERROR_UNSUPPORTED,zip->zip);
            return ((void*)0);
        }

        if (ent->os_needed_to_extract != 0x00) {
            errormsg("OS not supported", ERROR_UNSUPPORTED,zip->zip);
            return ((void*)0);
        }

        if (ent->disk_number_start != zip->number_of_this_disk) {
            errormsg("Cannot span disks", ERROR_UNSUPPORTED,zip->zip);
            return ((void*)0);
        }

    } else {
        errormsg("Compression method unsupported", ERROR_UNSUPPORTED, zip->zip);
        return ((void*)0);
    }


    if (seekcompresszip(zip,ent) != 0) {
        return ((void*)0);
    }

    path = zip->zip;


    s = (gz_stream *)ALLOC(sizeof(gz_stream));
    if (!s) return Z_NULL;

    s->stream.zalloc = (alloc_func)0;
    s->stream.zfree = (free_func)0;
    s->stream.opaque = (voidpf)0;
    s->stream.next_in = s->inbuf = Z_NULL;
    s->stream.next_out = s->outbuf = Z_NULL;
    s->stream.avail_in = s->stream.avail_out = 0;
    s->file = ((void*)0);
    s->z_err = Z_OK;
    s->z_eof = 0;
    s->in = 0;
    s->out = 0;
    s->back = EOF;
    s->crc = crc32(0L, Z_NULL, 0);
    s->msg = ((void*)0);
    s->transparent = transparent;
    s->mode = 'r';

    s->path = (char*)ALLOC(strlen(path)+1);
    if (s->path == ((void*)0)) {
        return destroy(s), (gzFile)Z_NULL;
    }
    strcpy(s->path, path);

    s->stream.next_in = s->inbuf = (Byte*)ALLOC(Z_BUFSIZE);

    err = inflateInit2(&(s->stream), -MAX_WBITS);






    if (err != Z_OK || s->inbuf == Z_NULL) {
        return destroy(s), (gzFile)Z_NULL;
    }
    s->stream.avail_out = Z_BUFSIZE;

    errno = 0;
    s->file = zip->fp;
    if (s->file == ((void*)0)) {
        return destroy(s), (gzFile)Z_NULL;
    }


    errno = 0;
    len = (uInt)fread(s->inbuf, 1, Z_BUFSIZE, s->file);
    if (len == 0 && ferror(s->file)) s->z_err = Z_ERRNO;
    s->stream.avail_in += len;
    s->stream.next_in = s->inbuf;
    if (s->stream.avail_in < 2) {
        return destroy(s), (gzFile)Z_NULL;
    }

    s->start = ftell(s->file) - s->stream.avail_in;

    return (gzFile)s;
}

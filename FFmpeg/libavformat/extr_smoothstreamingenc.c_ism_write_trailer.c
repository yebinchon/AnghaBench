
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int filename ;
struct TYPE_7__ {char* url; TYPE_1__* priv_data; } ;
struct TYPE_6__ {scalar_t__ remove_at_exit; } ;
typedef TYPE_1__ SmoothStreamingContext ;
typedef TYPE_2__ AVFormatContext ;


 int ism_flush (TYPE_2__*,int) ;
 int ism_free (TYPE_2__*) ;
 int rmdir (char*) ;
 int snprintf (char*,int,char*,char*) ;
 int unlink (char*) ;

__attribute__((used)) static int ism_write_trailer(AVFormatContext *s)
{
    SmoothStreamingContext *c = s->priv_data;
    ism_flush(s, 1);

    if (c->remove_at_exit) {
        char filename[1024];
        snprintf(filename, sizeof(filename), "%s/Manifest", s->url);
        unlink(filename);
        rmdir(s->url);
    }

    ism_free(s);
    return 0;
}

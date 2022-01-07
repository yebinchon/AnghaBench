
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int filename ;
struct TYPE_10__ {int last_ts; } ;
struct TYPE_9__ {char* url; TYPE_1__* priv_data; } ;
struct TYPE_8__ {int nb_streams; scalar_t__ remove_at_exit; TYPE_7__* streams; } ;
typedef TYPE_1__ HDSContext ;
typedef TYPE_2__ AVFormatContext ;


 int hds_flush (TYPE_2__*,TYPE_7__*,int,int ) ;
 int hds_free (TYPE_2__*) ;
 int rmdir (char*) ;
 int snprintf (char*,int,char*,char*,...) ;
 int unlink (char*) ;
 int write_manifest (TYPE_2__*,int) ;

__attribute__((used)) static int hds_write_trailer(AVFormatContext *s)
{
    HDSContext *c = s->priv_data;
    int i;

    for (i = 0; i < c->nb_streams; i++)
        hds_flush(s, &c->streams[i], 1, c->streams[i].last_ts);
    write_manifest(s, 1);

    if (c->remove_at_exit) {
        char filename[1024];
        snprintf(filename, sizeof(filename), "%s/index.f4m", s->url);
        unlink(filename);
        for (i = 0; i < c->nb_streams; i++) {
            snprintf(filename, sizeof(filename), "%s/stream%d.abst", s->url, i);
            unlink(filename);
        }
        rmdir(s->url);
    }

    hds_free(s);
    return 0;
}

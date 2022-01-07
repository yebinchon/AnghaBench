
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; int description; int file_name; int mime_type; } ;
typedef TYPE_1__ ID3v2ExtraMetaGEOB ;


 int av_free (TYPE_1__*) ;
 int av_freep (int *) ;

__attribute__((used)) static void free_geobtag(void *obj)
{
    ID3v2ExtraMetaGEOB *geob = obj;
    av_freep(&geob->mime_type);
    av_freep(&geob->file_name);
    av_freep(&geob->description);
    av_freep(&geob->data);
    av_free(geob);
}

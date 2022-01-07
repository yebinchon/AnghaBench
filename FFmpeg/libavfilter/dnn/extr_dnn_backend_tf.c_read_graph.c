
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {long length; int data_deallocator; void* data; } ;
typedef TYPE_1__ TF_Buffer ;
typedef int AVIOContext ;


 int AVIO_FLAG_READ ;
 TYPE_1__* TF_NewBuffer () ;
 int av_freep (unsigned char**) ;
 unsigned char* av_malloc (long) ;
 int avio_closep (int **) ;
 scalar_t__ avio_open (int **,char const*,int ) ;
 long avio_read (int *,unsigned char*,long) ;
 long avio_size (int *) ;
 int free_buffer ;

__attribute__((used)) static TF_Buffer *read_graph(const char *model_filename)
{
    TF_Buffer *graph_buf;
    unsigned char *graph_data = ((void*)0);
    AVIOContext *model_file_context;
    long size, bytes_read;

    if (avio_open(&model_file_context, model_filename, AVIO_FLAG_READ) < 0){
        return ((void*)0);
    }

    size = avio_size(model_file_context);

    graph_data = av_malloc(size);
    if (!graph_data){
        avio_closep(&model_file_context);
        return ((void*)0);
    }
    bytes_read = avio_read(model_file_context, graph_data, size);
    avio_closep(&model_file_context);
    if (bytes_read != size){
        av_freep(&graph_data);
        return ((void*)0);
    }

    graph_buf = TF_NewBuffer();
    graph_buf->data = (void *)graph_data;
    graph_buf->length = size;
    graph_buf->data_deallocator = free_buffer;

    return graph_buf;
}

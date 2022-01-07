
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int flags; char* name; int priv_data_size; int * priv_data_class; int url_write; int url_read; } ;
typedef TYPE_1__ URLProtocol ;
struct TYPE_10__ {char* filename; int flags; struct TYPE_10__* priv_data; int interrupt_callback; scalar_t__ max_packet_size; scalar_t__ is_streamed; TYPE_1__ const* prot; int * av_class; } ;
typedef TYPE_2__ URLContext ;
typedef int AVIOInterruptCB ;
typedef int AVClass ;


 int AVERROR (int ) ;
 int AVERROR_OPTION_NOT_FOUND ;
 int AVIO_FLAG_READ ;
 int AVIO_FLAG_WRITE ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int URL_PROTOCOL_FLAG_NETWORK ;
 int av_freep (TYPE_2__**) ;
 int av_log (TYPE_2__*,int ,char*,char*) ;
 void* av_mallocz (int) ;
 int av_opt_set (TYPE_2__*,char*,char*,int ) ;
 int av_opt_set_defaults (TYPE_2__*) ;
 int ff_network_close () ;
 int ff_network_init () ;
 int ffurl_context_class ;
 int memmove (char*,char*,int) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static int url_alloc_for_protocol(URLContext **puc, const URLProtocol *up,
                                  const char *filename, int flags,
                                  const AVIOInterruptCB *int_cb)
{
    URLContext *uc;
    int err;





    if ((flags & AVIO_FLAG_READ) && !up->url_read) {
        av_log(((void*)0), AV_LOG_ERROR,
               "Impossible to open the '%s' protocol for reading\n", up->name);
        return AVERROR(EIO);
    }
    if ((flags & AVIO_FLAG_WRITE) && !up->url_write) {
        av_log(((void*)0), AV_LOG_ERROR,
               "Impossible to open the '%s' protocol for writing\n", up->name);
        return AVERROR(EIO);
    }
    uc = av_mallocz(sizeof(URLContext) + strlen(filename) + 1);
    if (!uc) {
        err = AVERROR(ENOMEM);
        goto fail;
    }
    uc->av_class = &ffurl_context_class;
    uc->filename = (char *)&uc[1];
    strcpy(uc->filename, filename);
    uc->prot = up;
    uc->flags = flags;
    uc->is_streamed = 0;
    uc->max_packet_size = 0;
    if (up->priv_data_size) {
        uc->priv_data = av_mallocz(up->priv_data_size);
        if (!uc->priv_data) {
            err = AVERROR(ENOMEM);
            goto fail;
        }
        if (up->priv_data_class) {
            int proto_len= strlen(up->name);
            char *start = strchr(uc->filename, ',');
            *(const AVClass **)uc->priv_data = up->priv_data_class;
            av_opt_set_defaults(uc->priv_data);
            if(!strncmp(up->name, uc->filename, proto_len) && uc->filename + proto_len == start){
                int ret= 0;
                char *p= start;
                char sep= *++p;
                char *key, *val;
                p++;

                if (strcmp(up->name, "subfile"))
                    ret = AVERROR(EINVAL);

                while(ret >= 0 && (key= strchr(p, sep)) && p<key && (val = strchr(key+1, sep))){
                    *val= *key= 0;
                    if (strcmp(p, "start") && strcmp(p, "end")) {
                        ret = AVERROR_OPTION_NOT_FOUND;
                    } else
                        ret= av_opt_set(uc->priv_data, p, key+1, 0);
                    if (ret == AVERROR_OPTION_NOT_FOUND)
                        av_log(uc, AV_LOG_ERROR, "Key '%s' not found.\n", p);
                    *val= *key= sep;
                    p= val+1;
                }
                if(ret<0 || p!=key){
                    av_log(uc, AV_LOG_ERROR, "Error parsing options string %s\n", start);
                    av_freep(&uc->priv_data);
                    av_freep(&uc);
                    err = AVERROR(EINVAL);
                    goto fail;
                }
                memmove(start, key+1, strlen(key));
            }
        }
    }
    if (int_cb)
        uc->interrupt_callback = *int_cb;

    *puc = uc;
    return 0;
fail:
    *puc = ((void*)0);
    if (uc)
        av_freep(&uc->priv_data);
    av_freep(&uc);




    return err;
}

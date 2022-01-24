#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int flags; char* name; int priv_data_size; int /*<<< orphan*/ * priv_data_class; int /*<<< orphan*/  url_write; int /*<<< orphan*/  url_read; } ;
typedef  TYPE_1__ URLProtocol ;
struct TYPE_10__ {char* filename; int flags; struct TYPE_10__* priv_data; int /*<<< orphan*/  interrupt_callback; scalar_t__ max_packet_size; scalar_t__ is_streamed; TYPE_1__ const* prot; int /*<<< orphan*/ * av_class; } ;
typedef  TYPE_2__ URLContext ;
typedef  int /*<<< orphan*/  AVIOInterruptCB ;
typedef  int /*<<< orphan*/  AVClass ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_OPTION_NOT_FOUND ; 
 int AVIO_FLAG_READ ; 
 int AVIO_FLAG_WRITE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 int URL_PROTOCOL_FLAG_NETWORK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,char*,char*) ; 
 void* FUNC3 (int) ; 
 int FUNC4 (TYPE_2__*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  ffurl_context_class ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 char* FUNC9 (char*,char) ; 
 scalar_t__ FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*) ; 
 int FUNC12 (char const*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int) ; 

__attribute__((used)) static int FUNC14(URLContext **puc, const URLProtocol *up,
                                  const char *filename, int flags,
                                  const AVIOInterruptCB *int_cb)
{
    URLContext *uc;
    int err;

#if CONFIG_NETWORK
    if (up->flags & URL_PROTOCOL_FLAG_NETWORK && !ff_network_init())
        return AVERROR(EIO);
#endif
    if ((flags & AVIO_FLAG_READ) && !up->url_read) {
        FUNC2(NULL, AV_LOG_ERROR,
               "Impossible to open the '%s' protocol for reading\n", up->name);
        return FUNC0(EIO);
    }
    if ((flags & AVIO_FLAG_WRITE) && !up->url_write) {
        FUNC2(NULL, AV_LOG_ERROR,
               "Impossible to open the '%s' protocol for writing\n", up->name);
        return FUNC0(EIO);
    }
    uc = FUNC3(sizeof(URLContext) + FUNC12(filename) + 1);
    if (!uc) {
        err = FUNC0(ENOMEM);
        goto fail;
    }
    uc->av_class = &ffurl_context_class;
    uc->filename = (char *)&uc[1];
    FUNC11(uc->filename, filename);
    uc->prot            = up;
    uc->flags           = flags;
    uc->is_streamed     = 0; /* default = not streamed */
    uc->max_packet_size = 0; /* default: stream file */
    if (up->priv_data_size) {
        uc->priv_data = FUNC3(up->priv_data_size);
        if (!uc->priv_data) {
            err = FUNC0(ENOMEM);
            goto fail;
        }
        if (up->priv_data_class) {
            int proto_len= FUNC12(up->name);
            char *start = FUNC9(uc->filename, ',');
            *(const AVClass **)uc->priv_data = up->priv_data_class;
            FUNC5(uc->priv_data);
            if(!FUNC13(up->name, uc->filename, proto_len) && uc->filename + proto_len == start){
                int ret= 0;
                char *p= start;
                char sep= *++p;
                char *key, *val;
                p++;

                if (FUNC10(up->name, "subfile"))
                    ret = FUNC0(EINVAL);

                while(ret >= 0 && (key= FUNC9(p, sep)) && p<key && (val = FUNC9(key+1, sep))){
                    *val= *key= 0;
                    if (FUNC10(p, "start") && FUNC10(p, "end")) {
                        ret = AVERROR_OPTION_NOT_FOUND;
                    } else
                        ret= FUNC4(uc->priv_data, p, key+1, 0);
                    if (ret == AVERROR_OPTION_NOT_FOUND)
                        FUNC2(uc, AV_LOG_ERROR, "Key '%s' not found.\n", p);
                    *val= *key= sep;
                    p= val+1;
                }
                if(ret<0 || p!=key){
                    FUNC2(uc, AV_LOG_ERROR, "Error parsing options string %s\n", start);
                    FUNC1(&uc->priv_data);
                    FUNC1(&uc);
                    err = FUNC0(EINVAL);
                    goto fail;
                }
                FUNC8(start, key+1, FUNC12(key));
            }
        }
    }
    if (int_cb)
        uc->interrupt_callback = *int_cb;

    *puc = uc;
    return 0;
fail:
    *puc = NULL;
    if (uc)
        FUNC1(&uc->priv_data);
    FUNC1(&uc);
#if CONFIG_NETWORK
    if (up->flags & URL_PROTOCOL_FLAG_NETWORK)
        ff_network_close();
#endif
    return err;
}
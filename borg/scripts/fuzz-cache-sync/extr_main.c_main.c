
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HashIndex ;
typedef int CacheSyncCtx ;


 int BUFSZ ;
 char* cache_sync_error (int *) ;
 int cache_sync_feed (int *,char*,int) ;
 int cache_sync_free (int *) ;
 int * cache_sync_init (int *) ;
 int fprintf (int ,char*,char*) ;
 int hashindex_free (int *) ;
 int * hashindex_init (int ,int,int) ;
 int read (int ,char*,int) ;
 int stderr ;

int main() {
    char buf[BUFSZ];
    int len, ret;
    CacheSyncCtx *ctx;
    HashIndex *idx;


    idx = hashindex_init(0, 32, 12);
    ctx = cache_sync_init(idx);

    while (1) {
        len = read(0, buf, BUFSZ);
        if (!len) {
            break;
        }
        ret = cache_sync_feed(ctx, buf, len);
        if(!ret && cache_sync_error(ctx)) {
            fprintf(stderr, "error: %s\n", cache_sync_error(ctx));
            return 1;
        }
    }
    hashindex_free(idx);
    cache_sync_free(ctx);
    return 0;
}

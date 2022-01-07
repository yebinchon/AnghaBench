
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVTreeNode ;
typedef int AVLFG ;


 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;
 int AV_LOG_INFO ;
 int atoi (char*) ;
 int av_free (int *) ;
 int av_lfg_get (int *) ;
 int av_lfg_init (int *,int) ;
 int av_log (int *,int ,char*,...) ;
 int av_log_set_level (int) ;
 int av_tree_destroy (int *) ;
 void* av_tree_find (int *,void*,int ,int *) ;
 int av_tree_insert (int **,void*,int ,int **) ;
 int * av_tree_node_alloc () ;
 int check (int *) ;
 int cmp ;
 int print (int *,int ) ;

int main(int argc, char **argv)
{
    int i;
    void *k;
    AVTreeNode *root = ((void*)0), *node = ((void*)0);
    AVLFG prng;
    int log_level = argc <= 1 ? AV_LOG_INFO : atoi(argv[1]);

    av_log_set_level(log_level);

    av_lfg_init(&prng, 1);

    for (i = 0; i < 10000; i++) {
        intptr_t j = av_lfg_get(&prng) % 86294;

        if (check(root) > 999) {
            av_log(((void*)0), AV_LOG_ERROR, "FATAL error %d\n", i);
            print(root, 0);
            return 1;
        }
        av_log(((void*)0), AV_LOG_DEBUG, "inserting %4d\n", (int)j);

        if (!node)
            node = av_tree_node_alloc();
        if (!node) {
            av_log(((void*)0), AV_LOG_ERROR, "Memory allocation failure.\n");
            return 1;
        }
        av_tree_insert(&root, (void *)(j + 1), cmp, &node);

        j = av_lfg_get(&prng) % 86294;
        {
            AVTreeNode *node2 = ((void*)0);
            av_log(((void*)0), AV_LOG_DEBUG, "removing %4d\n", (int)j);
            av_tree_insert(&root, (void *)(j + 1), cmp, &node2);
            k = av_tree_find(root, (void *)(j + 1), cmp, ((void*)0));
            if (k)
                av_log(((void*)0), AV_LOG_ERROR, "removal failure %d\n", i);
            av_free(node2);
        }
    }
    av_free(node);

    av_tree_destroy(root);

    return 0;
}

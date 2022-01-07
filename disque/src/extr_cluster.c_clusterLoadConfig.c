
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct stat {scalar_t__ st_size; } ;
typedef char* sds ;
struct TYPE_9__ {int name; void* pong_received; void* ping_sent; int flags; void* fail_time; scalar_t__ port; int ip; } ;
typedef TYPE_2__ clusterNode ;
struct TYPE_10__ {TYPE_1__* cluster; } ;
struct TYPE_8__ {TYPE_2__* myself; } ;
typedef int FILE ;


 scalar_t__ CLUSTER_NAMELEN ;
 int CLUSTER_NODE_FAIL ;
 int CLUSTER_NODE_HANDSHAKE ;
 int CLUSTER_NODE_LEAVING ;
 int CLUSTER_NODE_MYSELF ;
 int CLUSTER_NODE_NOADDR ;
 int CLUSTER_NODE_PFAIL ;
 int C_ERR ;
 int C_OK ;
 scalar_t__ ENOENT ;
 int LL_NOTICE ;
 int LL_WARNING ;
 scalar_t__ atoi (char*) ;
 int clusterAddNode (TYPE_2__*) ;
 TYPE_2__* clusterLookupNode (char*) ;
 TYPE_2__* createClusterNode (char*,int ) ;
 scalar_t__ errno ;
 int exit (int) ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int fileno (int *) ;
 int * fopen (char*,char*) ;
 int fstat (int ,struct stat*) ;
 int memcpy (int ,char*,scalar_t__) ;
 void* mstime () ;
 TYPE_2__* myself ;
 int sdsfreesplitres (char**,int) ;
 char** sdssplitargs (char*,int*) ;
 TYPE_3__ server ;
 int serverAssert (int ) ;
 int serverLog (int ,char*,...) ;
 int serverPanic (char*) ;
 scalar_t__ strcasecmp (char*,char*) ;
 char* strchr (char*,char) ;
 int strerror (scalar_t__) ;
 scalar_t__ strlen (char*) ;
 char* strrchr (char*,char) ;
 int zfree (char*) ;
 char* zmalloc (int) ;

int clusterLoadConfig(char *filename) {
    FILE *fp = fopen(filename,"r");
    struct stat sb;
    char *line;
    int maxline, j;

    if (fp == ((void*)0)) {
        if (errno == ENOENT) {
            return C_ERR;
        } else {
            serverLog(LL_WARNING,
                "Loading the cluster node config from %s: %s",
                filename, strerror(errno));
            exit(1);
        }
    }



    if (fstat(fileno(fp),&sb) != -1 && sb.st_size == 0) {
        fclose(fp);
        return C_ERR;
    }


    maxline = 1024;
    line = zmalloc(maxline);
    while(fgets(line,maxline,fp) != ((void*)0)) {
        int argc;
        sds *argv;
        clusterNode *n;
        char *p, *s;




        if (line[0] == '\n') continue;


        argv = sdssplitargs(line,&argc);
        if (argv == ((void*)0)) goto fmterr;



        if (strcasecmp(argv[0],"vars") == 0) {
            for (j = 1; j < argc; j += 2) {
                if (strcasecmp(argv[j],"someVarNameHere") == 0) {

                } else {
                    serverLog(LL_WARNING,
                        "Skipping unknown cluster config variable '%s'",
                        argv[j]);
                }
            }
            sdsfreesplitres(argv,argc);
            continue;
        }


        if (argc != 6) goto fmterr;


        if (strlen(argv[0]) != CLUSTER_NAMELEN) goto fmterr;
        n = clusterLookupNode(argv[0]);
        if (!n) {
            n = createClusterNode(argv[0],0);
            clusterAddNode(n);
        }

        if ((p = strrchr(argv[1],':')) == ((void*)0)) goto fmterr;
        *p = '\0';
        memcpy(n->ip,argv[1],strlen(argv[1])+1);
        n->port = atoi(p+1);


        p = s = argv[2];
        while(p) {
            p = strchr(s,',');
            if (p) *p = '\0';
            if (!strcasecmp(s,"myself")) {
                serverAssert(server.cluster->myself == ((void*)0));
                myself = server.cluster->myself = n;
                n->flags |= CLUSTER_NODE_MYSELF;
            } else if (!strcasecmp(s,"fail?")) {
                n->flags |= CLUSTER_NODE_PFAIL;
            } else if (!strcasecmp(s,"fail")) {
                n->flags |= CLUSTER_NODE_FAIL;
                n->fail_time = mstime();
            } else if (!strcasecmp(s,"handshake")) {
                n->flags |= CLUSTER_NODE_HANDSHAKE;
            } else if (!strcasecmp(s,"noaddr")) {
                n->flags |= CLUSTER_NODE_NOADDR;
            } else if (!strcasecmp(s,"leaving")) {
                n->flags |= CLUSTER_NODE_LEAVING;
            } else if (!strcasecmp(s,"noflags")) {

            } else {
                serverPanic("Unknown flag in disque cluster config file");
            }
            if (p) s = p+1;
        }


        if (atoi(argv[3])) n->ping_sent = mstime();
        if (atoi(argv[4])) n->pong_received = mstime();

        sdsfreesplitres(argv,argc);
    }

    if (server.cluster->myself == ((void*)0)) goto fmterr;

    zfree(line);
    fclose(fp);

    serverLog(LL_NOTICE,"Node configuration loaded, I'm %.40s", myself->name);
    return C_OK;

fmterr:
    serverLog(LL_WARNING,
        "Unrecoverable error: corrupted cluster config file.");
    zfree(line);
    if (fp) fclose(fp);
    exit(1);
}

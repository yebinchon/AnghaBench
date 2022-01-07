
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct cfil_db* so_cfil_db; } ;
struct cfil_db {int * cfdb_hashbase; int cfdb_hashmask; struct socket* cfdb_so; } ;
typedef int errno_t ;


 int CFILHASHSIZE ;
 int CFIL_LOG (int ,char*) ;
 int ENOMEM ;
 int LOG_INFO ;
 int M_CFIL ;
 int bzero (struct cfil_db*,int) ;
 int cfil_db_zone ;
 int * hashinit (int ,int ,int *) ;
 struct cfil_db* zalloc (int ) ;
 int zfree (int ,struct cfil_db*) ;

errno_t
cfil_db_init(struct socket *so)
{
    errno_t error = 0;
    struct cfil_db *db = ((void*)0);

    CFIL_LOG(LOG_INFO, "");

    db = zalloc(cfil_db_zone);
    if (db == ((void*)0)) {
        error = ENOMEM;
        goto done;
    }
    bzero(db, sizeof(struct cfil_db));
    db->cfdb_so = so;
    db->cfdb_hashbase = hashinit(CFILHASHSIZE, M_CFIL, &db->cfdb_hashmask);
    if (db->cfdb_hashbase == ((void*)0)) {
        zfree(cfil_db_zone, db);
        db = ((void*)0);
        error = ENOMEM;
        goto done;
    }

    so->so_cfil_db = db;

done:
    return (error);
}

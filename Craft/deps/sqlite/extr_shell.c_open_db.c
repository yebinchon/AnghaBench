
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct callback_data {scalar_t__ db; char* zDbFilename; } ;


 scalar_t__ SQLITE_OK ;
 int SQLITE_UTF8 ;
 scalar_t__ db ;
 int exit (int) ;
 int fprintf (int ,char*,char*,char*) ;
 int shellstaticFunc ;
 int sqlite3_create_function (scalar_t__,char*,int ,int ,int ,int ,int ,int ) ;
 int sqlite3_enable_load_extension (scalar_t__,int) ;
 scalar_t__ sqlite3_errcode (scalar_t__) ;
 char* sqlite3_errmsg (scalar_t__) ;
 int sqlite3_initialize () ;
 int sqlite3_open (char*,scalar_t__*) ;
 int stderr ;

__attribute__((used)) static void open_db(struct callback_data *p){
  if( p->db==0 ){
    sqlite3_initialize();
    sqlite3_open(p->zDbFilename, &p->db);
    db = p->db;
    if( db && sqlite3_errcode(db)==SQLITE_OK ){
      sqlite3_create_function(db, "shellstatic", 0, SQLITE_UTF8, 0,
          shellstaticFunc, 0, 0);
    }
    if( db==0 || SQLITE_OK!=sqlite3_errcode(db) ){
      fprintf(stderr,"Error: unable to open database \"%s\": %s\n",
          p->zDbFilename, sqlite3_errmsg(db));
      exit(1);
    }

    sqlite3_enable_load_extension(p->db, 1);

  }
}

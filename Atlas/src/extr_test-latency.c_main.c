
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char gchar ;


 int START_TIMING (char*,char const*,int) ;
 int STOP_TIMING (char*,char*) ;
 int g_log_set_default_handler (int ,int *) ;
 char* getenv_def (char*,char*) ;
 int log_func ;
 int test_server (char const*,int,...) ;

int main(int argc, char **argv) {
 int rounds;
 const gchar *user;
 const gchar *password;
 const gchar *db;
 const gchar *host;

 user = getenv_def("MYSQL_TEST_USER", "root");
 password = getenv_def("MYSQL_TEST_PASSWORD", "");
 db = getenv_def("MYSQL_TEST_DB", "test");
 host = getenv_def("MYSQL_TEST_HOST", "127.0.0.1");

 g_log_set_default_handler(log_func, ((void*)0));






 for (rounds = 0; rounds < 10; rounds++) {


  START_TIMING("%s:%d", host, 3306);
  test_server(host, 3306, user, password, db);
  STOP_TIMING("benchmark %s", "done");

  START_TIMING("%s:%d", host, 4040);
  test_server(host, 4040, user, password, db);
  STOP_TIMING("benchmark %s", "done");
 }

 return 0;
}

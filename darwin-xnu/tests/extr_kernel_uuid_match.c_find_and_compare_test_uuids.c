
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uuid_t ;
struct stat {int st_mode; } ;
struct TYPE_4__ {int gl_matchc; char** gl_pathv; } ;
typedef TYPE_1__ glob_t ;


 int S_IFREG ;
 int T_ASSERT_EQ (int,int ,char*,char*) ;
 int T_ASSERT_POSIX_SUCCESS (int,char*,char*) ;
 int T_EXPECT_TRUE (int,char*) ;
 int T_LOG (char*,char*) ;
 int T_WITH_ERRNO ;
 int glob (char*,int ,int *,TYPE_1__*) ;
 int globfree (TYPE_1__*) ;
 scalar_t__ parse_binary_uuid (char*,int ) ;
 int stat (char*,struct stat*) ;
 scalar_t__ uuid_compare (int ,int ) ;

__attribute__((used)) static void find_and_compare_test_uuids(char *search_path, uuid_t kuuid) {
 glob_t g;
 int ret = glob(search_path, 0, ((void*)0), &g);
 T_WITH_ERRNO; T_ASSERT_EQ(ret, 0, "glob %s", search_path);

 bool pass = 0;
 for (int i = 0; i < g.gl_matchc; i++) {
  char *path = g.gl_pathv[i];


  struct stat s;
  int ret = stat(path, &s);
  T_ASSERT_POSIX_SUCCESS(ret, "stat %s", path);
  if ((s.st_mode & S_IFREG) == 0) {
   continue;
  }

  T_LOG("Reading file at path: %s", path);
  uuid_t tuuid;
  if (parse_binary_uuid(path, tuuid) &&
    uuid_compare(kuuid, tuuid) == 0) {
   pass = 1;
   break;
  }
 }
 globfree(&g);
 T_EXPECT_TRUE(pass, "The sources match");
}

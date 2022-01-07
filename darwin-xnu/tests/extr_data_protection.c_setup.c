
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_CLOEXEC ;
 int O_CREAT ;
 int O_EXCL ;
 int O_RDWR ;
 scalar_t__ PATH_MAX ;
 int TEST_PASSCODE ;
 int T_ASSERT_EQ (int,int ,char*) ;
 int T_ASSERT_GE (int ,int ,char*) ;
 int T_ASSERT_NE (int,int,char*) ;
 int T_ASSERT_NOTNULL (int ,char*) ;
 int T_ATEND (int ) ;
 int T_LOG (char*,char*) ;
 int T_QUIET ;
 int T_SETUPBEGIN ;
 int T_SETUPEND ;
 int T_SKIP (char*) ;
 int T_WITH_ERRNO ;
 int bzero (int ,scalar_t__) ;
 int cleanup ;
 int g_dirpath ;
 int g_fd ;
 int g_filepath ;
 int g_subdirpath ;
 char* g_test_tempdir ;
 int has_passcode () ;
 int mkdtemp (char*) ;
 int open (int ,int,int) ;
 int set_passcode (int ,int *) ;
 scalar_t__ strlcat (int ,char*,scalar_t__) ;
 scalar_t__ strlcpy (int ,int ,scalar_t__) ;
 int supports_content_prot () ;

void
setup(void) {
 int ret = 0;
 int local_result = -1;

 T_SETUPBEGIN;

 T_ATEND(cleanup);

 T_WITH_ERRNO;
 T_ASSERT_NOTNULL(
  mkdtemp(g_test_tempdir),
  "Create temporary directory for test"
 );
 T_LOG("Test temp dir: %s", g_test_tempdir);

 T_ASSERT_NE(
  local_result = supports_content_prot(),
  -1,
  "Get content protection support status"
 );

 if(local_result == 0) {
  T_SKIP("Data protection not supported on this system");
 }

 T_ASSERT_EQ(
  has_passcode(),
  0,
  "Device should not have existing passcode"
 );

 T_ASSERT_EQ(
  set_passcode(TEST_PASSCODE, ((void*)0)),
  0,
  "Set test passcode"
 );

 bzero(g_filepath, PATH_MAX);
 bzero(g_dirpath, PATH_MAX);
 bzero(g_subdirpath, PATH_MAX);

 ret |= (strlcat(g_filepath, g_test_tempdir, PATH_MAX) == PATH_MAX);
 ret |= (strlcat(g_filepath, "/", PATH_MAX) == PATH_MAX);
 ret |= (strlcpy(g_dirpath, g_filepath, PATH_MAX) == PATH_MAX);
 ret |= (strlcat(g_filepath, "test_file", PATH_MAX) == PATH_MAX);
 ret |= (strlcat(g_dirpath, "test_dir/", PATH_MAX) == PATH_MAX);
 ret |= (strlcpy(g_subdirpath, g_dirpath, PATH_MAX) == PATH_MAX);
 ret |= (strlcat(g_subdirpath, "test_subdir/", PATH_MAX) == PATH_MAX);

 T_QUIET;
 T_ASSERT_EQ(ret, 0, "Initialize test path strings");

 T_WITH_ERRNO;
 T_ASSERT_GE(
  g_fd = open(g_filepath, O_CREAT|O_EXCL|O_RDWR|O_CLOEXEC, 0777),
  0,
  "Create test file"
 );

 T_SETUPEND;
}

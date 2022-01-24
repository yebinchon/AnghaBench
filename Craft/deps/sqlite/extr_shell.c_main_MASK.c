#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct callback_data {char* zDbFilename; char* separator; char* nullvalue; int showHeader; int echoOn; int statsOn; scalar_t__ db; int /*<<< orphan*/  mode; int /*<<< orphan*/  out; } ;
typedef  int /*<<< orphan*/  sqlite3_vfs ;
typedef  int sqlite3_int64 ;

/* Variables and functions */
 char* Argv0 ; 
 int /*<<< orphan*/  MODE_Column ; 
 int /*<<< orphan*/  MODE_Csv ; 
 int /*<<< orphan*/  MODE_Html ; 
 int /*<<< orphan*/  MODE_Line ; 
 int /*<<< orphan*/  MODE_List ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SQLITE_CONFIG_HEAP ; 
 int /*<<< orphan*/  SQLITE_CONFIG_MMAP_SIZE ; 
 char* SQLITE_SOURCE_ID ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int bail_on_error ; 
 char* FUNC1 (int,char**,int) ; 
 int FUNC2 (char*,struct callback_data*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 char* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (void*,char*,...) ; 
 scalar_t__ fputs ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (char const*) ; 
 int /*<<< orphan*/  interrupt_handler ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct callback_data*) ; 
 char* FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct callback_data*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,char*) ; 
 int FUNC14 (struct callback_data*,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct callback_data*,char const*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (struct callback_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  shell_callback ; 
 int FUNC18 (scalar_t__,char*,int /*<<< orphan*/ ,struct callback_data*,char**) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,...) ; 
 char* FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC24 (int,char*,char*,char*) ; 
 char* FUNC25 () ; 
 int /*<<< orphan*/ * FUNC26 (char*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int) ; 
 void* stderr ; 
 int /*<<< orphan*/  stdin ; 
 int stdin_is_interactive ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC28 (int) ; 
 scalar_t__ FUNC29 (char*,char*) ; 
 int FUNC30 (char*) ; 
 int /*<<< orphan*/  FUNC31 (int) ; 
 int /*<<< orphan*/  FUNC32 (char*) ; 

int FUNC33(int argc, char **argv){
  char *zErrMsg = 0;
  struct callback_data data;
  const char *zInitFile = 0;
  char *zFirstCmd = 0;
  int i;
  int rc = 0;

  if( FUNC29(FUNC25(),SQLITE_SOURCE_ID)!=0 ){
    FUNC5(stderr, "SQLite header and source version mismatch\n%s\n%s\n",
            FUNC25(), SQLITE_SOURCE_ID);
    FUNC3(1);
  }
  Argv0 = argv[0];
  FUNC9(&data);
  stdin_is_interactive = FUNC8(0);

  /* Make sure we have a valid signal handler early, before anything
  ** else is done.
  */
#ifdef SIGINT
  signal(SIGINT, interrupt_handler);
#endif

  /* Do an initial pass through the command-line argument to locate
  ** the name of the database file, the name of the initialization file,
  ** the size of the alternative malloc heap,
  ** and the first command to execute.
  */
  for(i=1; i<argc; i++){
    char *z;
    z = argv[i];
    if( z[0]!='-' ){
      if( data.zDbFilename==0 ){
        data.zDbFilename = z;
        continue;
      }
      if( zFirstCmd==0 ){
        zFirstCmd = z;
        continue;
      }
      FUNC5(stderr,"%s: Error: too many options: \"%s\"\n", Argv0, argv[i]);
      FUNC5(stderr,"Use -help for a list of options.\n");
      return 1;
    }
    if( z[1]=='-' ) z++;
    if( FUNC29(z,"-separator")==0
     || FUNC29(z,"-nullvalue")==0
     || FUNC29(z,"-cmd")==0
    ){
      (void)FUNC1(argc, argv, ++i);
    }else if( FUNC29(z,"-init")==0 ){
      zInitFile = FUNC1(argc, argv, ++i);
    }else if( FUNC29(z,"-batch")==0 ){
      /* Need to check for batch mode here to so we can avoid printing
      ** informational messages (like from process_sqliterc) before 
      ** we do the actual processing of arguments later in a second pass.
      */
      stdin_is_interactive = 0;
    }else if( FUNC29(z,"-heap")==0 ){
#if defined(SQLITE_ENABLE_MEMSYS3) || defined(SQLITE_ENABLE_MEMSYS5)
      int j, c;
      const char *zSize;
      sqlite3_int64 szHeap;

      zSize = cmdline_option_value(argc, argv, ++i);
      szHeap = integerValue(zSize);
      if( szHeap>0x7fff0000 ) szHeap = 0x7fff0000;
      sqlite3_config(SQLITE_CONFIG_HEAP, malloc((int)szHeap), (int)szHeap, 64);
#endif
#ifdef SQLITE_ENABLE_VFSTRACE
    }else if( strcmp(z,"-vfstrace")==0 ){
      extern int vfstrace_register(
         const char *zTraceName,
         const char *zOldVfsName,
         int (*xOut)(const char*,void*),
         void *pOutArg,
         int makeDefault
      );
      vfstrace_register("trace",0,(int(*)(const char*,void*))fputs,stderr,1);
#endif
#ifdef SQLITE_ENABLE_MULTIPLEX
    }else if( strcmp(z,"-multiplex")==0 ){
      extern int sqlite3_multiple_initialize(const char*,int);
      sqlite3_multiplex_initialize(0, 1);
#endif
    }else if( FUNC29(z,"-mmap")==0 ){
      sqlite3_int64 sz = FUNC7(FUNC1(argc,argv,++i));
      FUNC21(SQLITE_CONFIG_MMAP_SIZE, sz, sz);
    }else if( FUNC29(z,"-vfs")==0 ){
      sqlite3_vfs *pVfs = FUNC26(FUNC1(argc,argv,++i));
      if( pVfs ){
        FUNC27(pVfs, 1);
      }else{
        FUNC5(stderr, "no such VFS: \"%s\"\n", argv[i]);
        FUNC3(1);
      }
    }
  }
  if( data.zDbFilename==0 ){
#ifndef SQLITE_OMIT_MEMORYDB
    data.zDbFilename = ":memory:";
#else
    fprintf(stderr,"%s: Error: no database filename specified\n", Argv0);
    return 1;
#endif
  }
  data.out = stdout;

  /* Go ahead and open the database file if it already exists.  If the
  ** file does not exist, delay opening it.  This prevents empty database
  ** files from being created if a user mistypes the database name argument
  ** to the sqlite command-line tool.
  */
  if( FUNC0(data.zDbFilename, 0)==0 ){
    FUNC12(&data);
  }

  /* Process the initialization file if there is one.  If no -init option
  ** is given on the command line, look for a file named ~/.sqliterc and
  ** try to process it.
  */
  rc = FUNC15(&data,zInitFile);
  if( rc>0 ){
    return rc;
  }

  /* Make a second pass through the command-line argument and set
  ** options.  This second pass is delayed until after the initialization
  ** file is processed so that the command-line arguments will override
  ** settings in the initialization file.
  */
  for(i=1; i<argc; i++){
    char *z = argv[i];
    if( z[0]!='-' ) continue;
    if( z[1]=='-' ){ z++; }
    if( FUNC29(z,"-init")==0 ){
      i++;
    }else if( FUNC29(z,"-html")==0 ){
      data.mode = MODE_Html;
    }else if( FUNC29(z,"-list")==0 ){
      data.mode = MODE_List;
    }else if( FUNC29(z,"-line")==0 ){
      data.mode = MODE_Line;
    }else if( FUNC29(z,"-column")==0 ){
      data.mode = MODE_Column;
    }else if( FUNC29(z,"-csv")==0 ){
      data.mode = MODE_Csv;
      FUNC11(data.separator,",",2);
    }else if( FUNC29(z,"-separator")==0 ){
      FUNC24(sizeof(data.separator), data.separator,
                       "%s",FUNC1(argc,argv,++i));
    }else if( FUNC29(z,"-nullvalue")==0 ){
      FUNC24(sizeof(data.nullvalue), data.nullvalue,
                       "%s",FUNC1(argc,argv,++i));
    }else if( FUNC29(z,"-header")==0 ){
      data.showHeader = 1;
    }else if( FUNC29(z,"-noheader")==0 ){
      data.showHeader = 0;
    }else if( FUNC29(z,"-echo")==0 ){
      data.echoOn = 1;
    }else if( FUNC29(z,"-stats")==0 ){
      data.statsOn = 1;
    }else if( FUNC29(z,"-bail")==0 ){
      bail_on_error = 1;
    }else if( FUNC29(z,"-version")==0 ){
      FUNC13("%s %s\n", FUNC22(), FUNC25());
      return 0;
    }else if( FUNC29(z,"-interactive")==0 ){
      stdin_is_interactive = 1;
    }else if( FUNC29(z,"-batch")==0 ){
      stdin_is_interactive = 0;
    }else if( FUNC29(z,"-heap")==0 ){
      i++;
    }else if( FUNC29(z,"-mmap")==0 ){
      i++;
    }else if( FUNC29(z,"-vfs")==0 ){
      i++;
#ifdef SQLITE_ENABLE_VFSTRACE
    }else if( strcmp(z,"-vfstrace")==0 ){
      i++;
#endif
#ifdef SQLITE_ENABLE_MULTIPLEX
    }else if( strcmp(z,"-multiplex")==0 ){
      i++;
#endif
    }else if( FUNC29(z,"-help")==0 ){
      FUNC31(1);
    }else if( FUNC29(z,"-cmd")==0 ){
      if( i==argc-1 ) break;
      z = FUNC1(argc,argv,++i);
      if( z[0]=='.' ){
        rc = FUNC2(z, &data);
        if( rc && bail_on_error ) return rc==2 ? 0 : rc;
      }else{
        FUNC12(&data);
        rc = FUNC18(data.db, z, shell_callback, &data, &zErrMsg);
        if( zErrMsg!=0 ){
          FUNC5(stderr,"Error: %s\n", zErrMsg);
          if( bail_on_error ) return rc!=0 ? rc : 1;
        }else if( rc!=0 ){
          FUNC5(stderr,"Error: unable to process SQL \"%s\"\n", z);
          if( bail_on_error ) return rc;
        }
      }
    }else{
      FUNC5(stderr,"%s: Error: unknown option: %s\n", Argv0, z);
      FUNC5(stderr,"Use -help for a list of options.\n");
      return 1;
    }
  }

  if( zFirstCmd ){
    /* Run just the command that follows the database name
    */
    if( zFirstCmd[0]=='.' ){
      rc = FUNC2(zFirstCmd, &data);
      if( rc==2 ) rc = 0;
    }else{
      FUNC12(&data);
      rc = FUNC18(data.db, zFirstCmd, shell_callback, &data, &zErrMsg);
      if( zErrMsg!=0 ){
        FUNC5(stderr,"Error: %s\n", zErrMsg);
        return rc!=0 ? rc : 1;
      }else if( rc!=0 ){
        FUNC5(stderr,"Error: unable to process SQL \"%s\"\n", zFirstCmd);
        return rc;
      }
    }
  }else{
    /* Run commands received from standard input
    */
    if( stdin_is_interactive ){
      char *zHome;
      char *zHistory = 0;
      int nHistory;
      FUNC13(
        "SQLite version %s %.19s\n" /*extra-version-info*/
        "Enter \".help\" for instructions\n"
        "Enter SQL statements terminated with a \";\"\n",
        FUNC22(), FUNC25()
      );
      zHome = FUNC4();
      if( zHome ){
        nHistory = FUNC30(zHome) + 20;
        if( (zHistory = FUNC10(nHistory))!=0 ){
          FUNC24(nHistory, zHistory,"%s/.sqlite_history", zHome);
        }
      }
#if defined(HAVE_READLINE) && HAVE_READLINE==1
      if( zHistory ) read_history(zHistory);
#endif
      rc = FUNC14(&data, 0);
      if( zHistory ){
        FUNC28(100);
        FUNC32(zHistory);
        FUNC6(zHistory);
      }
    }else{
      rc = FUNC14(&data, stdin);
    }
  }
  FUNC17(&data, 0);
  if( data.db ){
    FUNC20(data.db);
  }
  return rc;
}
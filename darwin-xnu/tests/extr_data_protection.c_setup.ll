; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_data_protection.c_setup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_data_protection.c_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@T_SETUPBEGIN = common dso_local global i32 0, align 4
@cleanup = common dso_local global i32 0, align 4
@T_WITH_ERRNO = common dso_local global i32 0, align 4
@g_test_tempdir = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"Create temporary directory for test\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Test temp dir: %s\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Get content protection support status\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Data protection not supported on this system\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Device should not have existing passcode\00", align 1
@TEST_PASSCODE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"Set test passcode\00", align 1
@g_filepath = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i64 0, align 8
@g_dirpath = common dso_local global i32 0, align 4
@g_subdirpath = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"test_file\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"test_dir/\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"test_subdir/\00", align 1
@T_QUIET = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [29 x i8] c"Initialize test path strings\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@g_fd = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"Create test file\00", align 1
@T_SETUPEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 -1, i32* %2, align 4
  %3 = load i32, i32* @T_SETUPBEGIN, align 4
  %4 = load i32, i32* @cleanup, align 4
  %5 = call i32 @T_ATEND(i32 %4)
  %6 = load i32, i32* @T_WITH_ERRNO, align 4
  %7 = load i8*, i8** @g_test_tempdir, align 8
  %8 = call i32 @mkdtemp(i8* %7)
  %9 = call i32 @T_ASSERT_NOTNULL(i32 %8, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %10 = load i8*, i8** @g_test_tempdir, align 8
  %11 = call i32 @T_LOG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %10)
  %12 = call i32 (...) @supports_content_prot()
  store i32 %12, i32* %2, align 4
  %13 = call i32 @T_ASSERT_NE(i32 %12, i32 -1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %14 = load i32, i32* %2, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %0
  %17 = call i32 @T_SKIP(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %0
  %19 = call i32 (...) @has_passcode()
  %20 = call i32 @T_ASSERT_EQ(i32 %19, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %21 = load i32, i32* @TEST_PASSCODE, align 4
  %22 = call i32 @set_passcode(i32 %21, i32* null)
  %23 = call i32 @T_ASSERT_EQ(i32 %22, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %24 = load i32, i32* @g_filepath, align 4
  %25 = load i64, i64* @PATH_MAX, align 8
  %26 = call i32 @bzero(i32 %24, i64 %25)
  %27 = load i32, i32* @g_dirpath, align 4
  %28 = load i64, i64* @PATH_MAX, align 8
  %29 = call i32 @bzero(i32 %27, i64 %28)
  %30 = load i32, i32* @g_subdirpath, align 4
  %31 = load i64, i64* @PATH_MAX, align 8
  %32 = call i32 @bzero(i32 %30, i64 %31)
  %33 = load i32, i32* @g_filepath, align 4
  %34 = load i8*, i8** @g_test_tempdir, align 8
  %35 = load i64, i64* @PATH_MAX, align 8
  %36 = call i64 @strlcat(i32 %33, i8* %34, i64 %35)
  %37 = load i64, i64* @PATH_MAX, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* %1, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %1, align 4
  %42 = load i32, i32* @g_filepath, align 4
  %43 = load i64, i64* @PATH_MAX, align 8
  %44 = call i64 @strlcat(i32 %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i64 %43)
  %45 = load i64, i64* @PATH_MAX, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* %1, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %1, align 4
  %50 = load i32, i32* @g_dirpath, align 4
  %51 = load i32, i32* @g_filepath, align 4
  %52 = load i64, i64* @PATH_MAX, align 8
  %53 = call i64 @strlcpy(i32 %50, i32 %51, i64 %52)
  %54 = load i64, i64* @PATH_MAX, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* %1, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %1, align 4
  %59 = load i32, i32* @g_filepath, align 4
  %60 = load i64, i64* @PATH_MAX, align 8
  %61 = call i64 @strlcat(i32 %59, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i64 %60)
  %62 = load i64, i64* @PATH_MAX, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = load i32, i32* %1, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %1, align 4
  %67 = load i32, i32* @g_dirpath, align 4
  %68 = load i64, i64* @PATH_MAX, align 8
  %69 = call i64 @strlcat(i32 %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i64 %68)
  %70 = load i64, i64* @PATH_MAX, align 8
  %71 = icmp eq i64 %69, %70
  %72 = zext i1 %71 to i32
  %73 = load i32, i32* %1, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %1, align 4
  %75 = load i32, i32* @g_subdirpath, align 4
  %76 = load i32, i32* @g_dirpath, align 4
  %77 = load i64, i64* @PATH_MAX, align 8
  %78 = call i64 @strlcpy(i32 %75, i32 %76, i64 %77)
  %79 = load i64, i64* @PATH_MAX, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = load i32, i32* %1, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %1, align 4
  %84 = load i32, i32* @g_subdirpath, align 4
  %85 = load i64, i64* @PATH_MAX, align 8
  %86 = call i64 @strlcat(i32 %84, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i64 %85)
  %87 = load i64, i64* @PATH_MAX, align 8
  %88 = icmp eq i64 %86, %87
  %89 = zext i1 %88 to i32
  %90 = load i32, i32* %1, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %1, align 4
  %92 = load i32, i32* @T_QUIET, align 4
  %93 = load i32, i32* %1, align 4
  %94 = call i32 @T_ASSERT_EQ(i32 %93, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  %95 = load i32, i32* @T_WITH_ERRNO, align 4
  %96 = load i32, i32* @g_filepath, align 4
  %97 = load i32, i32* @O_CREAT, align 4
  %98 = load i32, i32* @O_EXCL, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @O_RDWR, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @O_CLOEXEC, align 4
  %103 = or i32 %101, %102
  %104 = call i32 @open(i32 %96, i32 %103, i32 511)
  store i32 %104, i32* @g_fd, align 4
  %105 = call i32 @T_ASSERT_GE(i32 %104, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  %106 = load i32, i32* @T_SETUPEND, align 4
  ret void
}

declare dso_local i32 @T_ATEND(i32) #1

declare dso_local i32 @T_ASSERT_NOTNULL(i32, i8*) #1

declare dso_local i32 @mkdtemp(i8*) #1

declare dso_local i32 @T_LOG(i8*, i8*) #1

declare dso_local i32 @T_ASSERT_NE(i32, i32, i8*) #1

declare dso_local i32 @supports_content_prot(...) #1

declare dso_local i32 @T_SKIP(i8*) #1

declare dso_local i32 @T_ASSERT_EQ(i32, i32, i8*) #1

declare dso_local i32 @has_passcode(...) #1

declare dso_local i32 @set_passcode(i32, i32*) #1

declare dso_local i32 @bzero(i32, i64) #1

declare dso_local i64 @strlcat(i32, i8*, i64) #1

declare dso_local i64 @strlcpy(i32, i32, i64) #1

declare dso_local i32 @T_ASSERT_GE(i32, i32, i8*) #1

declare dso_local i32 @open(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/esp-idf/components/fatfs/test/extr_test_fatfs_common.c_test_fatfs_utime.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/fatfs/test/extr_test_fatfs_common.c_test_fatfs_utime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32 }
%struct.utimbuf = type { i8*, i32 }
%struct.timeval = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Testing mod. time: %s\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Mod. time changed to (false actual time): %s\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_fatfs_utime(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stat, align 4
  %6 = alloca %struct.tm, align 4
  %7 = alloca %struct.utimbuf, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.timeval, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = bitcast %struct.utimbuf* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 16, i1 false)
  store i32 0, i32* %8, align 4
  %11 = call i32 @memset(%struct.tm* %6, i32 0, i32 24)
  %12 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 0
  store i32 9, i32* %12, align 4
  %13 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 1
  store i32 31, i32* %13, align 4
  %14 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 2
  store i32 118, i32* %14, align 4
  %15 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 3
  store i32 10, i32* %15, align 4
  %16 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 4
  store i32 35, i32* %16, align 4
  %17 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 5
  store i32 23, i32* %17, align 4
  %18 = call i8* @mktime(%struct.tm* %6)
  %19 = ptrtoint i8* %18 to i32
  store i32 %19, i32* %8, align 4
  %20 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %20, align 4
  %22 = call i32 @settimeofday(%struct.timeval* %9, i32* null)
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @test_fatfs_create_file_with_text(i8* %23, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %25 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 0
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 1
  store i32 1, i32* %26, align 4
  %27 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 2
  store i32 80, i32* %27, align 4
  %28 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 3
  store i32 0, i32* %28, align 4
  %29 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 4
  store i32 0, i32* %29, align 4
  %30 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 5
  store i32 0, i32* %30, align 4
  %31 = call i8* @asctime(%struct.tm* %6)
  %32 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  %33 = call i8* @mktime(%struct.tm* %6)
  %34 = getelementptr inbounds %struct.utimbuf, %struct.utimbuf* %7, i32 0, i32 0
  store i8* %33, i8** %34, align 8
  %35 = load i8*, i8** %3, align 8
  %36 = call i32 @utime(i8* %35, %struct.utimbuf* %7)
  %37 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %36)
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 @stat(i8* %38, %struct.stat* %5)
  %40 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %39)
  %41 = getelementptr inbounds %struct.utimbuf, %struct.utimbuf* %7, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @TEST_ASSERT_EQUAL_UINT32(i8* %42, i32 %44)
  %46 = load i8*, i8** %3, align 8
  %47 = call i32 @utime(i8* %46, %struct.utimbuf* null)
  %48 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %47)
  %49 = load i8*, i8** %3, align 8
  %50 = call i32 @stat(i8* %49, %struct.stat* %5)
  %51 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %50)
  %52 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %53 = call i8* @ctime(i32* %52)
  %54 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i8* %53)
  %55 = getelementptr inbounds %struct.utimbuf, %struct.utimbuf* %7, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @TEST_ASSERT_NOT_EQUAL(i8* %56, i32 %58)
  %60 = load i32, i32* %8, align 4
  %61 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %60, %62
  %64 = icmp sle i32 %63, 2
  %65 = zext i1 %64 to i32
  %66 = call i32 @TEST_ASSERT(i32 %65)
  %67 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 0
  store i32 11, i32* %67, align 4
  %68 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 1
  store i32 31, i32* %68, align 4
  %69 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 2
  store i32 137, i32* %69, align 4
  %70 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 3
  store i32 23, i32* %70, align 4
  %71 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 4
  store i32 59, i32* %71, align 4
  %72 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 5
  store i32 8, i32* %72, align 4
  %73 = call i8* @asctime(%struct.tm* %6)
  %74 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %73)
  %75 = call i8* @mktime(%struct.tm* %6)
  %76 = getelementptr inbounds %struct.utimbuf, %struct.utimbuf* %7, i32 0, i32 0
  store i8* %75, i8** %76, align 8
  %77 = load i8*, i8** %3, align 8
  %78 = call i32 @utime(i8* %77, %struct.utimbuf* %7)
  %79 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %78)
  %80 = load i8*, i8** %3, align 8
  %81 = call i32 @stat(i8* %80, %struct.stat* %5)
  %82 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %81)
  %83 = getelementptr inbounds %struct.utimbuf, %struct.utimbuf* %7, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @TEST_ASSERT_EQUAL_UINT32(i8* %84, i32 %86)
  %88 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 0
  store i32 0, i32* %88, align 4
  %89 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 1
  store i32 1, i32* %89, align 4
  %90 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 2
  store i32 70, i32* %90, align 4
  %91 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 3
  store i32 0, i32* %91, align 4
  %92 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 4
  store i32 0, i32* %92, align 4
  %93 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 5
  store i32 0, i32* %93, align 4
  %94 = call i8* @asctime(%struct.tm* %6)
  %95 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %94)
  %96 = call i8* @mktime(%struct.tm* %6)
  %97 = getelementptr inbounds %struct.utimbuf, %struct.utimbuf* %7, i32 0, i32 0
  store i8* %96, i8** %97, align 8
  %98 = load i8*, i8** %3, align 8
  %99 = call i32 @utime(i8* %98, %struct.utimbuf* %7)
  %100 = call i32 @TEST_ASSERT_EQUAL(i32 -1, i32 %99)
  %101 = load i32, i32* @EINVAL, align 4
  %102 = load i32, i32* @errno, align 4
  %103 = call i32 @TEST_ASSERT_EQUAL(i32 %101, i32 %102)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.tm*, i32, i32) #2

declare dso_local i8* @mktime(%struct.tm*) #2

declare dso_local i32 @settimeofday(%struct.timeval*, i32*) #2

declare dso_local i32 @test_fatfs_create_file_with_text(i8*, i8*) #2

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i8* @asctime(%struct.tm*) #2

declare dso_local i32 @TEST_ASSERT_EQUAL(i32, i32) #2

declare dso_local i32 @utime(i8*, %struct.utimbuf*) #2

declare dso_local i32 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @TEST_ASSERT_EQUAL_UINT32(i8*, i32) #2

declare dso_local i8* @ctime(i32*) #2

declare dso_local i32 @TEST_ASSERT_NOT_EQUAL(i8*, i32) #2

declare dso_local i32 @TEST_ASSERT(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

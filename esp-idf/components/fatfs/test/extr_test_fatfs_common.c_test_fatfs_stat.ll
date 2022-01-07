; ModuleID = '/home/carl/AnghaBench/esp-idf/components/fatfs/test/extr_test_fatfs_common.c_test_fatfs_stat.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/fatfs/test/extr_test_fatfs_common.c_test_fatfs_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32 }
%struct.timeval = type { i64 }
%struct.stat = type { i32, i64 }

@.str = private unnamed_addr constant [17 x i8] c"Setting time: %s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"foo\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"File time: %s\00", align 1
@S_IFREG = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_fatfs_stat(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tm, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.timeval, align 8
  %8 = alloca %struct.stat, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.tm, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 0
  store i32 117, i32* %11, align 4
  %12 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 1
  store i32 11, i32* %12, align 4
  %13 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 2
  store i32 8, i32* %13, align 4
  %14 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 3
  store i32 19, i32* %14, align 4
  %15 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 4
  store i32 51, i32* %15, align 4
  %16 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 5
  store i32 10, i32* %16, align 4
  %17 = call i64 @mktime(%struct.tm* %5)
  store i64 %17, i64* %6, align 8
  %18 = call i8* @asctime(%struct.tm* %5)
  %19 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %21 = load i64, i64* %6, align 8
  store i64 %21, i64* %20, align 8
  %22 = call i32 @settimeofday(%struct.timeval* %7, i32* null)
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @test_fatfs_create_file_with_text(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 @stat(i8* %25, %struct.stat* %8)
  %27 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %26)
  %28 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %9, align 8
  %30 = call i32 @localtime_r(i64* %9, %struct.tm* %10)
  %31 = call i8* @asctime(%struct.tm* %10)
  %32 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %31)
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* %6, align 8
  %35 = sub nsw i64 %33, %34
  %36 = call i32 @abs(i64 %35)
  %37 = icmp slt i32 %36, 2
  %38 = zext i1 %37 to i32
  %39 = call i32 @TEST_ASSERT(i32 %38)
  %40 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @S_IFREG, align 4
  %43 = and i32 %41, %42
  %44 = call i32 @TEST_ASSERT(i32 %43)
  %45 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @S_IFDIR, align 4
  %48 = and i32 %46, %47
  %49 = call i32 @TEST_ASSERT_FALSE(i32 %48)
  %50 = call i32 @memset(%struct.stat* %8, i32 0, i32 16)
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 @stat(i8* %51, %struct.stat* %8)
  %53 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %52)
  %54 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @S_IFDIR, align 4
  %57 = and i32 %55, %56
  %58 = call i32 @TEST_ASSERT(i32 %57)
  %59 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @S_IFREG, align 4
  %62 = and i32 %60, %61
  %63 = call i32 @TEST_ASSERT_FALSE(i32 %62)
  ret void
}

declare dso_local i64 @mktime(%struct.tm*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @asctime(%struct.tm*) #1

declare dso_local i32 @settimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @test_fatfs_create_file_with_text(i8*, i8*) #1

declare dso_local i32 @TEST_ASSERT_EQUAL(i32, i32) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @localtime_r(i64*, %struct.tm*) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i32 @abs(i64) #1

declare dso_local i32 @TEST_ASSERT_FALSE(i32) #1

declare dso_local i32 @memset(%struct.stat*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

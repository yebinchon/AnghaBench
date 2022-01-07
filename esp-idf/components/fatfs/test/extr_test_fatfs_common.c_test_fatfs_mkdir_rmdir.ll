; ModuleID = '/home/carl/AnghaBench/esp-idf/components/fatfs/test/extr_test_fatfs_common.c_test_fatfs_mkdir_rmdir.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/fatfs/test/extr_test_fatfs_common.c_test_fatfs_mkdir_rmdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s1\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s2\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%s2/1.txt\00", align 1
@S_IFDIR = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"foo\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_fatfs_mkdir_rmdir(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [64 x i8], align 16
  %4 = alloca [64 x i8], align 16
  %5 = alloca [64 x i8], align 16
  %6 = alloca %struct.stat, align 4
  store i8* %0, i8** %2, align 8
  %7 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %8 = load i8*, i8** %2, align 8
  %9 = call i32 @snprintf(i8* %7, i32 64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %8)
  %10 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @snprintf(i8* %10, i32 64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %11)
  %13 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %14 = load i8*, i8** %2, align 8
  %15 = call i32 @snprintf(i8* %13, i32 64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %14)
  %16 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %17 = call i32 @mkdir(i8* %16, i32 493)
  %18 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %17)
  %19 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %20 = call i32 @stat(i8* %19, %struct.stat* %6)
  %21 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %20)
  %22 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @S_IFDIR, align 4
  %25 = and i32 %23, %24
  %26 = call i32 @TEST_ASSERT_TRUE(i32 %25)
  %27 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @S_IFREG, align 4
  %30 = and i32 %28, %29
  %31 = call i32 @TEST_ASSERT_FALSE(i32 %30)
  %32 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %33 = call i32 @rmdir(i8* %32)
  %34 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %33)
  %35 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %36 = call i32 @stat(i8* %35, %struct.stat* %6)
  %37 = call i32 @TEST_ASSERT_EQUAL(i32 -1, i32 %36)
  %38 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %39 = call i32 @mkdir(i8* %38, i32 493)
  %40 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %39)
  %41 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %42 = call i32 @test_fatfs_create_file_with_text(i8* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %43 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %44 = call i32 @stat(i8* %43, %struct.stat* %6)
  %45 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %44)
  %46 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @S_IFDIR, align 4
  %49 = and i32 %47, %48
  %50 = call i32 @TEST_ASSERT_TRUE(i32 %49)
  %51 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @S_IFREG, align 4
  %54 = and i32 %52, %53
  %55 = call i32 @TEST_ASSERT_FALSE(i32 %54)
  %56 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %57 = call i32 @stat(i8* %56, %struct.stat* %6)
  %58 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %57)
  %59 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @S_IFDIR, align 4
  %62 = and i32 %60, %61
  %63 = call i32 @TEST_ASSERT_FALSE(i32 %62)
  %64 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @S_IFREG, align 4
  %67 = and i32 %65, %66
  %68 = call i32 @TEST_ASSERT_TRUE(i32 %67)
  %69 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %70 = call i32 @rmdir(i8* %69)
  %71 = call i32 @TEST_ASSERT_EQUAL(i32 -1, i32 %70)
  %72 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %73 = call i32 @unlink(i8* %72)
  %74 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %73)
  %75 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %76 = call i32 @rmdir(i8* %75)
  %77 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %76)
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @TEST_ASSERT_EQUAL(i32, i32) #1

declare dso_local i32 @mkdir(i8*, i32) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @TEST_ASSERT_TRUE(i32) #1

declare dso_local i32 @TEST_ASSERT_FALSE(i32) #1

declare dso_local i32 @rmdir(i8*) #1

declare dso_local i32 @test_fatfs_create_file_with_text(i8*, i8*) #1

declare dso_local i32 @unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/esp-idf/components/fatfs/test/extr_test_fatfs_common.c_test_fatfs_truncate_file.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/fatfs/test/extr_test_fatfs_common.c_test_fatfs_truncate_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_fatfs_truncate_file.input = private unnamed_addr constant [27 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZ\00", align 16
@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@errno = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@__const.test_fatfs_truncate_file.truncated_1 = private unnamed_addr constant [11 x i8] c"ABCDEFGHIJ\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@__const.test_fatfs_truncate_file.truncated_2 = private unnamed_addr constant [6 x i8] c"ABCDE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_fatfs_truncate_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [27 x i8], align 16
  %6 = alloca [27 x i8], align 16
  %7 = alloca i32*, align 8
  %8 = alloca [11 x i8], align 1
  %9 = alloca [6 x i8], align 1
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %10 = bitcast [27 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 getelementptr inbounds ([27 x i8], [27 x i8]* @__const.test_fatfs_truncate_file.input, i32 0, i32 0), i64 27, i1 false)
  %11 = load i8*, i8** %2, align 8
  %12 = call i32* @fopen(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %12, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i32 @TEST_ASSERT_NOT_NULL(i32* %13)
  %15 = getelementptr inbounds [27 x i8], [27 x i8]* %5, i64 0, i64 0
  %16 = call i32 @strlen(i8* %15)
  %17 = load i32*, i32** %7, align 8
  %18 = getelementptr inbounds [27 x i8], [27 x i8]* %5, i64 0, i64 0
  %19 = call i32 @fprintf(i32* %17, i8* %18)
  %20 = call i32 @TEST_ASSERT_EQUAL(i32 %16, i32 %19)
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @fclose(i32* %21)
  %23 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %22)
  %24 = load i8*, i8** %2, align 8
  %25 = getelementptr inbounds [27 x i8], [27 x i8]* %5, i64 0, i64 0
  %26 = call i32 @strlen(i8* %25)
  %27 = add nsw i32 %26, 1
  %28 = call i32 @truncate(i8* %24, i32 %27)
  %29 = call i32 @TEST_ASSERT_EQUAL(i32 -1, i32 %28)
  %30 = load i32, i32* @errno, align 4
  %31 = load i32, i32* @EPERM, align 4
  %32 = call i32 @TEST_ASSERT_EQUAL(i32 %30, i32 %31)
  %33 = load i8*, i8** %2, align 8
  %34 = call i32 @truncate(i8* %33, i32 -1)
  %35 = call i32 @TEST_ASSERT_EQUAL(i32 -1, i32 %34)
  %36 = load i32, i32* @errno, align 4
  %37 = load i32, i32* @EPERM, align 4
  %38 = call i32 @TEST_ASSERT_EQUAL(i32 %36, i32 %37)
  %39 = bitcast [11 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %39, i8* align 1 getelementptr inbounds ([11 x i8], [11 x i8]* @__const.test_fatfs_truncate_file.truncated_1, i32 0, i32 0), i64 11, i1 false)
  %40 = getelementptr inbounds [11 x i8], [11 x i8]* %8, i64 0, i64 0
  %41 = call i32 @strlen(i8* %40)
  store i32 %41, i32* %4, align 4
  %42 = load i8*, i8** %2, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @truncate(i8* %42, i32 %43)
  %45 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %44)
  %46 = load i8*, i8** %2, align 8
  %47 = call i32* @fopen(i8* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %47, i32** %7, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @TEST_ASSERT_NOT_NULL(i32* %48)
  %50 = getelementptr inbounds [27 x i8], [27 x i8]* %6, i64 0, i64 0
  %51 = call i32 @memset(i8* %50, i32 0, i32 27)
  %52 = getelementptr inbounds [27 x i8], [27 x i8]* %6, i64 0, i64 0
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @fread(i8* %52, i32 1, i32 27, i32* %53)
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @TEST_ASSERT_EQUAL(i32 %55, i32 %56)
  %58 = getelementptr inbounds [11 x i8], [11 x i8]* %8, i64 0, i64 0
  %59 = getelementptr inbounds [27 x i8], [27 x i8]* %6, i64 0, i64 0
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @TEST_ASSERT_EQUAL_STRING_LEN(i8* %58, i8* %59, i32 %60)
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @fclose(i32* %62)
  %64 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %63)
  %65 = load i8*, i8** %2, align 8
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  %68 = call i32 @truncate(i8* %65, i32 %67)
  %69 = call i32 @TEST_ASSERT_EQUAL(i32 -1, i32 %68)
  %70 = load i32, i32* @EPERM, align 4
  %71 = load i32, i32* @errno, align 4
  %72 = call i32 @TEST_ASSERT_EQUAL(i32 %70, i32 %71)
  %73 = load i8*, i8** %2, align 8
  %74 = getelementptr inbounds [27 x i8], [27 x i8]* %5, i64 0, i64 0
  %75 = call i32 @strlen(i8* %74)
  %76 = call i32 @truncate(i8* %73, i32 %75)
  %77 = call i32 @TEST_ASSERT_EQUAL(i32 -1, i32 %76)
  %78 = load i32, i32* @EPERM, align 4
  %79 = load i32, i32* @errno, align 4
  %80 = call i32 @TEST_ASSERT_EQUAL(i32 %78, i32 %79)
  %81 = load i8*, i8** %2, align 8
  %82 = getelementptr inbounds [27 x i8], [27 x i8]* %5, i64 0, i64 0
  %83 = call i32 @strlen(i8* %82)
  %84 = add nsw i32 %83, 1
  %85 = call i32 @truncate(i8* %81, i32 %84)
  %86 = call i32 @TEST_ASSERT_EQUAL(i32 -1, i32 %85)
  %87 = load i32, i32* @EPERM, align 4
  %88 = load i32, i32* @errno, align 4
  %89 = call i32 @TEST_ASSERT_EQUAL(i32 %87, i32 %88)
  %90 = load i8*, i8** %2, align 8
  %91 = call i32 @truncate(i8* %90, i32 -1)
  %92 = call i32 @TEST_ASSERT_EQUAL(i32 -1, i32 %91)
  %93 = load i32, i32* @EPERM, align 4
  %94 = load i32, i32* @errno, align 4
  %95 = call i32 @TEST_ASSERT_EQUAL(i32 %93, i32 %94)
  %96 = bitcast [6 x i8]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %96, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.test_fatfs_truncate_file.truncated_2, i32 0, i32 0), i64 6, i1 false)
  %97 = getelementptr inbounds [6 x i8], [6 x i8]* %9, i64 0, i64 0
  %98 = call i32 @strlen(i8* %97)
  store i32 %98, i32* %4, align 4
  %99 = load i8*, i8** %2, align 8
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @truncate(i8* %99, i32 %100)
  %102 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %101)
  %103 = load i8*, i8** %2, align 8
  %104 = call i32* @fopen(i8* %103, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %104, i32** %7, align 8
  %105 = load i32*, i32** %7, align 8
  %106 = call i32 @TEST_ASSERT_NOT_NULL(i32* %105)
  %107 = getelementptr inbounds [27 x i8], [27 x i8]* %6, i64 0, i64 0
  %108 = call i32 @memset(i8* %107, i32 0, i32 27)
  %109 = getelementptr inbounds [27 x i8], [27 x i8]* %6, i64 0, i64 0
  %110 = load i32*, i32** %7, align 8
  %111 = call i32 @fread(i8* %109, i32 1, i32 27, i32* %110)
  store i32 %111, i32* %3, align 4
  %112 = load i32, i32* %4, align 4
  %113 = load i32, i32* %3, align 4
  %114 = call i32 @TEST_ASSERT_EQUAL(i32 %112, i32 %113)
  %115 = getelementptr inbounds [6 x i8], [6 x i8]* %9, i64 0, i64 0
  %116 = getelementptr inbounds [27 x i8], [27 x i8]* %6, i64 0, i64 0
  %117 = load i32, i32* %4, align 4
  %118 = call i32 @TEST_ASSERT_EQUAL_STRING_LEN(i8* %115, i8* %116, i32 %117)
  %119 = load i32*, i32** %7, align 8
  %120 = call i32 @fclose(i32* %119)
  %121 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %120)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @TEST_ASSERT_NOT_NULL(i32*) #2

declare dso_local i32 @TEST_ASSERT_EQUAL(i32, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @fprintf(i32*, i8*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @truncate(i8*, i32) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @fread(i8*, i32, i32, i32*) #2

declare dso_local i32 @TEST_ASSERT_EQUAL_STRING_LEN(i8*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

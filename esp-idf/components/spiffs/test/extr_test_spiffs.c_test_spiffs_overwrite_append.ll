; ModuleID = '/home/carl/AnghaBench/esp-idf/components/spiffs/test/extr_test_spiffs.c_test_spiffs_overwrite_append.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/spiffs/test/extr_test_spiffs.c_test_spiffs_overwrite_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"aaaa\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@EOF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"bbbb\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"aaaabbbb\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"cccc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_spiffs_overwrite_append(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [10 x i8], align 1
  %5 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i32 @test_spiffs_create_file_with_text(i8* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %8 = load i8*, i8** %2, align 8
  %9 = call i32* @fopen(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %9, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @TEST_ASSERT_NOT_NULL(i32* %10)
  %12 = load i32, i32* @EOF, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %13)
  %15 = call i32 @TEST_ASSERT_NOT_EQUAL(i32 %12, i32 %14)
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @fclose(i32* %16)
  %18 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %17)
  %19 = bitcast [10 x i8]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %19, i8 0, i64 10, i1 false)
  %20 = load i8*, i8** %2, align 8
  %21 = call i32* @fopen(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %21, i32** %5, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @TEST_ASSERT_NOT_NULL(i32* %22)
  %24 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @fread(i8* %24, i32 1, i32 8, i32* %25)
  %27 = call i32 @TEST_ASSERT_EQUAL(i32 8, i32 %26)
  %28 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  %29 = call i32 @TEST_ASSERT_EQUAL_STRING_LEN(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %28, i32 8)
  %30 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @fread(i8* %30, i32 1, i32 8, i32* %31)
  %33 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %32)
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @fclose(i32* %34)
  %36 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %35)
  %37 = load i8*, i8** %2, align 8
  %38 = call i32 @test_spiffs_create_file_with_text(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %39 = load i8*, i8** %2, align 8
  %40 = call i32* @fopen(i8* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %40, i32** %5, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @TEST_ASSERT_NOT_NULL(i32* %41)
  %43 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  %44 = call i32 @bzero(i8* %43, i32 10)
  %45 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @fread(i8* %45, i32 1, i32 8, i32* %46)
  %48 = call i32 @TEST_ASSERT_EQUAL(i32 4, i32 %47)
  %49 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  %50 = call i32 @TEST_ASSERT_EQUAL_STRING_LEN(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %49, i32 4)
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @fclose(i32* %51)
  %53 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %52)
  ret void
}

declare dso_local i32 @test_spiffs_create_file_with_text(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @TEST_ASSERT_NOT_NULL(i32*) #1

declare dso_local i32 @TEST_ASSERT_NOT_EQUAL(i32, i32) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @TEST_ASSERT_EQUAL(i32, i32) #1

declare dso_local i32 @fclose(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @TEST_ASSERT_EQUAL_STRING_LEN(i8*, i8*, i32) #1

declare dso_local i32 @bzero(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

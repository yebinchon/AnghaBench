; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib541.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib541.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@CURLE_OK = common dso_local global i64 0, align 8
@libtest_arg2 = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Usage: <url> <file-to-upload>\0A\00", align 1
@TEST_ERR_USAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"fopen failed with error: %d %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Error opening file: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"fstat() failed with error: %d %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"ERROR: cannot open file %s\0A\00", align 1
@TEST_ERR_MAJOR_BAD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"ERROR: file %s has zero size!\0A\00", align 1
@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"curl_global_init() failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"curl_easy_init() failed\0A\00", align 1
@CURLOPT_UPLOAD = common dso_local global i32 0, align 4
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_READDATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i64, i64* @CURLE_OK, align 8
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %5, align 4
  %11 = load i8*, i8** @libtest_arg2, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @stderr, align 4
  %15 = call i32 (i32, i8*, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @TEST_ERR_USAGE, align 4
  store i32 %16, i32* %2, align 4
  br label %108

17:                                               ; preds = %1
  %18 = load i8*, i8** @libtest_arg2, align 8
  %19 = call i8* @fopen(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = icmp eq i8* null, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = load i32, i32* @stderr, align 4
  %24 = load i32, i32* @errno, align 4
  %25 = load i32, i32* @errno, align 4
  %26 = call i8* @strerror(i32 %25)
  %27 = call i32 (i32, i8*, ...) @fprintf(i32 %23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %24, i8* %26)
  %28 = load i32, i32* @stderr, align 4
  %29 = load i8*, i8** @libtest_arg2, align 8
  %30 = call i32 (i32, i8*, ...) @fprintf(i32 %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %29)
  store i32 -2, i32* %2, align 4
  br label %108

31:                                               ; preds = %17
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @fileno(i8* %32)
  %34 = call i32 @fstat(i32 %33, %struct.TYPE_3__* %8)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %49

37:                                               ; preds = %31
  %38 = load i32, i32* @stderr, align 4
  %39 = load i32, i32* @errno, align 4
  %40 = load i32, i32* @errno, align 4
  %41 = call i8* @strerror(i32 %40)
  %42 = call i32 (i32, i8*, ...) @fprintf(i32 %38, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %39, i8* %41)
  %43 = load i32, i32* @stderr, align 4
  %44 = load i8*, i8** @libtest_arg2, align 8
  %45 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %44)
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @fclose(i8* %46)
  %48 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %48, i32* %2, align 4
  br label %108

49:                                               ; preds = %31
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* @stderr, align 4
  %55 = load i8*, i8** @libtest_arg2, align 8
  %56 = call i32 (i32, i8*, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8* %55)
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @fclose(i8* %57)
  %59 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %59, i32* %2, align 4
  br label %108

60:                                               ; preds = %49
  %61 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %62 = call i64 @curl_global_init(i32 %61)
  %63 = load i64, i64* @CURLE_OK, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load i32, i32* @stderr, align 4
  %67 = call i32 (i32, i8*, ...) @fprintf(i32 %66, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %68 = load i8*, i8** %6, align 8
  %69 = call i32 @fclose(i8* %68)
  %70 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %70, i32* %2, align 4
  br label %108

71:                                               ; preds = %60
  %72 = call i32* (...) @curl_easy_init()
  store i32* %72, i32** %4, align 8
  %73 = load i32*, i32** %4, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %82, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* @stderr, align 4
  %77 = call i32 (i32, i8*, ...) @fprintf(i32 %76, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %78 = call i32 (...) @curl_global_cleanup()
  %79 = load i8*, i8** %6, align 8
  %80 = call i32 @fclose(i8* %79)
  %81 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %81, i32* %2, align 4
  br label %108

82:                                               ; preds = %71
  %83 = load i32*, i32** %4, align 8
  %84 = load i32, i32* @CURLOPT_UPLOAD, align 4
  %85 = call i32 (i32*, i32, ...) @test_setopt(i32* %83, i32 %84, i64 1)
  %86 = load i32*, i32** %4, align 8
  %87 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %88 = call i32 (i32*, i32, ...) @test_setopt(i32* %86, i32 %87, i64 1)
  %89 = load i32*, i32** %4, align 8
  %90 = load i32, i32* @CURLOPT_URL, align 4
  %91 = load i8*, i8** %3, align 8
  %92 = call i32 (i32*, i32, ...) @test_setopt(i32* %89, i32 %90, i8* %91)
  %93 = load i32*, i32** %4, align 8
  %94 = load i32, i32* @CURLOPT_READDATA, align 4
  %95 = load i8*, i8** %6, align 8
  %96 = call i32 (i32*, i32, ...) @test_setopt(i32* %93, i32 %94, i8* %95)
  %97 = load i32*, i32** %4, align 8
  %98 = call i32 @curl_easy_perform(i32* %97)
  %99 = load i32*, i32** %4, align 8
  %100 = call i32 @curl_easy_perform(i32* %99)
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %82
  %102 = load i8*, i8** %6, align 8
  %103 = call i32 @fclose(i8* %102)
  %104 = load i32*, i32** %4, align 8
  %105 = call i32 @curl_easy_cleanup(i32* %104)
  %106 = call i32 (...) @curl_global_cleanup()
  %107 = load i32, i32* %5, align 4
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %101, %75, %65, %53, %37, %22, %13
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @fopen(i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @fstat(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @fileno(i8*) #1

declare dso_local i32 @fclose(i8*) #1

declare dso_local i64 @curl_global_init(i32) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @curl_global_cleanup(...) #1

declare dso_local i32 @test_setopt(i32*, i32, ...) #1

declare dso_local i32 @curl_easy_perform(i32*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

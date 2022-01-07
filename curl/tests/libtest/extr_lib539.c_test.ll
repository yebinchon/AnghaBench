; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib539.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib539.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curl_slist = type opaque

@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"curl_global_init() failed\0A\00", align 1
@TEST_ERR_MAJOR_BAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"curl_easy_init() failed\0A\00", align 1
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@CURLOPT_FTP_FILEMETHOD = common dso_local global i32 0, align 4
@CURLFTPMETHOD_SINGLECWD = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"%s./\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"SYST\00", align 1
@CURLFTPMETHOD_NOCWD = common dso_local global i64 0, align 8
@CURLOPT_QUOTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.curl_slist*, align 8
  store i8* %0, i8** %3, align 8
  store i8* null, i8** %6, align 8
  store %struct.curl_slist* null, %struct.curl_slist** %7, align 8
  %8 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %9 = call i64 @curl_global_init(i32 %8)
  %10 = load i64, i64* @CURLE_OK, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* @stderr, align 4
  %14 = call i32 @fprintf(i32 %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %15, i32* %2, align 4
  br label %86

16:                                               ; preds = %1
  %17 = call i32* (...) @curl_easy_init()
  store i32* %17, i32** %5, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @stderr, align 4
  %22 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i32 (...) @curl_global_cleanup()
  %24 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %24, i32* %2, align 4
  br label %86

25:                                               ; preds = %16
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* @CURLOPT_URL, align 4
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 (i32*, i32, ...) @test_setopt(i32* %26, i32 %27, i8* %28)
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %32 = call i32 (i32*, i32, ...) @test_setopt(i32* %30, i32 %31, i64 1)
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* @CURLOPT_FTP_FILEMETHOD, align 4
  %35 = load i64, i64* @CURLFTPMETHOD_SINGLECWD, align 8
  %36 = call i32 (i32*, i32, ...) @test_setopt(i32* %33, i32 %34, i64 %35)
  %37 = load i32*, i32** %5, align 8
  %38 = call i64 @curl_easy_perform(i32* %37)
  store i64 %38, i64* %4, align 8
  %39 = load i8*, i8** %3, align 8
  %40 = call i8* @aprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %39)
  store i8* %40, i8** %6, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %25
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @curl_easy_cleanup(i32* %44)
  %46 = call i32 (...) @curl_global_cleanup()
  %47 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %47, i32* %2, align 4
  br label %86

48:                                               ; preds = %25
  %49 = call i8* @curl_slist_append(i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %50 = bitcast i8* %49 to %struct.curl_slist*
  store %struct.curl_slist* %50, %struct.curl_slist** %7, align 8
  %51 = load %struct.curl_slist*, %struct.curl_slist** %7, align 8
  %52 = icmp eq %struct.curl_slist* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 @free(i8* %54)
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @curl_easy_cleanup(i32* %56)
  %58 = call i32 (...) @curl_global_cleanup()
  %59 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %59, i32* %2, align 4
  br label %86

60:                                               ; preds = %48
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* @CURLOPT_URL, align 4
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 (i32*, i32, ...) @test_setopt(i32* %61, i32 %62, i8* %63)
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* @CURLOPT_FTP_FILEMETHOD, align 4
  %67 = load i64, i64* @CURLFTPMETHOD_NOCWD, align 8
  %68 = call i32 (i32*, i32, ...) @test_setopt(i32* %65, i32 %66, i64 %67)
  %69 = load i32*, i32** %5, align 8
  %70 = load i32, i32* @CURLOPT_QUOTE, align 4
  %71 = load %struct.curl_slist*, %struct.curl_slist** %7, align 8
  %72 = call i32 (i32*, i32, ...) @test_setopt(i32* %69, i32 %70, %struct.curl_slist* %71)
  %73 = load i32*, i32** %5, align 8
  %74 = call i64 @curl_easy_perform(i32* %73)
  store i64 %74, i64* %4, align 8
  br label %75

75:                                               ; preds = %60
  %76 = load %struct.curl_slist*, %struct.curl_slist** %7, align 8
  %77 = bitcast %struct.curl_slist* %76 to i8*
  %78 = call i32 @curl_slist_free_all(i8* %77)
  %79 = load i8*, i8** %6, align 8
  %80 = call i32 @free(i8* %79)
  %81 = load i32*, i32** %5, align 8
  %82 = call i32 @curl_easy_cleanup(i32* %81)
  %83 = call i32 (...) @curl_global_cleanup()
  %84 = load i64, i64* %4, align 8
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %75, %53, %43, %20, %12
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i64 @curl_global_init(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @curl_global_cleanup(...) #1

declare dso_local i32 @test_setopt(i32*, i32, ...) #1

declare dso_local i64 @curl_easy_perform(i32*) #1

declare dso_local i8* @aprintf(i8*, i8*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i8* @curl_slist_append(i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @curl_slist_free_all(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

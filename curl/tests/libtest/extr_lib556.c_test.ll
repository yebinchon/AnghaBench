; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib556.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib556.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"curl_global_init() failed\0A\00", align 1
@TEST_ERR_MAJOR_BAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"curl_easy_init() failed\0A\00", align 1
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_CONNECT_ONLY = common dso_local global i32 0, align 4
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"GET /556 HTTP/1.2\0D\0AHost: ninja\0D\0A\0D\0A\00", align 1
@STDOUT_FILENO = common dso_local global i32 0, align 4
@CURLE_AGAIN = common dso_local global i64 0, align 8
@TEST_ERR_FAILURE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [1024 x i8], align 16
  store i8* %0, i8** %3, align 8
  %9 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %10 = call i64 @curl_global_init(i32 %9)
  %11 = load i64, i64* @CURLE_OK, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, i32* @stderr, align 4
  %15 = call i32 @fprintf(i32 %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %16, i32* %2, align 4
  br label %92

17:                                               ; preds = %1
  %18 = call i32* (...) @curl_easy_init()
  store i32* %18, i32** %5, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @stderr, align 4
  %23 = call i32 @fprintf(i32 %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32 (...) @curl_global_cleanup()
  %25 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %25, i32* %2, align 4
  br label %92

26:                                               ; preds = %17
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* @CURLOPT_URL, align 4
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 (i32*, i32, ...) @test_setopt(i32* %27, i32 %28, i8* %29)
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* @CURLOPT_CONNECT_ONLY, align 4
  %33 = call i32 (i32*, i32, ...) @test_setopt(i32* %31, i32 %32, i64 1)
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %36 = call i32 (i32*, i32, ...) @test_setopt(i32* %34, i32 %35, i64 1)
  %37 = load i32*, i32** %5, align 8
  %38 = call i64 @curl_easy_perform(i32* %37)
  store i64 %38, i64* %4, align 8
  %39 = load i64, i64* %4, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %85, label %41

41:                                               ; preds = %26
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  store i64 0, i64* %7, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @strlen(i8* %44)
  %46 = call i64 @curl_easy_send(i32* %42, i8* %43, i32 %45, i64* %7)
  store i64 %46, i64* %4, align 8
  %47 = load i64, i64* %4, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %79, label %49

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %76, %49
  %51 = load i32*, i32** %5, align 8
  %52 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %53 = call i64 @curl_easy_recv(i32* %51, i8* %52, i32 1024, i64* %7)
  store i64 %53, i64* %4, align 8
  %54 = load i64, i64* %7, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  %57 = load i32, i32* @STDOUT_FILENO, align 4
  %58 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @write(i32 %57, i8* %58, i64 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %56
  br label %78

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63, %50
  br label %65

65:                                               ; preds = %64
  %66 = load i64, i64* %4, align 8
  %67 = load i64, i64* @CURLE_OK, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i64, i64* %7, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %69, %65
  %73 = load i64, i64* %4, align 8
  %74 = load i64, i64* @CURLE_AGAIN, align 8
  %75 = icmp eq i64 %73, %74
  br label %76

76:                                               ; preds = %72, %69
  %77 = phi i1 [ true, %69 ], [ %75, %72 ]
  br i1 %77, label %50, label %78

78:                                               ; preds = %76, %62
  br label %79

79:                                               ; preds = %78, %41
  %80 = load i64, i64* %7, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i64, i64* @TEST_ERR_FAILURE, align 8
  store i64 %83, i64* %4, align 8
  br label %84

84:                                               ; preds = %82, %79
  br label %85

85:                                               ; preds = %84, %26
  br label %86

86:                                               ; preds = %85
  %87 = load i32*, i32** %5, align 8
  %88 = call i32 @curl_easy_cleanup(i32* %87)
  %89 = call i32 (...) @curl_global_cleanup()
  %90 = load i64, i64* %4, align 8
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %86, %21, %13
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i64 @curl_global_init(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @curl_global_cleanup(...) #1

declare dso_local i32 @test_setopt(i32*, i32, ...) #1

declare dso_local i64 @curl_easy_perform(i32*) #1

declare dso_local i64 @curl_easy_send(i32*, i8*, i32, i64*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @curl_easy_recv(i32*, i8*, i32, i64*) #1

declare dso_local i32 @write(i32, i8*, i64) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

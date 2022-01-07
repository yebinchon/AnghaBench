; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib1533.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib1533.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cb_data = type { i64 }

@CURLE_FAILED_INIT = common dso_local global i64 0, align 8
@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"curl_global_init() failed\0A\00", align 1
@TEST_ERR_MAJOR_BAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"curl_easy_init() failed\0A\00", align 1
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_POST = common dso_local global i32 0, align 4
@CURLOPT_POSTFIELDSIZE_LARGE = common dso_local global i32 0, align 4
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@CURLOPT_READFUNCTION = common dso_local global i32 0, align 4
@read_callback = common dso_local global i64 0, align 8
@CURLOPT_READDATA = common dso_local global i32 0, align 4
@CURLOPT_WRITEFUNCTION = common dso_local global i32 0, align 4
@write_callback = common dso_local global i64 0, align 8
@CURLOPT_WRITEDATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"First request without CURLOPT_KEEP_SENDING_ON_ERROR\00", align 1
@TEST_ERR_SUCCESS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [53 x i8] c"Second request without CURLOPT_KEEP_SENDING_ON_ERROR\00", align 1
@CURLOPT_KEEP_SENDING_ON_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"First request with CURLOPT_KEEP_SENDING_ON_ERROR\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"Second request with CURLOPT_KEEP_SENDING_ON_ERROR\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.cb_data, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32* null, i32** %5, align 8
  %7 = load i64, i64* @CURLE_FAILED_INIT, align 8
  store i64 %7, i64* %6, align 8
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
  br label %101

16:                                               ; preds = %1
  %17 = call i32* (...) @curl_easy_init()
  store i32* %17, i32** %5, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load i32, i32* @stderr, align 4
  %22 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i32 (...) @curl_global_cleanup()
  %24 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %24, i32* %2, align 4
  br label %101

25:                                               ; preds = %16
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @reset_data(%struct.cb_data* %4, i32* %26)
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* @CURLOPT_URL, align 4
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 (i32*, i32, ...) @test_setopt(i32* %28, i32 %29, i8* %30)
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* @CURLOPT_POST, align 4
  %34 = call i32 (i32*, i32, ...) @test_setopt(i32* %32, i32 %33, i64 1)
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* @CURLOPT_POSTFIELDSIZE_LARGE, align 4
  %37 = getelementptr inbounds %struct.cb_data, %struct.cb_data* %4, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 (i32*, i32, ...) @test_setopt(i32* %35, i32 %36, i64 %38)
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %42 = call i32 (i32*, i32, ...) @test_setopt(i32* %40, i32 %41, i64 1)
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* @CURLOPT_READFUNCTION, align 4
  %45 = load i64, i64* @read_callback, align 8
  %46 = call i32 (i32*, i32, ...) @test_setopt(i32* %43, i32 %44, i64 %45)
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* @CURLOPT_READDATA, align 4
  %49 = call i32 (i32*, i32, ...) @test_setopt(i32* %47, i32 %48, %struct.cb_data* %4)
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* @CURLOPT_WRITEFUNCTION, align 4
  %52 = load i64, i64* @write_callback, align 8
  %53 = call i32 (i32*, i32, ...) @test_setopt(i32* %50, i32 %51, i64 %52)
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* @CURLOPT_WRITEDATA, align 4
  %56 = call i32 (i32*, i32, ...) @test_setopt(i32* %54, i32 %55, %struct.cb_data* %4)
  %57 = load i32*, i32** %5, align 8
  %58 = call i64 @perform_and_check_connections(i32* %57, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 1)
  store i64 %58, i64* %6, align 8
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* @TEST_ERR_SUCCESS, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %25
  br label %95

63:                                               ; preds = %25
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @reset_data(%struct.cb_data* %4, i32* %64)
  %66 = load i32*, i32** %5, align 8
  %67 = call i64 @perform_and_check_connections(i32* %66, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 1)
  store i64 %67, i64* %6, align 8
  %68 = load i64, i64* %6, align 8
  %69 = load i64, i64* @TEST_ERR_SUCCESS, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  br label %95

72:                                               ; preds = %63
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* @CURLOPT_KEEP_SENDING_ON_ERROR, align 4
  %75 = call i32 (i32*, i32, ...) @test_setopt(i32* %73, i32 %74, i64 1)
  %76 = load i32*, i32** %5, align 8
  %77 = call i32 @reset_data(%struct.cb_data* %4, i32* %76)
  %78 = load i32*, i32** %5, align 8
  %79 = call i64 @perform_and_check_connections(i32* %78, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 1)
  store i64 %79, i64* %6, align 8
  %80 = load i64, i64* %6, align 8
  %81 = load i64, i64* @TEST_ERR_SUCCESS, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %72
  br label %95

84:                                               ; preds = %72
  %85 = load i32*, i32** %5, align 8
  %86 = call i32 @reset_data(%struct.cb_data* %4, i32* %85)
  %87 = load i32*, i32** %5, align 8
  %88 = call i64 @perform_and_check_connections(i32* %87, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 0)
  store i64 %88, i64* %6, align 8
  %89 = load i64, i64* %6, align 8
  %90 = load i64, i64* @TEST_ERR_SUCCESS, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  br label %95

93:                                               ; preds = %84
  %94 = load i64, i64* @TEST_ERR_SUCCESS, align 8
  store i64 %94, i64* %6, align 8
  br label %95

95:                                               ; preds = %93, %92, %83, %71, %62
  %96 = load i32*, i32** %5, align 8
  %97 = call i32 @curl_easy_cleanup(i32* %96)
  %98 = call i32 (...) @curl_global_cleanup()
  %99 = load i64, i64* %6, align 8
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %95, %20, %12
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i64 @curl_global_init(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @curl_global_cleanup(...) #1

declare dso_local i32 @reset_data(%struct.cb_data*, i32*) #1

declare dso_local i32 @test_setopt(i32*, i32, ...) #1

declare dso_local i64 @perform_and_check_connections(i32*, i8*, i32) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

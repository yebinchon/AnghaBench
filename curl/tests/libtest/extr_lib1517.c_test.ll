; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib1517.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib1517.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WriteThis = type { i64, i32 }

@CURLE_OK = common dso_local global i32 0, align 4
@data = common dso_local global i32 0, align 4
@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"curl_global_init() failed\0A\00", align 1
@TEST_ERR_MAJOR_BAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"curl_easy_init() failed\0A\00", align 1
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_POST = common dso_local global i32 0, align 4
@CURLOPT_POSTFIELDSIZE = common dso_local global i32 0, align 4
@CURLOPT_READFUNCTION = common dso_local global i32 0, align 4
@read_callback = common dso_local global i64 0, align 8
@CURLOPT_READDATA = common dso_local global i32 0, align 4
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@CURLOPT_HEADER = common dso_local global i32 0, align 4
@CURLOPT_TRANSFERTEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.WriteThis, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i32, i32* @CURLE_OK, align 4
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @data, align 4
  %9 = getelementptr inbounds %struct.WriteThis, %struct.WriteThis* %6, i32 0, i32 1
  store i32 %8, i32* %9, align 8
  %10 = load i32, i32* @data, align 4
  %11 = call i64 @strlen(i32 %10)
  %12 = getelementptr inbounds %struct.WriteThis, %struct.WriteThis* %6, i32 0, i32 0
  store i64 %11, i64* %12, align 8
  %13 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %14 = call i64 @curl_global_init(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i32, i32* @stderr, align 4
  %18 = call i32 @fprintf(i32 %17, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %19, i32* %2, align 4
  br label %62

20:                                               ; preds = %1
  %21 = call i32* (...) @curl_easy_init()
  store i32* %21, i32** %4, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @stderr, align 4
  %26 = call i32 @fprintf(i32 %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %27 = call i32 (...) @curl_global_cleanup()
  %28 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %28, i32* %2, align 4
  br label %62

29:                                               ; preds = %20
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* @CURLOPT_URL, align 4
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 (i32*, i32, ...) @test_setopt(i32* %30, i32 %31, i8* %32)
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* @CURLOPT_POST, align 4
  %36 = call i32 (i32*, i32, ...) @test_setopt(i32* %34, i32 %35, i64 1)
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* @CURLOPT_POSTFIELDSIZE, align 4
  %39 = getelementptr inbounds %struct.WriteThis, %struct.WriteThis* %6, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 (i32*, i32, ...) @test_setopt(i32* %37, i32 %38, i64 %40)
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* @CURLOPT_READFUNCTION, align 4
  %44 = load i64, i64* @read_callback, align 8
  %45 = call i32 (i32*, i32, ...) @test_setopt(i32* %42, i32 %43, i64 %44)
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* @CURLOPT_READDATA, align 4
  %48 = call i32 (i32*, i32, ...) @test_setopt(i32* %46, i32 %47, %struct.WriteThis* %6)
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %51 = call i32 (i32*, i32, ...) @test_setopt(i32* %49, i32 %50, i64 1)
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* @CURLOPT_HEADER, align 4
  %54 = call i32 (i32*, i32, ...) @test_setopt(i32* %52, i32 %53, i64 1)
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @curl_easy_perform(i32* %55)
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %29
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @curl_easy_cleanup(i32* %58)
  %60 = call i32 (...) @curl_global_cleanup()
  %61 = load i32, i32* %5, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %57, %24, %16
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i64 @strlen(i32) #1

declare dso_local i64 @curl_global_init(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

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

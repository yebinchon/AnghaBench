; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib508.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib508.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WriteThis = type { i64, i32 }

@CURLE_OK = common dso_local global i64 0, align 8
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
  %7 = load i64, i64* @CURLE_OK, align 8
  %8 = trunc i64 %7 to i32
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @data, align 4
  %10 = getelementptr inbounds %struct.WriteThis, %struct.WriteThis* %6, i32 0, i32 1
  store i32 %9, i32* %10, align 8
  %11 = load i32, i32* @data, align 4
  %12 = call i64 @strlen(i32 %11)
  %13 = getelementptr inbounds %struct.WriteThis, %struct.WriteThis* %6, i32 0, i32 0
  store i64 %12, i64* %13, align 8
  %14 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %15 = call i64 @curl_global_init(i32 %14)
  %16 = load i64, i64* @CURLE_OK, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i32, i32* @stderr, align 4
  %20 = call i32 @fprintf(i32 %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %21, i32* %2, align 4
  br label %64

22:                                               ; preds = %1
  %23 = call i32* (...) @curl_easy_init()
  store i32* %23, i32** %4, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @stderr, align 4
  %28 = call i32 @fprintf(i32 %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %29 = call i32 (...) @curl_global_cleanup()
  %30 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %30, i32* %2, align 4
  br label %64

31:                                               ; preds = %22
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* @CURLOPT_URL, align 4
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 (i32*, i32, ...) @test_setopt(i32* %32, i32 %33, i8* %34)
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* @CURLOPT_POST, align 4
  %38 = call i32 (i32*, i32, ...) @test_setopt(i32* %36, i32 %37, i64 1)
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* @CURLOPT_POSTFIELDSIZE, align 4
  %41 = getelementptr inbounds %struct.WriteThis, %struct.WriteThis* %6, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 (i32*, i32, ...) @test_setopt(i32* %39, i32 %40, i64 %42)
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* @CURLOPT_READFUNCTION, align 4
  %46 = load i64, i64* @read_callback, align 8
  %47 = call i32 (i32*, i32, ...) @test_setopt(i32* %44, i32 %45, i64 %46)
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* @CURLOPT_READDATA, align 4
  %50 = call i32 (i32*, i32, ...) @test_setopt(i32* %48, i32 %49, %struct.WriteThis* %6)
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %53 = call i32 (i32*, i32, ...) @test_setopt(i32* %51, i32 %52, i64 1)
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* @CURLOPT_HEADER, align 4
  %56 = call i32 (i32*, i32, ...) @test_setopt(i32* %54, i32 %55, i64 1)
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @curl_easy_perform(i32* %57)
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %31
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @curl_easy_cleanup(i32* %60)
  %62 = call i32 (...) @curl_global_cleanup()
  %63 = load i32, i32* %5, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %59, %26, %18
  %65 = load i32, i32* %2, align 4
  ret i32 %65
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

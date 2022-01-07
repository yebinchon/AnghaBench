; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib1520.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib1520.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curl_slist = type { i32 }
%struct.upload_status = type { i32 }

@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"curl_global_init() failed\0A\00", align 1
@TEST_ERR_MAJOR_BAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"curl_easy_init() failed\0A\00", align 1
@TO = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_UPLOAD = common dso_local global i32 0, align 4
@CURLOPT_READFUNCTION = common dso_local global i32 0, align 4
@read_callback = common dso_local global i64 0, align 8
@CURLOPT_READDATA = common dso_local global i32 0, align 4
@CURLOPT_MAIL_FROM = common dso_local global i32 0, align 4
@FROM = common dso_local global i64 0, align 8
@CURLOPT_MAIL_RCPT = common dso_local global i32 0, align 4
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.curl_slist*, align 8
  %7 = alloca %struct.upload_status, align 4
  store i8* %0, i8** %3, align 8
  store %struct.curl_slist* null, %struct.curl_slist** %6, align 8
  %8 = bitcast %struct.upload_status* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 4, i1 false)
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
  br label %65

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
  br label %65

26:                                               ; preds = %17
  %27 = load %struct.curl_slist*, %struct.curl_slist** %6, align 8
  %28 = load i32, i32* @TO, align 4
  %29 = call %struct.curl_slist* @curl_slist_append(%struct.curl_slist* %27, i32 %28)
  store %struct.curl_slist* %29, %struct.curl_slist** %6, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* @CURLOPT_URL, align 4
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 (i32*, i32, ...) @test_setopt(i32* %30, i32 %31, i8* %32)
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* @CURLOPT_UPLOAD, align 4
  %36 = call i32 (i32*, i32, ...) @test_setopt(i32* %34, i32 %35, i64 1)
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* @CURLOPT_READFUNCTION, align 4
  %39 = load i64, i64* @read_callback, align 8
  %40 = call i32 (i32*, i32, ...) @test_setopt(i32* %37, i32 %38, i64 %39)
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* @CURLOPT_READDATA, align 4
  %43 = call i32 (i32*, i32, ...) @test_setopt(i32* %41, i32 %42, %struct.upload_status* %7)
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* @CURLOPT_MAIL_FROM, align 4
  %46 = load i64, i64* @FROM, align 8
  %47 = call i32 (i32*, i32, ...) @test_setopt(i32* %44, i32 %45, i64 %46)
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* @CURLOPT_MAIL_RCPT, align 4
  %50 = load %struct.curl_slist*, %struct.curl_slist** %6, align 8
  %51 = call i32 (i32*, i32, ...) @test_setopt(i32* %48, i32 %49, %struct.curl_slist* %50)
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %54 = call i32 (i32*, i32, ...) @test_setopt(i32* %52, i32 %53, i64 1)
  %55 = load i32*, i32** %5, align 8
  %56 = call i64 @curl_easy_perform(i32* %55)
  store i64 %56, i64* %4, align 8
  br label %57

57:                                               ; preds = %26
  %58 = load %struct.curl_slist*, %struct.curl_slist** %6, align 8
  %59 = call i32 @curl_slist_free_all(%struct.curl_slist* %58)
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @curl_easy_cleanup(i32* %60)
  %62 = call i32 (...) @curl_global_cleanup()
  %63 = load i64, i64* %4, align 8
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %57, %21, %13
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @curl_global_init(i32) #2

declare dso_local i32 @fprintf(i32, i8*) #2

declare dso_local i32* @curl_easy_init(...) #2

declare dso_local i32 @curl_global_cleanup(...) #2

declare dso_local %struct.curl_slist* @curl_slist_append(%struct.curl_slist*, i32) #2

declare dso_local i32 @test_setopt(i32*, i32, ...) #2

declare dso_local i64 @curl_easy_perform(i32*) #2

declare dso_local i32 @curl_slist_free_all(%struct.curl_slist*) #2

declare dso_local i32 @curl_easy_cleanup(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

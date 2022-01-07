; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib579.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib579.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curl_slist = type { i32 }
%struct.WriteThis = type { i64 }

@CURLE_OK = common dso_local global i64 0, align 8
@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"curl_global_init() failed\0A\00", align 1
@TEST_ERR_MAJOR_BAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"curl_easy_init() failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Transfer-Encoding: chunked\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"curl_slist_append() failed\0A\00", align 1
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_POST = common dso_local global i32 0, align 4
@CURLOPT_READFUNCTION = common dso_local global i32 0, align 4
@read_callback = common dso_local global i64 0, align 8
@CURLOPT_READDATA = common dso_local global i32 0, align 4
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@CURLOPT_HEADER = common dso_local global i32 0, align 4
@CURLOPT_HTTPHEADER = common dso_local global i32 0, align 4
@CURLOPT_HTTPAUTH = common dso_local global i32 0, align 4
@CURLAUTH_DIGEST = common dso_local global i64 0, align 8
@CURLOPT_USERPWD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"foo:bar\00", align 1
@CURLOPT_NOPROGRESS = common dso_local global i32 0, align 4
@CURLOPT_PROGRESSFUNCTION = common dso_local global i32 0, align 4
@progress_callback = common dso_local global i64 0, align 8
@CURLOPT_TRANSFERTEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.curl_slist*, align 8
  %7 = alloca %struct.WriteThis, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i64, i64* @CURLE_OK, align 8
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %5, align 4
  store %struct.curl_slist* null, %struct.curl_slist** %6, align 8
  %10 = getelementptr inbounds %struct.WriteThis, %struct.WriteThis* %7, i32 0, i32 0
  store i64 0, i64* %10, align 8
  %11 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %12 = call i64 @curl_global_init(i32 %11)
  %13 = load i64, i64* @CURLE_OK, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32, i32* @stderr, align 4
  %17 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %18, i32* %2, align 4
  br label %92

19:                                               ; preds = %1
  %20 = call i32* (...) @curl_easy_init()
  store i32* %20, i32** %4, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @stderr, align 4
  %25 = call i32 @fprintf(i32 %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %26 = call i32 (...) @curl_global_cleanup()
  %27 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %27, i32* %2, align 4
  br label %92

28:                                               ; preds = %19
  %29 = load %struct.curl_slist*, %struct.curl_slist** %6, align 8
  %30 = call %struct.curl_slist* @curl_slist_append(%struct.curl_slist* %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  store %struct.curl_slist* %30, %struct.curl_slist** %6, align 8
  %31 = load %struct.curl_slist*, %struct.curl_slist** %6, align 8
  %32 = icmp eq %struct.curl_slist* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load i32, i32* @stderr, align 4
  %35 = call i32 @fprintf(i32 %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @curl_easy_cleanup(i32* %36)
  %38 = call i32 (...) @curl_global_cleanup()
  %39 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %39, i32* %2, align 4
  br label %92

40:                                               ; preds = %28
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* @CURLOPT_URL, align 4
  %43 = load i8*, i8** %3, align 8
  %44 = call i32 (i32*, i32, ...) @test_setopt(i32* %41, i32 %42, i8* %43)
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* @CURLOPT_POST, align 4
  %47 = call i32 (i32*, i32, ...) @test_setopt(i32* %45, i32 %46, i64 1)
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* @CURLOPT_READFUNCTION, align 4
  %50 = load i64, i64* @read_callback, align 8
  %51 = call i32 (i32*, i32, ...) @test_setopt(i32* %48, i32 %49, i64 %50)
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* @CURLOPT_READDATA, align 4
  %54 = call i32 (i32*, i32, ...) @test_setopt(i32* %52, i32 %53, %struct.WriteThis* %7)
  %55 = load i32*, i32** %4, align 8
  %56 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %57 = call i32 (i32*, i32, ...) @test_setopt(i32* %55, i32 %56, i64 1)
  %58 = load i32*, i32** %4, align 8
  %59 = load i32, i32* @CURLOPT_HEADER, align 4
  %60 = call i32 (i32*, i32, ...) @test_setopt(i32* %58, i32 %59, i64 1)
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* @CURLOPT_HTTPHEADER, align 4
  %63 = load %struct.curl_slist*, %struct.curl_slist** %6, align 8
  %64 = call i32 (i32*, i32, ...) @test_setopt(i32* %61, i32 %62, %struct.curl_slist* %63)
  %65 = load i32*, i32** %4, align 8
  %66 = load i32, i32* @CURLOPT_HTTPAUTH, align 4
  %67 = load i64, i64* @CURLAUTH_DIGEST, align 8
  %68 = call i32 (i32*, i32, ...) @test_setopt(i32* %65, i32 %66, i64 %67)
  %69 = load i32*, i32** %4, align 8
  %70 = load i32, i32* @CURLOPT_USERPWD, align 4
  %71 = call i32 (i32*, i32, ...) @test_setopt(i32* %69, i32 %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %72 = load i32*, i32** %4, align 8
  %73 = load i32, i32* @CURLOPT_NOPROGRESS, align 4
  %74 = call i32 (i32*, i32, ...) @test_setopt(i32* %72, i32 %73, i64 0)
  %75 = load i32*, i32** %4, align 8
  %76 = load i32, i32* @CURLOPT_PROGRESSFUNCTION, align 4
  %77 = load i64, i64* @progress_callback, align 8
  %78 = call i32 (i32*, i32, ...) @test_setopt(i32* %75, i32 %76, i64 %77)
  %79 = load i32*, i32** %4, align 8
  %80 = call i32 @curl_easy_perform(i32* %79)
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %40
  %82 = load %struct.curl_slist*, %struct.curl_slist** %6, align 8
  %83 = icmp ne %struct.curl_slist* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load %struct.curl_slist*, %struct.curl_slist** %6, align 8
  %86 = call i32 @curl_slist_free_all(%struct.curl_slist* %85)
  br label %87

87:                                               ; preds = %84, %81
  %88 = load i32*, i32** %4, align 8
  %89 = call i32 @curl_easy_cleanup(i32* %88)
  %90 = call i32 (...) @curl_global_cleanup()
  %91 = load i32, i32* %5, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %87, %33, %23, %15
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i64 @curl_global_init(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @curl_global_cleanup(...) #1

declare dso_local %struct.curl_slist* @curl_slist_append(%struct.curl_slist*, i8*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @test_setopt(i32*, i32, ...) #1

declare dso_local i32 @curl_easy_perform(i32*) #1

declare dso_local i32 @curl_slist_free_all(%struct.curl_slist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

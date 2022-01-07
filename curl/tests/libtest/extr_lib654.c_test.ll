; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib654.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib654.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curl_slist = type { i32 }
%struct.WriteThis = type { i32, i64, i32 }

@TEST_ERR_FAILURE = common dso_local global i32 0, align 4
@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"curl_global_init() failed\0A\00", align 1
@TEST_ERR_MAJOR_BAD = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@CURLOPT_HEADER = common dso_local global i32 0, align 4
@data = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@CURL_ZERO_TERMINATED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"greeting\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"application/X-Greeting\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"base64\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"X-Test-Number: 654\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"log/file654.txt\00", align 1
@read_callback = common dso_local global i32 0, align 4
@free_callback = common dso_local global i32 0, align 4
@CURLOPT_MIMEPOST = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"curl_easy_duphandle() failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"curl_easy_perform(original) failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"curl_easy_perform(duplicated) failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"free_callback() called %d times instead of 2\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.curl_slist*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.WriteThis, align 8
  store i8* %0, i8** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i8* null, i8** %6, align 8
  store %struct.curl_slist* null, %struct.curl_slist** %8, align 8
  %12 = load i32, i32* @TEST_ERR_FAILURE, align 4
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %14 = call i64 @curl_global_init(i32 %13)
  %15 = load i64, i64* @CURLE_OK, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* @stderr, align 4
  %19 = call i32 (i32, i8*, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %20, i32* %2, align 4
  br label %124

21:                                               ; preds = %1
  %22 = call i32* (...) @curl_easy_init()
  store i32* %22, i32** %4, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* @CURLOPT_URL, align 4
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 (i32*, i32, ...) @test_setopt(i32* %23, i32 %24, i8* %25)
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %29 = call i32 (i32*, i32, ...) @test_setopt(i32* %27, i32 %28, i64 1)
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* @CURLOPT_HEADER, align 4
  %32 = call i32 (i32*, i32, ...) @test_setopt(i32* %30, i32 %31, i64 1)
  %33 = load i32, i32* @data, align 4
  %34 = getelementptr inbounds %struct.WriteThis, %struct.WriteThis* %11, i32 0, i32 2
  store i32 %33, i32* %34, align 8
  %35 = load i32, i32* @data, align 4
  %36 = call i64 @strlen(i32 %35)
  %37 = getelementptr inbounds %struct.WriteThis, %struct.WriteThis* %11, i32 0, i32 1
  store i64 %36, i64* %37, align 8
  %38 = getelementptr inbounds %struct.WriteThis, %struct.WriteThis* %11, i32 0, i32 0
  store i32 0, i32* %38, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = call i8* @curl_mime_init(i32* %39)
  store i8* %40, i8** %6, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = call i32* @curl_mime_addpart(i8* %41)
  store i32* %42, i32** %7, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* @CURL_ZERO_TERMINATED, align 4
  %45 = call i32 @curl_mime_data(i32* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @curl_mime_name(i32* %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @curl_mime_type(i32* %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @curl_mime_encoder(i32* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %52 = load %struct.curl_slist*, %struct.curl_slist** %8, align 8
  %53 = call %struct.curl_slist* @curl_slist_append(%struct.curl_slist* %52, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  store %struct.curl_slist* %53, %struct.curl_slist** %8, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = load %struct.curl_slist*, %struct.curl_slist** %8, align 8
  %56 = load i32, i32* @TRUE, align 4
  %57 = call i32 @curl_mime_headers(i32* %54, %struct.curl_slist* %55, i32 %56)
  %58 = load i8*, i8** %6, align 8
  %59 = call i32* @curl_mime_addpart(i8* %58)
  store i32* %59, i32** %7, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @curl_mime_filedata(i32* %60, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %62 = load i8*, i8** %6, align 8
  %63 = call i32* @curl_mime_addpart(i8* %62)
  store i32* %63, i32** %7, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* @read_callback, align 4
  %66 = load i32, i32* @free_callback, align 4
  %67 = call i32 @curl_mime_data_cb(i32* %64, i64 -1, i32 %65, i32* null, i32 %66, %struct.WriteThis* %11)
  %68 = load i32*, i32** %4, align 8
  %69 = load i32, i32* @CURLOPT_MIMEPOST, align 4
  %70 = load i8*, i8** %6, align 8
  %71 = call i32 (i32*, i32, ...) @test_setopt(i32* %68, i32 %69, i8* %70)
  %72 = load i32*, i32** %4, align 8
  %73 = call i32* @curl_easy_duphandle(i32* %72)
  store i32* %73, i32** %5, align 8
  %74 = load i32*, i32** %5, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %80, label %76

76:                                               ; preds = %21
  %77 = load i32, i32* @stderr, align 4
  %78 = call i32 (i32, i8*, ...) @fprintf(i32 %77, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %79 = load i32, i32* @TEST_ERR_FAILURE, align 4
  store i32 %79, i32* %10, align 4
  br label %115

80:                                               ; preds = %21
  %81 = load i8*, i8** %6, align 8
  %82 = call i32 @curl_mime_free(i8* %81)
  store i8* null, i8** %6, align 8
  %83 = load i32*, i32** %4, align 8
  %84 = call i64 @curl_easy_perform(i32* %83)
  store i64 %84, i64* %9, align 8
  %85 = load i64, i64* %9, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %80
  %88 = load i32, i32* @stderr, align 4
  %89 = call i32 (i32, i8*, ...) @fprintf(i32 %88, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  %90 = load i64, i64* %9, align 8
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %10, align 4
  br label %115

92:                                               ; preds = %80
  %93 = load i32*, i32** %5, align 8
  %94 = call i64 @curl_easy_perform(i32* %93)
  store i64 %94, i64* %9, align 8
  %95 = load i64, i64* %9, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load i32, i32* @stderr, align 4
  %99 = call i32 (i32, i8*, ...) @fprintf(i32 %98, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0))
  %100 = load i64, i64* %9, align 8
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %10, align 4
  br label %115

102:                                              ; preds = %92
  %103 = load i32*, i32** %5, align 8
  %104 = call i32 @curl_easy_cleanup(i32* %103)
  store i32* null, i32** %5, align 8
  %105 = getelementptr inbounds %struct.WriteThis, %struct.WriteThis* %11, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 2
  br i1 %107, label %108, label %114

108:                                              ; preds = %102
  %109 = load i32, i32* @stderr, align 4
  %110 = getelementptr inbounds %struct.WriteThis, %struct.WriteThis* %11, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 (i32, i8*, ...) @fprintf(i32 %109, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* @TEST_ERR_FAILURE, align 4
  store i32 %113, i32* %10, align 4
  br label %115

114:                                              ; preds = %102
  br label %115

115:                                              ; preds = %114, %108, %97, %87, %76
  %116 = load i32*, i32** %4, align 8
  %117 = call i32 @curl_easy_cleanup(i32* %116)
  %118 = load i32*, i32** %5, align 8
  %119 = call i32 @curl_easy_cleanup(i32* %118)
  %120 = load i8*, i8** %6, align 8
  %121 = call i32 @curl_mime_free(i8* %120)
  %122 = call i32 (...) @curl_global_cleanup()
  %123 = load i32, i32* %10, align 4
  store i32 %123, i32* %2, align 4
  br label %124

124:                                              ; preds = %115, %17
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local i64 @curl_global_init(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @test_setopt(i32*, i32, ...) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i8* @curl_mime_init(i32*) #1

declare dso_local i32* @curl_mime_addpart(i8*) #1

declare dso_local i32 @curl_mime_data(i32*, i8*, i32) #1

declare dso_local i32 @curl_mime_name(i32*, i8*) #1

declare dso_local i32 @curl_mime_type(i32*, i8*) #1

declare dso_local i32 @curl_mime_encoder(i32*, i8*) #1

declare dso_local %struct.curl_slist* @curl_slist_append(%struct.curl_slist*, i8*) #1

declare dso_local i32 @curl_mime_headers(i32*, %struct.curl_slist*, i32) #1

declare dso_local i32 @curl_mime_filedata(i32*, i8*) #1

declare dso_local i32 @curl_mime_data_cb(i32*, i64, i32, i32*, i32, %struct.WriteThis*) #1

declare dso_local i32* @curl_easy_duphandle(i32*) #1

declare dso_local i32 @curl_mime_free(i8*) #1

declare dso_local i64 @curl_easy_perform(i32*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @curl_global_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

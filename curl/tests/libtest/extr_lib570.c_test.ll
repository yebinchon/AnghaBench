; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib570.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib570.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"curl_global_init() failed\0A\00", align 1
@TEST_ERR_MAJOR_BAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"curl_easy_init() failed\0A\00", align 1
@CURLOPT_HEADERDATA = common dso_local global i32 0, align 4
@stdout = common dso_local global i8* null, align 8
@CURLOPT_WRITEDATA = common dso_local global i32 0, align 4
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_RTSP_REQUEST = common dso_local global i32 0, align 4
@CURL_RTSPREQ_OPTIONS = common dso_local global i8* null, align 8
@CURLOPT_RTSP_STREAM_URI = common dso_local global i32 0, align 4
@CURLE_RTSP_CSEQ_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to detect CSeq mismatch\00", align 1
@CURLOPT_RTSP_CLIENT_CSEQ = common dso_local global i32 0, align 4
@CURLOPT_RTSP_TRANSPORT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"RAW/RAW/UDP;unicast;client_port=3056-3057\00", align 1
@CURL_RTSPREQ_SETUP = common dso_local global i8* null, align 8
@CURL_RTSPREQ_PLAY = common dso_local global i8* null, align 8
@CURLE_RTSP_SESSION_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"Failed to detect a Session ID mismatch\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 1, i32* %6, align 4
  store i8* null, i8** %7, align 8
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
  br label %137

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
  br label %137

25:                                               ; preds = %16
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* @CURLOPT_HEADERDATA, align 4
  %28 = load i8*, i8** @stdout, align 8
  %29 = call i32 (i32*, i32, ...) @test_setopt(i32* %26, i32 %27, i8* %28)
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* @CURLOPT_WRITEDATA, align 4
  %32 = load i8*, i8** @stdout, align 8
  %33 = call i32 (i32*, i32, ...) @test_setopt(i32* %30, i32 %31, i8* %32)
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %36 = call i32 (i32*, i32, ...) @test_setopt(i32* %34, i32 %35, i64 1)
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* @CURLOPT_URL, align 4
  %39 = load i8*, i8** %3, align 8
  %40 = call i32 (i32*, i32, ...) @test_setopt(i32* %37, i32 %38, i8* %39)
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* @CURLOPT_RTSP_REQUEST, align 4
  %43 = load i8*, i8** @CURL_RTSPREQ_OPTIONS, align 8
  %44 = call i32 (i32*, i32, ...) @test_setopt(i32* %41, i32 %42, i8* %43)
  %45 = load i8*, i8** %3, align 8
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  %48 = call i8* @suburl(i8* %45, i32 %46)
  store i8* %48, i8** %7, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %25
  %52 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %52, i32* %4, align 4
  br label %130

53:                                               ; preds = %25
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* @CURLOPT_RTSP_STREAM_URI, align 4
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 (i32*, i32, ...) @test_setopt(i32* %54, i32 %55, i8* %56)
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @free(i8* %58)
  store i8* null, i8** %7, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @curl_easy_perform(i32* %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load i64, i64* @CURLE_RTSP_CSEQ_ERROR, align 8
  %64 = trunc i64 %63 to i32
  %65 = icmp ne i32 %62, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %53
  %67 = load i32, i32* @stderr, align 4
  %68 = call i32 @fprintf(i32 %67, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %69, i32* %4, align 4
  br label %130

70:                                               ; preds = %53
  %71 = load i32*, i32** %5, align 8
  %72 = load i32, i32* @CURLOPT_RTSP_CLIENT_CSEQ, align 4
  %73 = call i32 (i32*, i32, ...) @test_setopt(i32* %71, i32 %72, i64 999)
  %74 = load i32*, i32** %5, align 8
  %75 = load i32, i32* @CURLOPT_RTSP_TRANSPORT, align 4
  %76 = call i32 (i32*, i32, ...) @test_setopt(i32* %74, i32 %75, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %77 = load i32*, i32** %5, align 8
  %78 = load i32, i32* @CURLOPT_RTSP_REQUEST, align 4
  %79 = load i8*, i8** @CURL_RTSPREQ_SETUP, align 8
  %80 = call i32 (i32*, i32, ...) @test_setopt(i32* %77, i32 %78, i8* %79)
  %81 = load i8*, i8** %3, align 8
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %6, align 4
  %84 = call i8* @suburl(i8* %81, i32 %82)
  store i8* %84, i8** %7, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %70
  %88 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %88, i32* %4, align 4
  br label %130

89:                                               ; preds = %70
  %90 = load i32*, i32** %5, align 8
  %91 = load i32, i32* @CURLOPT_RTSP_STREAM_URI, align 4
  %92 = load i8*, i8** %7, align 8
  %93 = call i32 (i32*, i32, ...) @test_setopt(i32* %90, i32 %91, i8* %92)
  %94 = load i8*, i8** %7, align 8
  %95 = call i32 @free(i8* %94)
  store i8* null, i8** %7, align 8
  %96 = load i32*, i32** %5, align 8
  %97 = call i32 @curl_easy_perform(i32* %96)
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* %4, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %89
  br label %130

101:                                              ; preds = %89
  %102 = load i32*, i32** %5, align 8
  %103 = load i32, i32* @CURLOPT_RTSP_REQUEST, align 4
  %104 = load i8*, i8** @CURL_RTSPREQ_PLAY, align 8
  %105 = call i32 (i32*, i32, ...) @test_setopt(i32* %102, i32 %103, i8* %104)
  %106 = load i8*, i8** %3, align 8
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %6, align 4
  %109 = call i8* @suburl(i8* %106, i32 %107)
  store i8* %109, i8** %7, align 8
  %110 = load i8*, i8** %7, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %114, label %112

112:                                              ; preds = %101
  %113 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %113, i32* %4, align 4
  br label %130

114:                                              ; preds = %101
  %115 = load i32*, i32** %5, align 8
  %116 = load i32, i32* @CURLOPT_RTSP_STREAM_URI, align 4
  %117 = load i8*, i8** %7, align 8
  %118 = call i32 (i32*, i32, ...) @test_setopt(i32* %115, i32 %116, i8* %117)
  %119 = load i8*, i8** %7, align 8
  %120 = call i32 @free(i8* %119)
  store i8* null, i8** %7, align 8
  %121 = load i32*, i32** %5, align 8
  %122 = call i32 @curl_easy_perform(i32* %121)
  store i32 %122, i32* %4, align 4
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* @CURLE_RTSP_SESSION_ERROR, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %114
  %127 = load i32, i32* @stderr, align 4
  %128 = call i32 @fprintf(i32 %127, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %129

129:                                              ; preds = %126, %114
  br label %130

130:                                              ; preds = %129, %112, %100, %87, %66, %51
  %131 = load i8*, i8** %7, align 8
  %132 = call i32 @free(i8* %131)
  %133 = load i32*, i32** %5, align 8
  %134 = call i32 @curl_easy_cleanup(i32* %133)
  %135 = call i32 (...) @curl_global_cleanup()
  %136 = load i32, i32* %4, align 4
  store i32 %136, i32* %2, align 4
  br label %137

137:                                              ; preds = %130, %20, %12
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local i64 @curl_global_init(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @curl_global_cleanup(...) #1

declare dso_local i32 @test_setopt(i32*, i32, ...) #1

declare dso_local i8* @suburl(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @curl_easy_perform(i32*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

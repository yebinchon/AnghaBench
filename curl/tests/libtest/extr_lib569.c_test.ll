; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib569.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib569.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@libtest_arg2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"couldn't open the Session ID File\0A\00", align 1
@TEST_ERR_MAJOR_BAD = common dso_local global i32 0, align 4
@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"curl_global_init() failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"curl_easy_init() failed\0A\00", align 1
@CURLOPT_HEADERDATA = common dso_local global i32 0, align 4
@stdout = common dso_local global i8* null, align 8
@CURLOPT_WRITEDATA = common dso_local global i32 0, align 4
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_RTSP_REQUEST = common dso_local global i32 0, align 4
@CURL_RTSPREQ_SETUP = common dso_local global i8* null, align 8
@CURLE_BAD_FUNCTION_ARGUMENT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [66 x i8] c"This should have failed. Cannot setup without a Transport: header\00", align 1
@CURLOPT_RTSP_STREAM_URI = common dso_local global i32 0, align 4
@CURLOPT_RTSP_TRANSPORT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"Fake/NotReal/JustATest;foo=baz\00", align 1
@CURLINFO_RTSP_SESSION_ID = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"Got Session ID: [%s]\0A\00", align 1
@CURL_RTSPREQ_TEARDOWN = common dso_local global i8* null, align 8
@CURLOPT_RTSP_SESSION_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i8* null, i8** %6, align 8
  store i32 1, i32* %8, align 4
  %11 = load i32, i32* @libtest_arg2, align 4
  %12 = call i32* @fopen(i32 %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %12, i32** %10, align 8
  %13 = load i32*, i32** %10, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load i32, i32* @stderr, align 4
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i32*
  %19 = call i32 (i32*, i8*, ...) @fprintf(i32* %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %20, i32* %2, align 4
  br label %159

21:                                               ; preds = %1
  %22 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %23 = call i64 @curl_global_init(i32 %22)
  %24 = load i64, i64* @CURLE_OK, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load i32, i32* @stderr, align 4
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i32*
  %30 = call i32 (i32*, i8*, ...) @fprintf(i32* %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i32*, i32** %10, align 8
  %32 = call i32 @fclose(i32* %31)
  %33 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %33, i32* %2, align 4
  br label %159

34:                                               ; preds = %21
  %35 = call i32* (...) @curl_easy_init()
  store i32* %35, i32** %5, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %47, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* @stderr, align 4
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i32*
  %42 = call i32 (i32*, i8*, ...) @fprintf(i32* %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %43 = call i32 (...) @curl_global_cleanup()
  %44 = load i32*, i32** %10, align 8
  %45 = call i32 @fclose(i32* %44)
  %46 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %46, i32* %2, align 4
  br label %159

47:                                               ; preds = %34
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* @CURLOPT_HEADERDATA, align 4
  %50 = load i8*, i8** @stdout, align 8
  %51 = call i32 (i32*, i32, ...) @test_setopt(i32* %48, i32 %49, i8* %50)
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* @CURLOPT_WRITEDATA, align 4
  %54 = load i8*, i8** @stdout, align 8
  %55 = call i32 (i32*, i32, ...) @test_setopt(i32* %52, i32 %53, i8* %54)
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %58 = call i32 (i32*, i32, ...) @test_setopt(i32* %56, i32 %57, i64 1)
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* @CURLOPT_URL, align 4
  %61 = load i8*, i8** %3, align 8
  %62 = call i32 (i32*, i32, ...) @test_setopt(i32* %59, i32 %60, i8* %61)
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* @CURLOPT_RTSP_REQUEST, align 4
  %65 = load i8*, i8** @CURL_RTSPREQ_SETUP, align 8
  %66 = call i32 (i32*, i32, ...) @test_setopt(i32* %63, i32 %64, i8* %65)
  %67 = load i32*, i32** %5, align 8
  %68 = call i32 @curl_easy_perform(i32* %67)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = load i64, i64* @CURLE_BAD_FUNCTION_ARGUMENT, align 8
  %71 = trunc i64 %70 to i32
  %72 = icmp ne i32 %69, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %47
  %74 = load i32, i32* @stderr, align 4
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to i32*
  %77 = call i32 (i32*, i8*, ...) @fprintf(i32* %76, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0))
  %78 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %78, i32* %4, align 4
  br label %146

79:                                               ; preds = %47
  store i32 0, i32* %9, align 4
  br label %80

80:                                               ; preds = %142, %79
  %81 = load i32, i32* %9, align 4
  %82 = icmp slt i32 %81, 3
  br i1 %82, label %83, label %145

83:                                               ; preds = %80
  %84 = load i8*, i8** %3, align 8
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %8, align 4
  %87 = call i8* @suburl(i8* %84, i32 %85)
  store i8* %87, i8** %6, align 8
  %88 = load i8*, i8** %6, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %92, label %90

90:                                               ; preds = %83
  %91 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %91, i32* %4, align 4
  br label %146

92:                                               ; preds = %83
  %93 = load i32*, i32** %5, align 8
  %94 = load i32, i32* @CURLOPT_RTSP_STREAM_URI, align 4
  %95 = load i8*, i8** %6, align 8
  %96 = call i32 (i32*, i32, ...) @test_setopt(i32* %93, i32 %94, i8* %95)
  %97 = load i8*, i8** %6, align 8
  %98 = call i32 @free(i8* %97)
  store i8* null, i8** %6, align 8
  %99 = load i32*, i32** %5, align 8
  %100 = load i32, i32* @CURLOPT_RTSP_REQUEST, align 4
  %101 = load i8*, i8** @CURL_RTSPREQ_SETUP, align 8
  %102 = call i32 (i32*, i32, ...) @test_setopt(i32* %99, i32 %100, i8* %101)
  %103 = load i32*, i32** %5, align 8
  %104 = load i32, i32* @CURLOPT_RTSP_TRANSPORT, align 4
  %105 = call i32 (i32*, i32, ...) @test_setopt(i32* %103, i32 %104, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %106 = load i32*, i32** %5, align 8
  %107 = call i32 @curl_easy_perform(i32* %106)
  store i32 %107, i32* %4, align 4
  %108 = load i32, i32* %4, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %92
  br label %146

111:                                              ; preds = %92
  %112 = load i32*, i32** %5, align 8
  %113 = load i32, i32* @CURLINFO_RTSP_SESSION_ID, align 4
  %114 = call i32 @curl_easy_getinfo(i32* %112, i32 %113, i8** %7)
  %115 = load i32*, i32** %10, align 8
  %116 = load i8*, i8** %7, align 8
  %117 = call i32 (i32*, i8*, ...) @fprintf(i32* %115, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* %116)
  store i8* null, i8** %7, align 8
  %118 = load i8*, i8** %3, align 8
  %119 = load i32, i32* %8, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %8, align 4
  %121 = call i8* @suburl(i8* %118, i32 %119)
  store i8* %121, i8** %6, align 8
  %122 = load i8*, i8** %6, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %126, label %124

124:                                              ; preds = %111
  %125 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %125, i32* %4, align 4
  br label %146

126:                                              ; preds = %111
  %127 = load i32*, i32** %5, align 8
  %128 = load i32, i32* @CURLOPT_RTSP_STREAM_URI, align 4
  %129 = load i8*, i8** %6, align 8
  %130 = call i32 (i32*, i32, ...) @test_setopt(i32* %127, i32 %128, i8* %129)
  %131 = load i8*, i8** %6, align 8
  %132 = call i32 @free(i8* %131)
  store i8* null, i8** %6, align 8
  %133 = load i32*, i32** %5, align 8
  %134 = load i32, i32* @CURLOPT_RTSP_REQUEST, align 4
  %135 = load i8*, i8** @CURL_RTSPREQ_TEARDOWN, align 8
  %136 = call i32 (i32*, i32, ...) @test_setopt(i32* %133, i32 %134, i8* %135)
  %137 = load i32*, i32** %5, align 8
  %138 = call i32 @curl_easy_perform(i32* %137)
  store i32 %138, i32* %4, align 4
  %139 = load i32*, i32** %5, align 8
  %140 = load i32, i32* @CURLOPT_RTSP_SESSION_ID, align 4
  %141 = call i32 (i32*, i32, ...) @test_setopt(i32* %139, i32 %140, i8* null)
  br label %142

142:                                              ; preds = %126
  %143 = load i32, i32* %9, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %9, align 4
  br label %80

145:                                              ; preds = %80
  br label %146

146:                                              ; preds = %145, %124, %110, %90, %73
  %147 = load i32*, i32** %10, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  %150 = load i32*, i32** %10, align 8
  %151 = call i32 @fclose(i32* %150)
  br label %152

152:                                              ; preds = %149, %146
  %153 = load i8*, i8** %6, align 8
  %154 = call i32 @free(i8* %153)
  %155 = load i32*, i32** %5, align 8
  %156 = call i32 @curl_easy_cleanup(i32* %155)
  %157 = call i32 (...) @curl_global_cleanup()
  %158 = load i32, i32* %4, align 4
  store i32 %158, i32* %2, align 4
  br label %159

159:                                              ; preds = %152, %38, %26, %15
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i64 @curl_global_init(i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @curl_global_cleanup(...) #1

declare dso_local i32 @test_setopt(i32*, i32, ...) #1

declare dso_local i32 @curl_easy_perform(i32*) #1

declare dso_local i8* @suburl(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @curl_easy_getinfo(i32*, i32, i8**) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib571.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib571.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@libtest_arg2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Couldn't open the protocol dump file\0A\00", align 1
@TEST_ERR_MAJOR_BAD = common dso_local global i32 0, align 4
@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"curl_global_init() failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"curl_easy_init() failed\0A\00", align 1
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_RTSP_STREAM_URI = common dso_local global i32 0, align 4
@CURLOPT_INTERLEAVEFUNCTION = common dso_local global i32 0, align 4
@rtp_write = common dso_local global i8* null, align 8
@CURLOPT_TIMEOUT = common dso_local global i32 0, align 4
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@CURLOPT_WRITEDATA = common dso_local global i32 0, align 4
@CURLOPT_RTSP_TRANSPORT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"RTP/AVP/TCP;interleaved=0-1\00", align 1
@CURLOPT_RTSP_REQUEST = common dso_local global i32 0, align 4
@CURL_RTSPREQ_SETUP = common dso_local global i8* null, align 8
@CURL_RTSPREQ_PLAY = common dso_local global i8* null, align 8
@CURL_RTSPREQ_DESCRIBE = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"PLAY COMPLETE\0A\00", align 1
@rtp_packet_count = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"LOOPY LOOP!\0A\00", align 1
@CURL_RTSPREQ_RECEIVE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* null, i8** %6, align 8
  store i32 1, i32* %7, align 4
  %9 = load i32, i32* @libtest_arg2, align 4
  %10 = call i8* @fopen(i32 %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %10, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, i32* @stderr, align 4
  %15 = call i32 @fprintf(i32 %14, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %16, i32* %2, align 4
  br label %194

17:                                               ; preds = %1
  %18 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %19 = call i64 @curl_global_init(i32 %18)
  %20 = load i64, i64* @CURLE_OK, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load i32, i32* @stderr, align 4
  %24 = call i32 @fprintf(i32 %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @fclose(i8* %25)
  %27 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %27, i32* %2, align 4
  br label %194

28:                                               ; preds = %17
  %29 = call i32* (...) @curl_easy_init()
  store i32* %29, i32** %5, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* @stderr, align 4
  %34 = call i32 @fprintf(i32 %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @fclose(i8* %35)
  %37 = call i32 (...) @curl_global_cleanup()
  %38 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %38, i32* %2, align 4
  br label %194

39:                                               ; preds = %28
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* @CURLOPT_URL, align 4
  %42 = load i8*, i8** %3, align 8
  %43 = call i32 (i32*, i32, ...) @test_setopt(i32* %40, i32 %41, i8* %42)
  %44 = load i8*, i8** %3, align 8
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  %47 = call i8* @suburl(i8* %44, i32 %45)
  store i8* %47, i8** %6, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %39
  %51 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %51, i32* %4, align 4
  br label %181

52:                                               ; preds = %39
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* @CURLOPT_RTSP_STREAM_URI, align 4
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 (i32*, i32, ...) @test_setopt(i32* %53, i32 %54, i8* %55)
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @free(i8* %57)
  store i8* null, i8** %6, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* @CURLOPT_INTERLEAVEFUNCTION, align 4
  %61 = load i8*, i8** @rtp_write, align 8
  %62 = call i32 (i32*, i32, ...) @test_setopt(i32* %59, i32 %60, i8* %61)
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* @CURLOPT_TIMEOUT, align 4
  %65 = call i32 (i32*, i32, ...) @test_setopt(i32* %63, i32 %64, i64 3)
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %68 = call i32 (i32*, i32, ...) @test_setopt(i32* %66, i32 %67, i64 1)
  %69 = load i32*, i32** %5, align 8
  %70 = load i32, i32* @CURLOPT_WRITEDATA, align 4
  %71 = load i8*, i8** %8, align 8
  %72 = call i32 (i32*, i32, ...) @test_setopt(i32* %69, i32 %70, i8* %71)
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* @CURLOPT_RTSP_TRANSPORT, align 4
  %75 = call i32 (i32*, i32, ...) @test_setopt(i32* %73, i32 %74, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %76 = load i32*, i32** %5, align 8
  %77 = load i32, i32* @CURLOPT_RTSP_REQUEST, align 4
  %78 = load i8*, i8** @CURL_RTSPREQ_SETUP, align 8
  %79 = call i32 (i32*, i32, ...) @test_setopt(i32* %76, i32 %77, i8* %78)
  %80 = load i32*, i32** %5, align 8
  %81 = call i32 @curl_easy_perform(i32* %80)
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* %4, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %52
  br label %181

85:                                               ; preds = %52
  %86 = load i8*, i8** %3, align 8
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %7, align 4
  %89 = call i8* @suburl(i8* %86, i32 %87)
  store i8* %89, i8** %6, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %94, label %92

92:                                               ; preds = %85
  %93 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %93, i32* %4, align 4
  br label %181

94:                                               ; preds = %85
  %95 = load i32*, i32** %5, align 8
  %96 = load i32, i32* @CURLOPT_RTSP_STREAM_URI, align 4
  %97 = load i8*, i8** %6, align 8
  %98 = call i32 (i32*, i32, ...) @test_setopt(i32* %95, i32 %96, i8* %97)
  %99 = load i8*, i8** %6, align 8
  %100 = call i32 @free(i8* %99)
  store i8* null, i8** %6, align 8
  %101 = load i32*, i32** %5, align 8
  %102 = load i32, i32* @CURLOPT_RTSP_REQUEST, align 4
  %103 = load i8*, i8** @CURL_RTSPREQ_PLAY, align 8
  %104 = call i32 (i32*, i32, ...) @test_setopt(i32* %101, i32 %102, i8* %103)
  %105 = load i32*, i32** %5, align 8
  %106 = call i32 @curl_easy_perform(i32* %105)
  store i32 %106, i32* %4, align 4
  %107 = load i32, i32* %4, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %94
  br label %181

110:                                              ; preds = %94
  %111 = load i8*, i8** %3, align 8
  %112 = load i32, i32* %7, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %7, align 4
  %114 = call i8* @suburl(i8* %111, i32 %112)
  store i8* %114, i8** %6, align 8
  %115 = load i8*, i8** %6, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %119, label %117

117:                                              ; preds = %110
  %118 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %118, i32* %4, align 4
  br label %181

119:                                              ; preds = %110
  %120 = load i32*, i32** %5, align 8
  %121 = load i32, i32* @CURLOPT_RTSP_STREAM_URI, align 4
  %122 = load i8*, i8** %6, align 8
  %123 = call i32 (i32*, i32, ...) @test_setopt(i32* %120, i32 %121, i8* %122)
  %124 = load i8*, i8** %6, align 8
  %125 = call i32 @free(i8* %124)
  store i8* null, i8** %6, align 8
  %126 = load i32*, i32** %5, align 8
  %127 = load i32, i32* @CURLOPT_RTSP_REQUEST, align 4
  %128 = load i8*, i8** @CURL_RTSPREQ_DESCRIBE, align 8
  %129 = call i32 (i32*, i32, ...) @test_setopt(i32* %126, i32 %127, i8* %128)
  %130 = load i32*, i32** %5, align 8
  %131 = call i32 @curl_easy_perform(i32* %130)
  store i32 %131, i32* %4, align 4
  %132 = load i32, i32* %4, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %119
  br label %181

135:                                              ; preds = %119
  %136 = load i8*, i8** %3, align 8
  %137 = load i32, i32* %7, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %7, align 4
  %139 = call i8* @suburl(i8* %136, i32 %137)
  store i8* %139, i8** %6, align 8
  %140 = load i8*, i8** %6, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %144, label %142

142:                                              ; preds = %135
  %143 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %143, i32* %4, align 4
  br label %181

144:                                              ; preds = %135
  %145 = load i32*, i32** %5, align 8
  %146 = load i32, i32* @CURLOPT_RTSP_STREAM_URI, align 4
  %147 = load i8*, i8** %6, align 8
  %148 = call i32 (i32*, i32, ...) @test_setopt(i32* %145, i32 %146, i8* %147)
  %149 = load i8*, i8** %6, align 8
  %150 = call i32 @free(i8* %149)
  store i8* null, i8** %6, align 8
  %151 = load i32*, i32** %5, align 8
  %152 = load i32, i32* @CURLOPT_RTSP_REQUEST, align 4
  %153 = load i8*, i8** @CURL_RTSPREQ_PLAY, align 8
  %154 = call i32 (i32*, i32, ...) @test_setopt(i32* %151, i32 %152, i8* %153)
  %155 = load i32*, i32** %5, align 8
  %156 = call i32 @curl_easy_perform(i32* %155)
  store i32 %156, i32* %4, align 4
  %157 = load i32, i32* %4, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %144
  br label %181

160:                                              ; preds = %144
  %161 = load i32, i32* @stderr, align 4
  %162 = call i32 @fprintf(i32 %161, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  br label %163

163:                                              ; preds = %171, %160
  %164 = load i32, i32* %4, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %169, label %166

166:                                              ; preds = %163
  %167 = load i32, i32* @rtp_packet_count, align 4
  %168 = icmp slt i32 %167, 13
  br label %169

169:                                              ; preds = %166, %163
  %170 = phi i1 [ false, %163 ], [ %168, %166 ]
  br i1 %170, label %171, label %180

171:                                              ; preds = %169
  %172 = load i32, i32* @stderr, align 4
  %173 = call i32 @fprintf(i32 %172, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %174 = load i32*, i32** %5, align 8
  %175 = load i32, i32* @CURLOPT_RTSP_REQUEST, align 4
  %176 = load i8*, i8** @CURL_RTSPREQ_RECEIVE, align 8
  %177 = call i32 (i32*, i32, ...) @test_setopt(i32* %174, i32 %175, i8* %176)
  %178 = load i32*, i32** %5, align 8
  %179 = call i32 @curl_easy_perform(i32* %178)
  store i32 %179, i32* %4, align 4
  br label %163

180:                                              ; preds = %169
  br label %181

181:                                              ; preds = %180, %159, %142, %134, %117, %109, %92, %84, %50
  %182 = load i8*, i8** %6, align 8
  %183 = call i32 @free(i8* %182)
  %184 = load i8*, i8** %8, align 8
  %185 = icmp ne i8* %184, null
  br i1 %185, label %186, label %189

186:                                              ; preds = %181
  %187 = load i8*, i8** %8, align 8
  %188 = call i32 @fclose(i8* %187)
  br label %189

189:                                              ; preds = %186, %181
  %190 = load i32*, i32** %5, align 8
  %191 = call i32 @curl_easy_cleanup(i32* %190)
  %192 = call i32 (...) @curl_global_cleanup()
  %193 = load i32, i32* %4, align 4
  store i32 %193, i32* %2, align 4
  br label %194

194:                                              ; preds = %189, %32, %22, %13
  %195 = load i32, i32* %2, align 4
  ret i32 %195
}

declare dso_local i8* @fopen(i32, i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @curl_global_init(i32) #1

declare dso_local i32 @fclose(i8*) #1

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

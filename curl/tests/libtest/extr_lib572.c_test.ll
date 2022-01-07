; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib572.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib572.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.curl_slist = type { i32 }

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
@CURLOPT_RTSP_STREAM_URI = common dso_local global i32 0, align 4
@CURLOPT_RTSP_TRANSPORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Planes/Trains/Automobiles\00", align 1
@CURLOPT_RTSP_REQUEST = common dso_local global i32 0, align 4
@CURL_RTSPREQ_SETUP = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"log/file572.txt\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"can't open log/file572.txt\0A\00", align 1
@CURL_RTSPREQ_GET_PARAMETER = common dso_local global i8* null, align 8
@CURLOPT_READDATA = common dso_local global i32 0, align 4
@CURLOPT_UPLOAD = common dso_local global i32 0, align 4
@CURLOPT_INFILESIZE_LARGE = common dso_local global i32 0, align 4
@CURLOPT_POSTFIELDS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"packets_received\0Ajitter\0A\00", align 1
@CURL_RTSPREQ_OPTIONS = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_3__, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.curl_slist*, align 8
  store i8* %0, i8** %3, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %9, align 8
  store i32 1, i32* %10, align 4
  store %struct.curl_slist* null, %struct.curl_slist** %11, align 8
  %12 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %13 = call i64 @curl_global_init(i32 %12)
  %14 = load i64, i64* @CURLE_OK, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i32, i32* @stderr, align 4
  %18 = call i32 @fprintf(i32 %17, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %19, i32* %2, align 4
  br label %222

20:                                               ; preds = %1
  %21 = call i32* (...) @curl_easy_init()
  store i32* %21, i32** %5, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @stderr, align 4
  %26 = call i32 @fprintf(i32 %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %27 = call i32 (...) @curl_global_cleanup()
  %28 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %28, i32* %2, align 4
  br label %222

29:                                               ; preds = %20
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* @CURLOPT_HEADERDATA, align 4
  %32 = load i8*, i8** @stdout, align 8
  %33 = call i32 (i32*, i32, ...) @test_setopt(i32* %30, i32 %31, i8* %32)
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* @CURLOPT_WRITEDATA, align 4
  %36 = load i8*, i8** @stdout, align 8
  %37 = call i32 (i32*, i32, ...) @test_setopt(i32* %34, i32 %35, i8* %36)
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %40 = call i32 (i32*, i32, ...) @test_setopt(i32* %38, i32 %39, i64 1)
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* @CURLOPT_URL, align 4
  %43 = load i8*, i8** %3, align 8
  %44 = call i32 (i32*, i32, ...) @test_setopt(i32* %41, i32 %42, i8* %43)
  %45 = load i8*, i8** %3, align 8
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %10, align 4
  %48 = call i8* @suburl(i8* %45, i32 %46)
  store i8* %48, i8** %9, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %29
  %52 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %52, i32* %4, align 4
  br label %203

53:                                               ; preds = %29
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* @CURLOPT_RTSP_STREAM_URI, align 4
  %56 = load i8*, i8** %9, align 8
  %57 = call i32 (i32*, i32, ...) @test_setopt(i32* %54, i32 %55, i8* %56)
  %58 = load i8*, i8** %9, align 8
  %59 = call i32 @free(i8* %58)
  store i8* null, i8** %9, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* @CURLOPT_RTSP_TRANSPORT, align 4
  %62 = call i32 (i32*, i32, ...) @test_setopt(i32* %60, i32 %61, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* @CURLOPT_RTSP_REQUEST, align 4
  %65 = load i8*, i8** @CURL_RTSPREQ_SETUP, align 8
  %66 = call i32 (i32*, i32, ...) @test_setopt(i32* %63, i32 %64, i8* %65)
  %67 = load i32*, i32** %5, align 8
  %68 = call i32 @curl_easy_perform(i32* %67)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %53
  br label %203

72:                                               ; preds = %53
  %73 = load i8*, i8** %3, align 8
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %10, align 4
  %76 = call i8* @suburl(i8* %73, i32 %74)
  store i8* %76, i8** %9, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %72
  %80 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %80, i32* %4, align 4
  br label %203

81:                                               ; preds = %72
  %82 = load i32*, i32** %5, align 8
  %83 = load i32, i32* @CURLOPT_RTSP_STREAM_URI, align 4
  %84 = load i8*, i8** %9, align 8
  %85 = call i32 (i32*, i32, ...) @test_setopt(i32* %82, i32 %83, i8* %84)
  %86 = load i8*, i8** %9, align 8
  %87 = call i32 @free(i8* %86)
  store i8* null, i8** %9, align 8
  %88 = load i32, i32* @O_RDONLY, align 4
  %89 = call i32 @open(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %88)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @fstat(i32 %90, %struct.TYPE_3__* %8)
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @close(i32 %92)
  %94 = call i8* @fopen(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i8* %94, i8** %7, align 8
  %95 = load i8*, i8** %7, align 8
  %96 = icmp eq i8* %95, null
  br i1 %96, label %97, label %101

97:                                               ; preds = %81
  %98 = load i32, i32* @stderr, align 4
  %99 = call i32 @fprintf(i32 %98, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %100 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %100, i32* %4, align 4
  br label %203

101:                                              ; preds = %81
  %102 = load i32*, i32** %5, align 8
  %103 = load i32, i32* @CURLOPT_RTSP_REQUEST, align 4
  %104 = load i8*, i8** @CURL_RTSPREQ_GET_PARAMETER, align 8
  %105 = call i32 (i32*, i32, ...) @test_setopt(i32* %102, i32 %103, i8* %104)
  %106 = load i32*, i32** %5, align 8
  %107 = load i32, i32* @CURLOPT_READDATA, align 4
  %108 = load i8*, i8** %7, align 8
  %109 = call i32 (i32*, i32, ...) @test_setopt(i32* %106, i32 %107, i8* %108)
  %110 = load i32*, i32** %5, align 8
  %111 = load i32, i32* @CURLOPT_UPLOAD, align 4
  %112 = call i32 (i32*, i32, ...) @test_setopt(i32* %110, i32 %111, i64 1)
  %113 = load i32*, i32** %5, align 8
  %114 = load i32, i32* @CURLOPT_INFILESIZE_LARGE, align 4
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = inttoptr i64 %116 to i8*
  %118 = call i32 (i32*, i32, ...) @test_setopt(i32* %113, i32 %114, i8* %117)
  %119 = load i32*, i32** %5, align 8
  %120 = call i32 @curl_easy_perform(i32* %119)
  store i32 %120, i32* %4, align 4
  %121 = load i32, i32* %4, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %101
  br label %203

124:                                              ; preds = %101
  %125 = load i32*, i32** %5, align 8
  %126 = load i32, i32* @CURLOPT_UPLOAD, align 4
  %127 = call i32 (i32*, i32, ...) @test_setopt(i32* %125, i32 %126, i64 0)
  %128 = load i8*, i8** %7, align 8
  %129 = call i32 @fclose(i8* %128)
  store i8* null, i8** %7, align 8
  %130 = load i8*, i8** %3, align 8
  %131 = load i32, i32* %10, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %10, align 4
  %133 = call i8* @suburl(i8* %130, i32 %131)
  store i8* %133, i8** %9, align 8
  %134 = load i8*, i8** %9, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %138, label %136

136:                                              ; preds = %124
  %137 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %137, i32* %4, align 4
  br label %203

138:                                              ; preds = %124
  %139 = load i32*, i32** %5, align 8
  %140 = load i32, i32* @CURLOPT_RTSP_STREAM_URI, align 4
  %141 = load i8*, i8** %9, align 8
  %142 = call i32 (i32*, i32, ...) @test_setopt(i32* %139, i32 %140, i8* %141)
  %143 = load i8*, i8** %9, align 8
  %144 = call i32 @free(i8* %143)
  store i8* null, i8** %9, align 8
  %145 = load i32*, i32** %5, align 8
  %146 = call i32 @curl_easy_perform(i32* %145)
  store i32 %146, i32* %4, align 4
  %147 = load i32, i32* %4, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %138
  br label %203

150:                                              ; preds = %138
  %151 = load i8*, i8** %3, align 8
  %152 = load i32, i32* %10, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %10, align 4
  %154 = call i8* @suburl(i8* %151, i32 %152)
  store i8* %154, i8** %9, align 8
  %155 = load i8*, i8** %9, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %159, label %157

157:                                              ; preds = %150
  %158 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %158, i32* %4, align 4
  br label %203

159:                                              ; preds = %150
  %160 = load i32*, i32** %5, align 8
  %161 = load i32, i32* @CURLOPT_RTSP_STREAM_URI, align 4
  %162 = load i8*, i8** %9, align 8
  %163 = call i32 (i32*, i32, ...) @test_setopt(i32* %160, i32 %161, i8* %162)
  %164 = load i8*, i8** %9, align 8
  %165 = call i32 @free(i8* %164)
  store i8* null, i8** %9, align 8
  %166 = load i32*, i32** %5, align 8
  %167 = load i32, i32* @CURLOPT_RTSP_REQUEST, align 4
  %168 = load i8*, i8** @CURL_RTSPREQ_GET_PARAMETER, align 8
  %169 = call i32 (i32*, i32, ...) @test_setopt(i32* %166, i32 %167, i8* %168)
  %170 = load i32*, i32** %5, align 8
  %171 = load i32, i32* @CURLOPT_POSTFIELDS, align 4
  %172 = call i32 (i32*, i32, ...) @test_setopt(i32* %170, i32 %171, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %173 = load i32*, i32** %5, align 8
  %174 = call i32 @curl_easy_perform(i32* %173)
  store i32 %174, i32* %4, align 4
  %175 = load i32, i32* %4, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %159
  br label %203

178:                                              ; preds = %159
  %179 = load i32*, i32** %5, align 8
  %180 = load i32, i32* @CURLOPT_POSTFIELDS, align 4
  %181 = call i32 (i32*, i32, ...) @test_setopt(i32* %179, i32 %180, i8* null)
  %182 = load i8*, i8** %3, align 8
  %183 = load i32, i32* %10, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %10, align 4
  %185 = call i8* @suburl(i8* %182, i32 %183)
  store i8* %185, i8** %9, align 8
  %186 = load i8*, i8** %9, align 8
  %187 = icmp ne i8* %186, null
  br i1 %187, label %190, label %188

188:                                              ; preds = %178
  %189 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %189, i32* %4, align 4
  br label %203

190:                                              ; preds = %178
  %191 = load i32*, i32** %5, align 8
  %192 = load i32, i32* @CURLOPT_RTSP_STREAM_URI, align 4
  %193 = load i8*, i8** %9, align 8
  %194 = call i32 (i32*, i32, ...) @test_setopt(i32* %191, i32 %192, i8* %193)
  %195 = load i8*, i8** %9, align 8
  %196 = call i32 @free(i8* %195)
  store i8* null, i8** %9, align 8
  %197 = load i32*, i32** %5, align 8
  %198 = load i32, i32* @CURLOPT_RTSP_REQUEST, align 4
  %199 = load i8*, i8** @CURL_RTSPREQ_OPTIONS, align 8
  %200 = call i32 (i32*, i32, ...) @test_setopt(i32* %197, i32 %198, i8* %199)
  %201 = load i32*, i32** %5, align 8
  %202 = call i32 @curl_easy_perform(i32* %201)
  store i32 %202, i32* %4, align 4
  br label %203

203:                                              ; preds = %190, %188, %177, %157, %149, %136, %123, %97, %79, %71, %51
  %204 = load i8*, i8** %7, align 8
  %205 = icmp ne i8* %204, null
  br i1 %205, label %206, label %209

206:                                              ; preds = %203
  %207 = load i8*, i8** %7, align 8
  %208 = call i32 @fclose(i8* %207)
  br label %209

209:                                              ; preds = %206, %203
  %210 = load i8*, i8** %9, align 8
  %211 = call i32 @free(i8* %210)
  %212 = load %struct.curl_slist*, %struct.curl_slist** %11, align 8
  %213 = icmp ne %struct.curl_slist* %212, null
  br i1 %213, label %214, label %217

214:                                              ; preds = %209
  %215 = load %struct.curl_slist*, %struct.curl_slist** %11, align 8
  %216 = call i32 @curl_slist_free_all(%struct.curl_slist* %215)
  br label %217

217:                                              ; preds = %214, %209
  %218 = load i32*, i32** %5, align 8
  %219 = call i32 @curl_easy_cleanup(i32* %218)
  %220 = call i32 (...) @curl_global_cleanup()
  %221 = load i32, i32* %4, align 4
  store i32 %221, i32* %2, align 4
  br label %222

222:                                              ; preds = %217, %24, %16
  %223 = load i32, i32* %2, align 4
  ret i32 %223
}

declare dso_local i64 @curl_global_init(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @curl_global_cleanup(...) #1

declare dso_local i32 @test_setopt(i32*, i32, ...) #1

declare dso_local i8* @suburl(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @curl_easy_perform(i32*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @fstat(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i8* @fopen(i8*, i8*) #1

declare dso_local i32 @fclose(i8*) #1

declare dso_local i32 @curl_slist_free_all(%struct.curl_slist*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

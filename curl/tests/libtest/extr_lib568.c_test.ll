; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib568.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib568.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.curl_slist = type opaque

@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"curl_global_init() failed\0A\00", align 1
@TEST_ERR_MAJOR_BAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"curl_easy_init() failed\0A\00", align 1
@CURLOPT_HEADERDATA = common dso_local global i32 0, align 4
@stdout = common dso_local global i8* null, align 8
@CURLOPT_WRITEDATA = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_RTSP_STREAM_URI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"log/file568.txt\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"can't open log/file568.txt\0A\00", align 1
@CURLOPT_RTSP_REQUEST = common dso_local global i32 0, align 4
@CURL_RTSPREQ_ANNOUNCE = common dso_local global i8* null, align 8
@CURLOPT_READDATA = common dso_local global i32 0, align 4
@CURLOPT_UPLOAD = common dso_local global i32 0, align 4
@CURLOPT_INFILESIZE_LARGE = common dso_local global i32 0, align 4
@CURL_RTSPREQ_DESCRIBE = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [29 x i8] c"Content-Type: posty goodness\00", align 1
@CURLOPT_RTSPHEADER = common dso_local global i32 0, align 4
@CURLOPT_POSTFIELDS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"postyfield=postystuff&project=curl\0A\00", align 1
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
  br label %215

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
  br label %215

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
  %39 = load i32, i32* @CURLOPT_URL, align 4
  %40 = load i8*, i8** %3, align 8
  %41 = call i32 (i32*, i32, ...) @test_setopt(i32* %38, i32 %39, i8* %40)
  %42 = load i8*, i8** %3, align 8
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %10, align 4
  %45 = call i8* @suburl(i8* %42, i32 %43)
  store i8* %45, i8** %9, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %29
  %49 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %49, i32* %4, align 4
  br label %195

50:                                               ; preds = %29
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* @CURLOPT_RTSP_STREAM_URI, align 4
  %53 = load i8*, i8** %9, align 8
  %54 = call i32 (i32*, i32, ...) @test_setopt(i32* %51, i32 %52, i8* %53)
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 @free(i8* %55)
  store i8* null, i8** %9, align 8
  %57 = load i32, i32* @O_RDONLY, align 4
  %58 = call i32 @open(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @fstat(i32 %59, %struct.TYPE_3__* %8)
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @close(i32 %61)
  %63 = call i8* @fopen(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i8* %63, i8** %7, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %50
  %67 = load i32, i32* @stderr, align 4
  %68 = call i32 @fprintf(i32 %67, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %69 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %69, i32* %4, align 4
  br label %195

70:                                               ; preds = %50
  %71 = load i32*, i32** %5, align 8
  %72 = load i32, i32* @CURLOPT_RTSP_REQUEST, align 4
  %73 = load i8*, i8** @CURL_RTSPREQ_ANNOUNCE, align 8
  %74 = call i32 (i32*, i32, ...) @test_setopt(i32* %71, i32 %72, i8* %73)
  %75 = load i32*, i32** %5, align 8
  %76 = load i32, i32* @CURLOPT_READDATA, align 4
  %77 = load i8*, i8** %7, align 8
  %78 = call i32 (i32*, i32, ...) @test_setopt(i32* %75, i32 %76, i8* %77)
  %79 = load i32*, i32** %5, align 8
  %80 = load i32, i32* @CURLOPT_UPLOAD, align 4
  %81 = call i32 (i32*, i32, ...) @test_setopt(i32* %79, i32 %80, i64 1)
  %82 = load i32*, i32** %5, align 8
  %83 = load i32, i32* @CURLOPT_INFILESIZE_LARGE, align 4
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to i8*
  %87 = call i32 (i32*, i32, ...) @test_setopt(i32* %82, i32 %83, i8* %86)
  %88 = load i32*, i32** %5, align 8
  %89 = call i32 @curl_easy_perform(i32* %88)
  store i32 %89, i32* %4, align 4
  %90 = load i32, i32* %4, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %70
  br label %195

93:                                               ; preds = %70
  %94 = load i32*, i32** %5, align 8
  %95 = load i32, i32* @CURLOPT_UPLOAD, align 4
  %96 = call i32 (i32*, i32, ...) @test_setopt(i32* %94, i32 %95, i64 0)
  %97 = load i8*, i8** %7, align 8
  %98 = call i32 @fclose(i8* %97)
  store i8* null, i8** %7, align 8
  %99 = load i8*, i8** %3, align 8
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %10, align 4
  %102 = call i8* @suburl(i8* %99, i32 %100)
  store i8* %102, i8** %9, align 8
  %103 = load i8*, i8** %9, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %107, label %105

105:                                              ; preds = %93
  %106 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %106, i32* %4, align 4
  br label %195

107:                                              ; preds = %93
  %108 = load i32*, i32** %5, align 8
  %109 = load i32, i32* @CURLOPT_RTSP_STREAM_URI, align 4
  %110 = load i8*, i8** %9, align 8
  %111 = call i32 (i32*, i32, ...) @test_setopt(i32* %108, i32 %109, i8* %110)
  %112 = load i8*, i8** %9, align 8
  %113 = call i32 @free(i8* %112)
  store i8* null, i8** %9, align 8
  %114 = load i32*, i32** %5, align 8
  %115 = load i32, i32* @CURLOPT_RTSP_REQUEST, align 4
  %116 = load i8*, i8** @CURL_RTSPREQ_DESCRIBE, align 8
  %117 = call i32 (i32*, i32, ...) @test_setopt(i32* %114, i32 %115, i8* %116)
  %118 = load i32*, i32** %5, align 8
  %119 = call i32 @curl_easy_perform(i32* %118)
  store i32 %119, i32* %4, align 4
  %120 = load i32, i32* %4, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %107
  br label %195

123:                                              ; preds = %107
  %124 = load i8*, i8** %3, align 8
  %125 = load i32, i32* %10, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %10, align 4
  %127 = call i8* @suburl(i8* %124, i32 %125)
  store i8* %127, i8** %9, align 8
  %128 = load i8*, i8** %9, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %132, label %130

130:                                              ; preds = %123
  %131 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %131, i32* %4, align 4
  br label %195

132:                                              ; preds = %123
  %133 = load i32*, i32** %5, align 8
  %134 = load i32, i32* @CURLOPT_RTSP_STREAM_URI, align 4
  %135 = load i8*, i8** %9, align 8
  %136 = call i32 (i32*, i32, ...) @test_setopt(i32* %133, i32 %134, i8* %135)
  %137 = load i8*, i8** %9, align 8
  %138 = call i32 @free(i8* %137)
  store i8* null, i8** %9, align 8
  %139 = load %struct.curl_slist*, %struct.curl_slist** %11, align 8
  %140 = bitcast %struct.curl_slist* %139 to i8*
  %141 = call i8* @curl_slist_append(i8* %140, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %142 = bitcast i8* %141 to %struct.curl_slist*
  store %struct.curl_slist* %142, %struct.curl_slist** %11, align 8
  %143 = load %struct.curl_slist*, %struct.curl_slist** %11, align 8
  %144 = icmp ne %struct.curl_slist* %143, null
  br i1 %144, label %147, label %145

145:                                              ; preds = %132
  %146 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %146, i32* %4, align 4
  br label %195

147:                                              ; preds = %132
  %148 = load i32*, i32** %5, align 8
  %149 = load i32, i32* @CURLOPT_RTSPHEADER, align 4
  %150 = load %struct.curl_slist*, %struct.curl_slist** %11, align 8
  %151 = call i32 (i32*, i32, ...) @test_setopt(i32* %148, i32 %149, %struct.curl_slist* %150)
  %152 = load i32*, i32** %5, align 8
  %153 = load i32, i32* @CURLOPT_RTSP_REQUEST, align 4
  %154 = load i8*, i8** @CURL_RTSPREQ_ANNOUNCE, align 8
  %155 = call i32 (i32*, i32, ...) @test_setopt(i32* %152, i32 %153, i8* %154)
  %156 = load i32*, i32** %5, align 8
  %157 = load i32, i32* @CURLOPT_POSTFIELDS, align 4
  %158 = call i32 (i32*, i32, ...) @test_setopt(i32* %156, i32 %157, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %159 = load i32*, i32** %5, align 8
  %160 = call i32 @curl_easy_perform(i32* %159)
  store i32 %160, i32* %4, align 4
  %161 = load i32, i32* %4, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %147
  br label %195

164:                                              ; preds = %147
  %165 = load i32*, i32** %5, align 8
  %166 = load i32, i32* @CURLOPT_POSTFIELDS, align 4
  %167 = call i32 (i32*, i32, ...) @test_setopt(i32* %165, i32 %166, i8* null)
  %168 = load i32*, i32** %5, align 8
  %169 = load i32, i32* @CURLOPT_RTSPHEADER, align 4
  %170 = call i32 (i32*, i32, ...) @test_setopt(i32* %168, i32 %169, i8* null)
  %171 = load %struct.curl_slist*, %struct.curl_slist** %11, align 8
  %172 = bitcast %struct.curl_slist* %171 to i8*
  %173 = call i32 @curl_slist_free_all(i8* %172)
  store %struct.curl_slist* null, %struct.curl_slist** %11, align 8
  %174 = load i8*, i8** %3, align 8
  %175 = load i32, i32* %10, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %10, align 4
  %177 = call i8* @suburl(i8* %174, i32 %175)
  store i8* %177, i8** %9, align 8
  %178 = load i8*, i8** %9, align 8
  %179 = icmp ne i8* %178, null
  br i1 %179, label %182, label %180

180:                                              ; preds = %164
  %181 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %181, i32* %4, align 4
  br label %195

182:                                              ; preds = %164
  %183 = load i32*, i32** %5, align 8
  %184 = load i32, i32* @CURLOPT_RTSP_STREAM_URI, align 4
  %185 = load i8*, i8** %9, align 8
  %186 = call i32 (i32*, i32, ...) @test_setopt(i32* %183, i32 %184, i8* %185)
  %187 = load i8*, i8** %9, align 8
  %188 = call i32 @free(i8* %187)
  store i8* null, i8** %9, align 8
  %189 = load i32*, i32** %5, align 8
  %190 = load i32, i32* @CURLOPT_RTSP_REQUEST, align 4
  %191 = load i8*, i8** @CURL_RTSPREQ_OPTIONS, align 8
  %192 = call i32 (i32*, i32, ...) @test_setopt(i32* %189, i32 %190, i8* %191)
  %193 = load i32*, i32** %5, align 8
  %194 = call i32 @curl_easy_perform(i32* %193)
  store i32 %194, i32* %4, align 4
  br label %195

195:                                              ; preds = %182, %180, %163, %145, %130, %122, %105, %92, %66, %48
  %196 = load i8*, i8** %7, align 8
  %197 = icmp ne i8* %196, null
  br i1 %197, label %198, label %201

198:                                              ; preds = %195
  %199 = load i8*, i8** %7, align 8
  %200 = call i32 @fclose(i8* %199)
  br label %201

201:                                              ; preds = %198, %195
  %202 = load i8*, i8** %9, align 8
  %203 = call i32 @free(i8* %202)
  %204 = load %struct.curl_slist*, %struct.curl_slist** %11, align 8
  %205 = icmp ne %struct.curl_slist* %204, null
  br i1 %205, label %206, label %210

206:                                              ; preds = %201
  %207 = load %struct.curl_slist*, %struct.curl_slist** %11, align 8
  %208 = bitcast %struct.curl_slist* %207 to i8*
  %209 = call i32 @curl_slist_free_all(i8* %208)
  br label %210

210:                                              ; preds = %206, %201
  %211 = load i32*, i32** %5, align 8
  %212 = call i32 @curl_easy_cleanup(i32* %211)
  %213 = call i32 (...) @curl_global_cleanup()
  %214 = load i32, i32* %4, align 4
  store i32 %214, i32* %2, align 4
  br label %215

215:                                              ; preds = %210, %24, %16
  %216 = load i32, i32* %2, align 4
  ret i32 %216
}

declare dso_local i64 @curl_global_init(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @curl_global_cleanup(...) #1

declare dso_local i32 @test_setopt(i32*, i32, ...) #1

declare dso_local i8* @suburl(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @fstat(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i8* @fopen(i8*, i8*) #1

declare dso_local i32 @curl_easy_perform(i32*) #1

declare dso_local i32 @fclose(i8*) #1

declare dso_local i8* @curl_slist_append(i8*, i8*) #1

declare dso_local i32 @curl_slist_free_all(i8*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_multi-post.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_multi-post.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i64, i32, i32 }
%struct.curl_slist = type opaque

@main.buf = internal constant [8 x i8] c"Expect:\00", align 1
@.str = private unnamed_addr constant [9 x i8] c"sendfile\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"multi-post.c\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@CURL_ZERO_TERMINATED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"submit\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"send\00", align 1
@CURLOPT_URL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"https://www.example.com/upload.cgi\00", align 1
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@CURLOPT_HTTPHEADER = common dso_local global i32 0, align 4
@CURLOPT_MIMEPOST = common dso_local global i32 0, align 4
@CURLM_OK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"curl_multi_fdset() failed, code %d.\0A\00", align 1
@__const.main.wait = private unnamed_addr constant %struct.timeval { i32 0, i64 100000, i32 0, i32 0 }, align 8
@.str.7 = private unnamed_addr constant [10 x i8] c"perform!\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"running: %d!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.curl_slist*, align 8
  %8 = alloca %struct.timeval, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.timeval, align 8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %4, align 4
  store i8* null, i8** %5, align 8
  store i32* null, i32** %6, align 8
  store %struct.curl_slist* null, %struct.curl_slist** %7, align 8
  %17 = call i32* (...) @curl_easy_init()
  store i32* %17, i32** %2, align 8
  %18 = call i32* (...) @curl_multi_init()
  store i32* %18, i32** %3, align 8
  %19 = load i32*, i32** %2, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %140

21:                                               ; preds = %0
  %22 = load i32*, i32** %3, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %140

24:                                               ; preds = %21
  %25 = load i32*, i32** %2, align 8
  %26 = call i8* @curl_mime_init(i32* %25)
  store i8* %26, i8** %5, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call i32* @curl_mime_addpart(i8* %27)
  store i32* %28, i32** %6, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @curl_mime_name(i32* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @curl_mime_filedata(i32* %31, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i8*, i8** %5, align 8
  %34 = call i32* @curl_mime_addpart(i8* %33)
  store i32* %34, i32** %6, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @curl_mime_name(i32* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* @CURL_ZERO_TERMINATED, align 4
  %39 = call i32 @curl_mime_data(i32* %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i8*, i8** %5, align 8
  %41 = call i32* @curl_mime_addpart(i8* %40)
  store i32* %41, i32** %6, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @curl_mime_name(i32* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* @CURL_ZERO_TERMINATED, align 4
  %46 = call i32 @curl_mime_data(i32* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %45)
  %47 = load %struct.curl_slist*, %struct.curl_slist** %7, align 8
  %48 = bitcast %struct.curl_slist* %47 to i8*
  %49 = call i8* @curl_slist_append(i8* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @main.buf, i64 0, i64 0))
  %50 = bitcast i8* %49 to %struct.curl_slist*
  store %struct.curl_slist* %50, %struct.curl_slist** %7, align 8
  %51 = load i32*, i32** %2, align 8
  %52 = load i32, i32* @CURLOPT_URL, align 4
  %53 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %51, i32 %52, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %54 = load i32*, i32** %2, align 8
  %55 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %56 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %54, i32 %55, i64 1)
  %57 = load i32*, i32** %2, align 8
  %58 = load i32, i32* @CURLOPT_HTTPHEADER, align 4
  %59 = load %struct.curl_slist*, %struct.curl_slist** %7, align 8
  %60 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %57, i32 %58, %struct.curl_slist* %59)
  %61 = load i32*, i32** %2, align 8
  %62 = load i32, i32* @CURLOPT_MIMEPOST, align 4
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %61, i32 %62, i8* %63)
  %65 = load i32*, i32** %3, align 8
  %66 = load i32*, i32** %2, align 8
  %67 = call i32 @curl_multi_add_handle(i32* %65, i32* %66)
  %68 = load i32*, i32** %3, align 8
  %69 = call i32 @curl_multi_perform(i32* %68, i32* %4)
  br label %70

70:                                               ; preds = %129, %24
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %130

73:                                               ; preds = %70
  store i32 -1, i32* %14, align 4
  store i64 -1, i64* %15, align 8
  %74 = call i32 @FD_ZERO(i32* %11)
  %75 = call i32 @FD_ZERO(i32* %12)
  %76 = call i32 @FD_ZERO(i32* %13)
  %77 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  store i32 1, i32* %77, align 8
  %78 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  store i64 0, i64* %78, align 8
  %79 = load i32*, i32** %3, align 8
  %80 = call i32 @curl_multi_timeout(i32* %79, i64* %15)
  %81 = load i64, i64* %15, align 8
  %82 = icmp sge i64 %81, 0
  br i1 %82, label %83, label %99

83:                                               ; preds = %73
  %84 = load i64, i64* %15, align 8
  %85 = sdiv i64 %84, 1000
  %86 = trunc i64 %85 to i32
  %87 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  store i32 %86, i32* %87, align 8
  %88 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp sgt i32 %89, 1
  br i1 %90, label %91, label %93

91:                                               ; preds = %83
  %92 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  store i32 1, i32* %92, align 8
  br label %98

93:                                               ; preds = %83
  %94 = load i64, i64* %15, align 8
  %95 = srem i64 %94, 1000
  %96 = mul nsw i64 %95, 1000
  %97 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  store i64 %96, i64* %97, align 8
  br label %98

98:                                               ; preds = %93, %91
  br label %99

99:                                               ; preds = %98, %73
  %100 = load i32*, i32** %3, align 8
  %101 = call i64 @curl_multi_fdset(i32* %100, i32* %11, i32* %12, i32* %13, i32* %14)
  store i64 %101, i64* %10, align 8
  %102 = load i64, i64* %10, align 8
  %103 = load i64, i64* @CURLM_OK, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %99
  %106 = load i32, i32* @stderr, align 4
  %107 = load i64, i64* %10, align 8
  %108 = call i32 @fprintf(i32 %106, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i64 %107)
  br label %130

109:                                              ; preds = %99
  %110 = load i32, i32* %14, align 4
  %111 = icmp eq i32 %110, -1
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = bitcast %struct.timeval* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %113, i8* align 8 bitcast (%struct.timeval* @__const.main.wait to i8*), i64 24, i1 false)
  %114 = call i32 @select(i32 0, i32* null, i32* null, i32* null, %struct.timeval* %16)
  store i32 %114, i32* %9, align 4
  br label %119

115:                                              ; preds = %109
  %116 = load i32, i32* %14, align 4
  %117 = add nsw i32 %116, 1
  %118 = call i32 @select(i32 %117, i32* %11, i32* %12, i32* %13, %struct.timeval* %8)
  store i32 %118, i32* %9, align 4
  br label %119

119:                                              ; preds = %115, %112
  %120 = load i32, i32* %9, align 4
  switch i32 %120, label %123 [
    i32 -1, label %121
    i32 0, label %122
  ]

121:                                              ; preds = %119
  br label %129

122:                                              ; preds = %119
  br label %123

123:                                              ; preds = %119, %122
  %124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %125 = load i32*, i32** %3, align 8
  %126 = call i32 @curl_multi_perform(i32* %125, i32* %4)
  %127 = load i32, i32* %4, align 4
  %128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %127)
  br label %129

129:                                              ; preds = %123, %121
  br label %70

130:                                              ; preds = %105, %70
  %131 = load i32*, i32** %3, align 8
  %132 = call i32 @curl_multi_cleanup(i32* %131)
  %133 = load i32*, i32** %2, align 8
  %134 = call i32 @curl_easy_cleanup(i32* %133)
  %135 = load i8*, i8** %5, align 8
  %136 = call i32 @curl_mime_free(i8* %135)
  %137 = load %struct.curl_slist*, %struct.curl_slist** %7, align 8
  %138 = bitcast %struct.curl_slist* %137 to i8*
  %139 = call i32 @curl_slist_free_all(i8* %138)
  br label %140

140:                                              ; preds = %130, %21, %0
  ret i32 0
}

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32* @curl_multi_init(...) #1

declare dso_local i8* @curl_mime_init(i32*) #1

declare dso_local i32* @curl_mime_addpart(i8*) #1

declare dso_local i32 @curl_mime_name(i32*, i8*) #1

declare dso_local i32 @curl_mime_filedata(i32*, i8*) #1

declare dso_local i32 @curl_mime_data(i32*, i8*, i32) #1

declare dso_local i8* @curl_slist_append(i8*, i8*) #1

declare dso_local i32 @curl_easy_setopt(i32*, i32, ...) #1

declare dso_local i32 @curl_multi_add_handle(i32*, i32*) #1

declare dso_local i32 @curl_multi_perform(i32*, i32*) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @curl_multi_timeout(i32*, i64*) #1

declare dso_local i64 @curl_multi_fdset(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @curl_multi_cleanup(i32*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @curl_mime_free(i8*) #1

declare dso_local i32 @curl_slist_free_all(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

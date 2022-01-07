; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_multi-formadd.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_multi-formadd.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i64, i32, i32 }
%struct.curl_httppost = type opaque
%struct.curl_slist = type opaque

@main.buf = internal constant [8 x i8] c"Expect:\00", align 1
@CURLFORM_COPYNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"sendfile\00", align 1
@CURLFORM_FILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"postit2.c\00", align 1
@CURLFORM_END = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@CURLFORM_COPYCONTENTS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"submit\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"send\00", align 1
@CURLOPT_URL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"https://www.example.com/upload.cgi\00", align 1
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@CURLOPT_HTTPHEADER = common dso_local global i32 0, align 4
@CURLOPT_HTTPPOST = common dso_local global i32 0, align 4
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
  %5 = alloca %struct.curl_httppost*, align 8
  %6 = alloca %struct.curl_httppost*, align 8
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
  store %struct.curl_httppost* null, %struct.curl_httppost** %5, align 8
  store %struct.curl_httppost* null, %struct.curl_httppost** %6, align 8
  store %struct.curl_slist* null, %struct.curl_slist** %7, align 8
  %17 = bitcast %struct.curl_httppost** %5 to i8**
  %18 = bitcast %struct.curl_httppost** %6 to i8**
  %19 = load i32, i32* @CURLFORM_COPYNAME, align 4
  %20 = load i32, i32* @CURLFORM_FILE, align 4
  %21 = load i32, i32* @CURLFORM_END, align 4
  %22 = call i32 @curl_formadd(i8** %17, i8** %18, i32 %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = bitcast %struct.curl_httppost** %5 to i8**
  %24 = bitcast %struct.curl_httppost** %6 to i8**
  %25 = load i32, i32* @CURLFORM_COPYNAME, align 4
  %26 = load i32, i32* @CURLFORM_COPYCONTENTS, align 4
  %27 = load i32, i32* @CURLFORM_END, align 4
  %28 = call i32 @curl_formadd(i8** %23, i8** %24, i32 %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = bitcast %struct.curl_httppost** %5 to i8**
  %30 = bitcast %struct.curl_httppost** %6 to i8**
  %31 = load i32, i32* @CURLFORM_COPYNAME, align 4
  %32 = load i32, i32* @CURLFORM_COPYCONTENTS, align 4
  %33 = load i32, i32* @CURLFORM_END, align 4
  %34 = call i32 @curl_formadd(i8** %29, i8** %30, i32 %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %33)
  %35 = call i32* (...) @curl_easy_init()
  store i32* %35, i32** %2, align 8
  %36 = call i32* (...) @curl_multi_init()
  store i32* %36, i32** %3, align 8
  %37 = load %struct.curl_slist*, %struct.curl_slist** %7, align 8
  %38 = bitcast %struct.curl_slist* %37 to i8*
  %39 = call i8* @curl_slist_append(i8* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @main.buf, i64 0, i64 0))
  %40 = bitcast i8* %39 to %struct.curl_slist*
  store %struct.curl_slist* %40, %struct.curl_slist** %7, align 8
  %41 = load i32*, i32** %2, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %137

43:                                               ; preds = %0
  %44 = load i32*, i32** %3, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %137

46:                                               ; preds = %43
  %47 = load i32*, i32** %2, align 8
  %48 = load i32, i32* @CURLOPT_URL, align 4
  %49 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %47, i32 %48, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %50 = load i32*, i32** %2, align 8
  %51 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %52 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %50, i32 %51, i64 1)
  %53 = load i32*, i32** %2, align 8
  %54 = load i32, i32* @CURLOPT_HTTPHEADER, align 4
  %55 = load %struct.curl_slist*, %struct.curl_slist** %7, align 8
  %56 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %53, i32 %54, %struct.curl_slist* %55)
  %57 = load i32*, i32** %2, align 8
  %58 = load i32, i32* @CURLOPT_HTTPPOST, align 4
  %59 = load %struct.curl_httppost*, %struct.curl_httppost** %5, align 8
  %60 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %57, i32 %58, %struct.curl_httppost* %59)
  %61 = load i32*, i32** %3, align 8
  %62 = load i32*, i32** %2, align 8
  %63 = call i32 @curl_multi_add_handle(i32* %61, i32* %62)
  %64 = load i32*, i32** %3, align 8
  %65 = call i32 @curl_multi_perform(i32* %64, i32* %4)
  br label %66

66:                                               ; preds = %125, %46
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %126

69:                                               ; preds = %66
  store i32 -1, i32* %14, align 4
  store i64 -1, i64* %15, align 8
  %70 = call i32 @FD_ZERO(i32* %11)
  %71 = call i32 @FD_ZERO(i32* %12)
  %72 = call i32 @FD_ZERO(i32* %13)
  %73 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  store i32 1, i32* %73, align 8
  %74 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  store i64 0, i64* %74, align 8
  %75 = load i32*, i32** %3, align 8
  %76 = call i32 @curl_multi_timeout(i32* %75, i64* %15)
  %77 = load i64, i64* %15, align 8
  %78 = icmp sge i64 %77, 0
  br i1 %78, label %79, label %95

79:                                               ; preds = %69
  %80 = load i64, i64* %15, align 8
  %81 = sdiv i64 %80, 1000
  %82 = trunc i64 %81 to i32
  %83 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  store i32 %82, i32* %83, align 8
  %84 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp sgt i32 %85, 1
  br i1 %86, label %87, label %89

87:                                               ; preds = %79
  %88 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  store i32 1, i32* %88, align 8
  br label %94

89:                                               ; preds = %79
  %90 = load i64, i64* %15, align 8
  %91 = srem i64 %90, 1000
  %92 = mul nsw i64 %91, 1000
  %93 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  store i64 %92, i64* %93, align 8
  br label %94

94:                                               ; preds = %89, %87
  br label %95

95:                                               ; preds = %94, %69
  %96 = load i32*, i32** %3, align 8
  %97 = call i64 @curl_multi_fdset(i32* %96, i32* %11, i32* %12, i32* %13, i32* %14)
  store i64 %97, i64* %10, align 8
  %98 = load i64, i64* %10, align 8
  %99 = load i64, i64* @CURLM_OK, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = load i32, i32* @stderr, align 4
  %103 = load i64, i64* %10, align 8
  %104 = call i32 @fprintf(i32 %102, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i64 %103)
  br label %126

105:                                              ; preds = %95
  %106 = load i32, i32* %14, align 4
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = bitcast %struct.timeval* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %109, i8* align 8 bitcast (%struct.timeval* @__const.main.wait to i8*), i64 24, i1 false)
  %110 = call i32 @select(i32 0, i32* null, i32* null, i32* null, %struct.timeval* %16)
  store i32 %110, i32* %9, align 4
  br label %115

111:                                              ; preds = %105
  %112 = load i32, i32* %14, align 4
  %113 = add nsw i32 %112, 1
  %114 = call i32 @select(i32 %113, i32* %11, i32* %12, i32* %13, %struct.timeval* %8)
  store i32 %114, i32* %9, align 4
  br label %115

115:                                              ; preds = %111, %108
  %116 = load i32, i32* %9, align 4
  switch i32 %116, label %119 [
    i32 -1, label %117
    i32 0, label %118
  ]

117:                                              ; preds = %115
  br label %125

118:                                              ; preds = %115
  br label %119

119:                                              ; preds = %115, %118
  %120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %121 = load i32*, i32** %3, align 8
  %122 = call i32 @curl_multi_perform(i32* %121, i32* %4)
  %123 = load i32, i32* %4, align 4
  %124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %123)
  br label %125

125:                                              ; preds = %119, %117
  br label %66

126:                                              ; preds = %101, %66
  %127 = load i32*, i32** %3, align 8
  %128 = call i32 @curl_multi_cleanup(i32* %127)
  %129 = load i32*, i32** %2, align 8
  %130 = call i32 @curl_easy_cleanup(i32* %129)
  %131 = load %struct.curl_httppost*, %struct.curl_httppost** %5, align 8
  %132 = bitcast %struct.curl_httppost* %131 to i8*
  %133 = call i32 @curl_formfree(i8* %132)
  %134 = load %struct.curl_slist*, %struct.curl_slist** %7, align 8
  %135 = bitcast %struct.curl_slist* %134 to i8*
  %136 = call i32 @curl_slist_free_all(i8* %135)
  br label %137

137:                                              ; preds = %126, %43, %0
  ret i32 0
}

declare dso_local i32 @curl_formadd(i8**, i8**, i32, i8*, i32, i8*, i32) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32* @curl_multi_init(...) #1

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

declare dso_local i32 @curl_formfree(i8*) #1

declare dso_local i32 @curl_slist_free_all(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

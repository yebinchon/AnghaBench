; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_smtp-mime.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_smtp-mime.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curl_slist = type opaque

@CURLE_OK = common dso_local global i64 0, align 8
@CURLOPT_URL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"smtp://mail.example.com\00", align 1
@CURLOPT_MAIL_FROM = common dso_local global i32 0, align 4
@FROM = common dso_local global i8* null, align 8
@TO = common dso_local global i8* null, align 8
@CC = common dso_local global i8* null, align 8
@CURLOPT_MAIL_RCPT = common dso_local global i32 0, align 4
@headers_text = common dso_local global i8** null, align 8
@CURLOPT_HTTPHEADER = common dso_local global i32 0, align 4
@inline_html = common dso_local global i32 0, align 4
@CURL_ZERO_TERMINATED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"text/html\00", align 1
@inline_text = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"multipart/alternative\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Content-Disposition: inline\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"smtp-mime.c\00", align 1
@CURLOPT_MIMEPOST = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"curl_easy_perform() failed: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.curl_slist*, align 8
  %5 = alloca %struct.curl_slist*, align 8
  %6 = alloca %struct.curl_slist*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  store i32 0, i32* %1, align 4
  %11 = load i64, i64* @CURLE_OK, align 8
  store i64 %11, i64* %3, align 8
  %12 = call i32* (...) @curl_easy_init()
  store i32* %12, i32** %2, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %119

15:                                               ; preds = %0
  store %struct.curl_slist* null, %struct.curl_slist** %4, align 8
  store %struct.curl_slist* null, %struct.curl_slist** %5, align 8
  store %struct.curl_slist* null, %struct.curl_slist** %6, align 8
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* @CURLOPT_URL, align 4
  %18 = call i32 @curl_easy_setopt(i32* %16, i32 %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %19 = load i32*, i32** %2, align 8
  %20 = load i32, i32* @CURLOPT_MAIL_FROM, align 4
  %21 = load i8*, i8** @FROM, align 8
  %22 = call i32 @curl_easy_setopt(i32* %19, i32 %20, i8* %21)
  %23 = load %struct.curl_slist*, %struct.curl_slist** %5, align 8
  %24 = bitcast %struct.curl_slist* %23 to i8*
  %25 = load i8*, i8** @TO, align 8
  %26 = call i8* @curl_slist_append(i8* %24, i8* %25)
  %27 = bitcast i8* %26 to %struct.curl_slist*
  store %struct.curl_slist* %27, %struct.curl_slist** %5, align 8
  %28 = load %struct.curl_slist*, %struct.curl_slist** %5, align 8
  %29 = bitcast %struct.curl_slist* %28 to i8*
  %30 = load i8*, i8** @CC, align 8
  %31 = call i8* @curl_slist_append(i8* %29, i8* %30)
  %32 = bitcast i8* %31 to %struct.curl_slist*
  store %struct.curl_slist* %32, %struct.curl_slist** %5, align 8
  %33 = load i32*, i32** %2, align 8
  %34 = load i32, i32* @CURLOPT_MAIL_RCPT, align 4
  %35 = load %struct.curl_slist*, %struct.curl_slist** %5, align 8
  %36 = bitcast %struct.curl_slist* %35 to i8*
  %37 = call i32 @curl_easy_setopt(i32* %33, i32 %34, i8* %36)
  %38 = load i8**, i8*** @headers_text, align 8
  store i8** %38, i8*** %10, align 8
  br label %39

39:                                               ; preds = %50, %15
  %40 = load i8**, i8*** %10, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %53

43:                                               ; preds = %39
  %44 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  %45 = bitcast %struct.curl_slist* %44 to i8*
  %46 = load i8**, i8*** %10, align 8
  %47 = load i8*, i8** %46, align 8
  %48 = call i8* @curl_slist_append(i8* %45, i8* %47)
  %49 = bitcast i8* %48 to %struct.curl_slist*
  store %struct.curl_slist* %49, %struct.curl_slist** %4, align 8
  br label %50

50:                                               ; preds = %43
  %51 = load i8**, i8*** %10, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i32 1
  store i8** %52, i8*** %10, align 8
  br label %39

53:                                               ; preds = %39
  %54 = load i32*, i32** %2, align 8
  %55 = load i32, i32* @CURLOPT_HTTPHEADER, align 4
  %56 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  %57 = bitcast %struct.curl_slist* %56 to i8*
  %58 = call i32 @curl_easy_setopt(i32* %54, i32 %55, i8* %57)
  %59 = load i32*, i32** %2, align 8
  %60 = call i8* @curl_mime_init(i32* %59)
  store i8* %60, i8** %7, align 8
  %61 = load i32*, i32** %2, align 8
  %62 = call i8* @curl_mime_init(i32* %61)
  store i8* %62, i8** %8, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = call i32* @curl_mime_addpart(i8* %63)
  store i32* %64, i32** %9, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = load i32, i32* @inline_html, align 4
  %67 = load i32, i32* @CURL_ZERO_TERMINATED, align 4
  %68 = call i32 @curl_mime_data(i32* %65, i32 %66, i32 %67)
  %69 = load i32*, i32** %9, align 8
  %70 = call i32 @curl_mime_type(i32* %69, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i8*, i8** %8, align 8
  %72 = call i32* @curl_mime_addpart(i8* %71)
  store i32* %72, i32** %9, align 8
  %73 = load i32*, i32** %9, align 8
  %74 = load i32, i32* @inline_text, align 4
  %75 = load i32, i32* @CURL_ZERO_TERMINATED, align 4
  %76 = call i32 @curl_mime_data(i32* %73, i32 %74, i32 %75)
  %77 = load i8*, i8** %7, align 8
  %78 = call i32* @curl_mime_addpart(i8* %77)
  store i32* %78, i32** %9, align 8
  %79 = load i32*, i32** %9, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = call i32 @curl_mime_subparts(i32* %79, i8* %80)
  %82 = load i32*, i32** %9, align 8
  %83 = call i32 @curl_mime_type(i32* %82, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %84 = call i8* @curl_slist_append(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %85 = bitcast i8* %84 to %struct.curl_slist*
  store %struct.curl_slist* %85, %struct.curl_slist** %6, align 8
  %86 = load i32*, i32** %9, align 8
  %87 = load %struct.curl_slist*, %struct.curl_slist** %6, align 8
  %88 = bitcast %struct.curl_slist* %87 to i8*
  %89 = call i32 @curl_mime_headers(i32* %86, i8* %88, i32 1)
  %90 = load i8*, i8** %7, align 8
  %91 = call i32* @curl_mime_addpart(i8* %90)
  store i32* %91, i32** %9, align 8
  %92 = load i32*, i32** %9, align 8
  %93 = call i32 @curl_mime_filedata(i32* %92, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %94 = load i32*, i32** %2, align 8
  %95 = load i32, i32* @CURLOPT_MIMEPOST, align 4
  %96 = load i8*, i8** %7, align 8
  %97 = call i32 @curl_easy_setopt(i32* %94, i32 %95, i8* %96)
  %98 = load i32*, i32** %2, align 8
  %99 = call i64 @curl_easy_perform(i32* %98)
  store i64 %99, i64* %3, align 8
  %100 = load i64, i64* %3, align 8
  %101 = load i64, i64* @CURLE_OK, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %53
  %104 = load i32, i32* @stderr, align 4
  %105 = load i64, i64* %3, align 8
  %106 = call i8* @curl_easy_strerror(i64 %105)
  %107 = call i32 @fprintf(i32 %104, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8* %106)
  br label %108

108:                                              ; preds = %103, %53
  %109 = load %struct.curl_slist*, %struct.curl_slist** %5, align 8
  %110 = bitcast %struct.curl_slist* %109 to i8*
  %111 = call i32 @curl_slist_free_all(i8* %110)
  %112 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  %113 = bitcast %struct.curl_slist* %112 to i8*
  %114 = call i32 @curl_slist_free_all(i8* %113)
  %115 = load i32*, i32** %2, align 8
  %116 = call i32 @curl_easy_cleanup(i32* %115)
  %117 = load i8*, i8** %7, align 8
  %118 = call i32 @curl_mime_free(i8* %117)
  br label %119

119:                                              ; preds = %108, %0
  %120 = load i64, i64* %3, align 8
  %121 = trunc i64 %120 to i32
  ret i32 %121
}

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @curl_easy_setopt(i32*, i32, i8*) #1

declare dso_local i8* @curl_slist_append(i8*, i8*) #1

declare dso_local i8* @curl_mime_init(i32*) #1

declare dso_local i32* @curl_mime_addpart(i8*) #1

declare dso_local i32 @curl_mime_data(i32*, i32, i32) #1

declare dso_local i32 @curl_mime_type(i32*, i8*) #1

declare dso_local i32 @curl_mime_subparts(i32*, i8*) #1

declare dso_local i32 @curl_mime_headers(i32*, i8*, i32) #1

declare dso_local i32 @curl_mime_filedata(i32*, i8*) #1

declare dso_local i64 @curl_easy_perform(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @curl_easy_strerror(i64) #1

declare dso_local i32 @curl_slist_free_all(i8*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @curl_mime_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

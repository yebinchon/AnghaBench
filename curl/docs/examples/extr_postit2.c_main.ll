; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_postit2.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_postit2.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curl_slist = type opaque

@main.buf = internal constant [8 x i8] c"Expect:\00", align 1
@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"sendfile\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"postit2.c\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@CURL_ZERO_TERMINATED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"submit\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"send\00", align 1
@CURLOPT_URL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"https://example.com/examplepost.cgi\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"noexpectheader\00", align 1
@CURLOPT_HTTPHEADER = common dso_local global i32 0, align 4
@CURLOPT_MIMEPOST = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"curl_easy_perform() failed: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.curl_slist*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %8, align 8
  store i32* null, i32** %9, align 8
  store %struct.curl_slist* null, %struct.curl_slist** %10, align 8
  %11 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %12 = call i32 @curl_global_init(i32 %11)
  %13 = call i32* (...) @curl_easy_init()
  store i32* %13, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %83

16:                                               ; preds = %2
  %17 = load i32*, i32** %6, align 8
  %18 = call i8* @curl_mime_init(i32* %17)
  store i8* %18, i8** %8, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i32* @curl_mime_addpart(i8* %19)
  store i32* %20, i32** %9, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = call i32 @curl_mime_name(i32* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @curl_mime_filedata(i32* %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i8*, i8** %8, align 8
  %26 = call i32* @curl_mime_addpart(i8* %25)
  store i32* %26, i32** %9, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = call i32 @curl_mime_name(i32* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* @CURL_ZERO_TERMINATED, align 4
  %31 = call i32 @curl_mime_data(i32* %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i8*, i8** %8, align 8
  %33 = call i32* @curl_mime_addpart(i8* %32)
  store i32* %33, i32** %9, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 @curl_mime_name(i32* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* @CURL_ZERO_TERMINATED, align 4
  %38 = call i32 @curl_mime_data(i32* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %37)
  %39 = load %struct.curl_slist*, %struct.curl_slist** %10, align 8
  %40 = bitcast %struct.curl_slist* %39 to i8*
  %41 = call i8* @curl_slist_append(i8* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @main.buf, i64 0, i64 0))
  %42 = bitcast i8* %41 to %struct.curl_slist*
  store %struct.curl_slist* %42, %struct.curl_slist** %10, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* @CURLOPT_URL, align 4
  %45 = call i32 @curl_easy_setopt(i32* %43, i32 %44, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %46 = load i32, i32* %4, align 4
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %48, label %60

48:                                               ; preds = %16
  %49 = load i8**, i8*** %5, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 1
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @strcmp(i8* %51, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* @CURLOPT_HTTPHEADER, align 4
  %57 = load %struct.curl_slist*, %struct.curl_slist** %10, align 8
  %58 = bitcast %struct.curl_slist* %57 to i8*
  %59 = call i32 @curl_easy_setopt(i32* %55, i32 %56, i8* %58)
  br label %60

60:                                               ; preds = %54, %48, %16
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* @CURLOPT_MIMEPOST, align 4
  %63 = load i8*, i8** %8, align 8
  %64 = call i32 @curl_easy_setopt(i32* %61, i32 %62, i8* %63)
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @curl_easy_perform(i32* %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @CURLE_OK, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %60
  %71 = load i32, i32* @stderr, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i8* @curl_easy_strerror(i32 %72)
  %74 = call i32 @fprintf(i32 %71, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i8* %73)
  br label %75

75:                                               ; preds = %70, %60
  %76 = load i32*, i32** %6, align 8
  %77 = call i32 @curl_easy_cleanup(i32* %76)
  %78 = load i8*, i8** %8, align 8
  %79 = call i32 @curl_mime_free(i8* %78)
  %80 = load %struct.curl_slist*, %struct.curl_slist** %10, align 8
  %81 = bitcast %struct.curl_slist* %80 to i8*
  %82 = call i32 @curl_slist_free_all(i8* %81)
  br label %83

83:                                               ; preds = %75, %2
  ret i32 0
}

declare dso_local i32 @curl_global_init(i32) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i8* @curl_mime_init(i32*) #1

declare dso_local i32* @curl_mime_addpart(i8*) #1

declare dso_local i32 @curl_mime_name(i32*, i8*) #1

declare dso_local i32 @curl_mime_filedata(i32*, i8*) #1

declare dso_local i32 @curl_mime_data(i32*, i8*, i32) #1

declare dso_local i8* @curl_slist_append(i8*, i8*) #1

declare dso_local i32 @curl_easy_setopt(i32*, i32, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @curl_easy_perform(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @curl_easy_strerror(i32) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @curl_mime_free(i8*) #1

declare dso_local i32 @curl_slist_free_all(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

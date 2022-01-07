; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_postit2-formadd.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_postit2-formadd.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curl_httppost = type opaque
%struct.curl_slist = type opaque

@main.buf = internal constant [8 x i8] c"Expect:\00", align 1
@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
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
@.str.5 = private unnamed_addr constant [36 x i8] c"https://example.com/examplepost.cgi\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"noexpectheader\00", align 1
@CURLOPT_HTTPHEADER = common dso_local global i32 0, align 4
@CURLOPT_HTTPPOST = common dso_local global i32 0, align 4
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
  %8 = alloca %struct.curl_httppost*, align 8
  %9 = alloca %struct.curl_httppost*, align 8
  %10 = alloca %struct.curl_slist*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.curl_httppost* null, %struct.curl_httppost** %8, align 8
  store %struct.curl_httppost* null, %struct.curl_httppost** %9, align 8
  store %struct.curl_slist* null, %struct.curl_slist** %10, align 8
  %11 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %12 = call i32 @curl_global_init(i32 %11)
  %13 = bitcast %struct.curl_httppost** %8 to i8**
  %14 = bitcast %struct.curl_httppost** %9 to i8**
  %15 = load i32, i32* @CURLFORM_COPYNAME, align 4
  %16 = load i32, i32* @CURLFORM_FILE, align 4
  %17 = load i32, i32* @CURLFORM_END, align 4
  %18 = call i32 @curl_formadd(i8** %13, i8** %14, i32 %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = bitcast %struct.curl_httppost** %8 to i8**
  %20 = bitcast %struct.curl_httppost** %9 to i8**
  %21 = load i32, i32* @CURLFORM_COPYNAME, align 4
  %22 = load i32, i32* @CURLFORM_COPYCONTENTS, align 4
  %23 = load i32, i32* @CURLFORM_END, align 4
  %24 = call i32 @curl_formadd(i8** %19, i8** %20, i32 %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = bitcast %struct.curl_httppost** %8 to i8**
  %26 = bitcast %struct.curl_httppost** %9 to i8**
  %27 = load i32, i32* @CURLFORM_COPYNAME, align 4
  %28 = load i32, i32* @CURLFORM_COPYCONTENTS, align 4
  %29 = load i32, i32* @CURLFORM_END, align 4
  %30 = call i32 @curl_formadd(i8** %25, i8** %26, i32 %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %29)
  %31 = call i32* (...) @curl_easy_init()
  store i32* %31, i32** %6, align 8
  %32 = load %struct.curl_slist*, %struct.curl_slist** %10, align 8
  %33 = bitcast %struct.curl_slist* %32 to i8*
  %34 = call i8* @curl_slist_append(i8* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @main.buf, i64 0, i64 0))
  %35 = bitcast i8* %34 to %struct.curl_slist*
  store %struct.curl_slist* %35, %struct.curl_slist** %10, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %81

38:                                               ; preds = %2
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* @CURLOPT_URL, align 4
  %41 = call i32 @curl_easy_setopt(i32* %39, i32 %40, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %42 = load i32, i32* %4, align 4
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %44, label %56

44:                                               ; preds = %38
  %45 = load i8**, i8*** %5, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 1
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @strcmp(i8* %47, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* @CURLOPT_HTTPHEADER, align 4
  %53 = load %struct.curl_slist*, %struct.curl_slist** %10, align 8
  %54 = bitcast %struct.curl_slist* %53 to i8*
  %55 = call i32 @curl_easy_setopt(i32* %51, i32 %52, i8* %54)
  br label %56

56:                                               ; preds = %50, %44, %38
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* @CURLOPT_HTTPPOST, align 4
  %59 = load %struct.curl_httppost*, %struct.curl_httppost** %8, align 8
  %60 = bitcast %struct.curl_httppost* %59 to i8*
  %61 = call i32 @curl_easy_setopt(i32* %57, i32 %58, i8* %60)
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @curl_easy_perform(i32* %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @CURLE_OK, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %56
  %68 = load i32, i32* @stderr, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i8* @curl_easy_strerror(i32 %69)
  %71 = call i32 @fprintf(i32 %68, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i8* %70)
  br label %72

72:                                               ; preds = %67, %56
  %73 = load i32*, i32** %6, align 8
  %74 = call i32 @curl_easy_cleanup(i32* %73)
  %75 = load %struct.curl_httppost*, %struct.curl_httppost** %8, align 8
  %76 = bitcast %struct.curl_httppost* %75 to i8*
  %77 = call i32 @curl_formfree(i8* %76)
  %78 = load %struct.curl_slist*, %struct.curl_slist** %10, align 8
  %79 = bitcast %struct.curl_slist* %78 to i8*
  %80 = call i32 @curl_slist_free_all(i8* %79)
  br label %81

81:                                               ; preds = %72, %2
  ret i32 0
}

declare dso_local i32 @curl_global_init(i32) #1

declare dso_local i32 @curl_formadd(i8**, i8**, i32, i8*, i32, i8*, i32) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i8* @curl_slist_append(i8*, i8*) #1

declare dso_local i32 @curl_easy_setopt(i32*, i32, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @curl_easy_perform(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @curl_easy_strerror(i32) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @curl_formfree(i8*) #1

declare dso_local i32 @curl_slist_free_all(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

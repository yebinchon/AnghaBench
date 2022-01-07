; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_ftpuploadfrommem.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_ftpuploadfrommem.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WriteThis = type { i64, i32 }

@data = common dso_local global i32 0, align 4
@CURL_GLOBAL_DEFAULT = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"curl_global_init() failed: %s\0A\00", align 1
@CURLOPT_URL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"ftp://example.com/path/to/upload/file\00", align 1
@CURLOPT_USERPWD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"login:secret\00", align 1
@CURLOPT_UPLOAD = common dso_local global i32 0, align 4
@CURLOPT_READFUNCTION = common dso_local global i32 0, align 4
@read_callback = common dso_local global i64 0, align 8
@CURLOPT_READDATA = common dso_local global i32 0, align 4
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@CURLOPT_INFILESIZE_LARGE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"curl_easy_perform() failed: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.WriteThis, align 8
  store i32 0, i32* %1, align 4
  %5 = load i32, i32* @data, align 4
  %6 = getelementptr inbounds %struct.WriteThis, %struct.WriteThis* %4, i32 0, i32 1
  store i32 %5, i32* %6, align 8
  %7 = load i32, i32* @data, align 4
  %8 = call i64 @strlen(i32 %7)
  %9 = getelementptr inbounds %struct.WriteThis, %struct.WriteThis* %4, i32 0, i32 0
  store i64 %8, i64* %9, align 8
  %10 = load i32, i32* @CURL_GLOBAL_DEFAULT, align 4
  %11 = call i64 @curl_global_init(i32 %10)
  store i64 %11, i64* %3, align 8
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* @CURLE_OK, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %0
  %16 = load i32, i32* @stderr, align 4
  %17 = load i64, i64* %3, align 8
  %18 = call i8* @curl_easy_strerror(i64 %17)
  %19 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %18)
  store i32 1, i32* %1, align 4
  br label %64

20:                                               ; preds = %0
  %21 = call i32* (...) @curl_easy_init()
  store i32* %21, i32** %2, align 8
  %22 = load i32*, i32** %2, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %62

24:                                               ; preds = %20
  %25 = load i32*, i32** %2, align 8
  %26 = load i32, i32* @CURLOPT_URL, align 4
  %27 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %25, i32 %26, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32*, i32** %2, align 8
  %29 = load i32, i32* @CURLOPT_USERPWD, align 4
  %30 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %28, i32 %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i32*, i32** %2, align 8
  %32 = load i32, i32* @CURLOPT_UPLOAD, align 4
  %33 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %31, i32 %32, i64 1)
  %34 = load i32*, i32** %2, align 8
  %35 = load i32, i32* @CURLOPT_READFUNCTION, align 4
  %36 = load i64, i64* @read_callback, align 8
  %37 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %34, i32 %35, i64 %36)
  %38 = load i32*, i32** %2, align 8
  %39 = load i32, i32* @CURLOPT_READDATA, align 4
  %40 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %38, i32 %39, %struct.WriteThis* %4)
  %41 = load i32*, i32** %2, align 8
  %42 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %43 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %41, i32 %42, i64 1)
  %44 = load i32*, i32** %2, align 8
  %45 = load i32, i32* @CURLOPT_INFILESIZE_LARGE, align 4
  %46 = getelementptr inbounds %struct.WriteThis, %struct.WriteThis* %4, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %44, i32 %45, i64 %47)
  %49 = load i32*, i32** %2, align 8
  %50 = call i64 @curl_easy_perform(i32* %49)
  store i64 %50, i64* %3, align 8
  %51 = load i64, i64* %3, align 8
  %52 = load i64, i64* @CURLE_OK, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %24
  %55 = load i32, i32* @stderr, align 4
  %56 = load i64, i64* %3, align 8
  %57 = call i8* @curl_easy_strerror(i64 %56)
  %58 = call i32 @fprintf(i32 %55, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %57)
  br label %59

59:                                               ; preds = %54, %24
  %60 = load i32*, i32** %2, align 8
  %61 = call i32 @curl_easy_cleanup(i32* %60)
  br label %62

62:                                               ; preds = %59, %20
  %63 = call i32 (...) @curl_global_cleanup()
  store i32 0, i32* %1, align 4
  br label %64

64:                                               ; preds = %62, %15
  %65 = load i32, i32* %1, align 4
  ret i32 %65
}

declare dso_local i64 @strlen(i32) #1

declare dso_local i64 @curl_global_init(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @curl_easy_strerror(i64) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @curl_easy_setopt(i32*, i32, ...) #1

declare dso_local i64 @curl_easy_perform(i32*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @curl_global_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

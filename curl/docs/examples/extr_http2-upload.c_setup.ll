; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_http2-upload.c_setup.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_http2-upload.c_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input = type { i32, i8*, i32* }
%struct.stat = type { i64 }

@.str = private unnamed_addr constant [6 x i8] c"dl-%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"https://localhost:8443/upload-%d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@CURLOPT_WRITEDATA = common dso_local global i32 0, align 4
@CURLOPT_READFUNCTION = common dso_local global i32 0, align 4
@read_callback = common dso_local global i64 0, align 8
@CURLOPT_READDATA = common dso_local global i32 0, align 4
@CURLOPT_INFILESIZE_LARGE = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_UPLOAD = common dso_local global i32 0, align 4
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@CURLOPT_DEBUGFUNCTION = common dso_local global i32 0, align 4
@my_trace = common dso_local global i64 0, align 8
@CURLOPT_DEBUGDATA = common dso_local global i32 0, align 4
@CURLOPT_HTTP_VERSION = common dso_local global i32 0, align 4
@CURL_HTTP_VERSION_2_0 = common dso_local global i64 0, align 8
@CURLOPT_SSL_VERIFYPEER = common dso_local global i32 0, align 4
@CURLOPT_SSL_VERIFYHOST = common dso_local global i32 0, align 4
@CURLOPT_PIPEWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input*, i32, i8*)* @setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup(%struct.input* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.input*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [256 x i8], align 16
  %9 = alloca [128 x i8], align 16
  %10 = alloca %struct.stat, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  store %struct.input* %0, %struct.input** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %13 = call i32* (...) @curl_easy_init()
  %14 = load %struct.input*, %struct.input** %4, align 8
  %15 = getelementptr inbounds %struct.input, %struct.input* %14, i32 0, i32 2
  store i32* %13, i32** %15, align 8
  store i32* %13, i32** %12, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.input*, %struct.input** %4, align 8
  %18 = getelementptr inbounds %struct.input, %struct.input* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @snprintf(i8* %19, i32 128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %23 = call i8* @fopen(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %24 = bitcast i8* %23 to i32*
  store i32* %24, i32** %7, align 8
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @snprintf(i8* %25, i32 256, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @stat(i8* %28, %struct.stat* %10)
  %30 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %11, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i8* @fopen(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %34 = load %struct.input*, %struct.input** %4, align 8
  %35 = getelementptr inbounds %struct.input, %struct.input* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = load i32, i32* @CURLOPT_WRITEDATA, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %36, i32 %37, i32* %38)
  %40 = load i32*, i32** %12, align 8
  %41 = load i32, i32* @CURLOPT_READFUNCTION, align 4
  %42 = load i64, i64* @read_callback, align 8
  %43 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %40, i32 %41, i64 %42)
  %44 = load i32*, i32** %12, align 8
  %45 = load i32, i32* @CURLOPT_READDATA, align 4
  %46 = load %struct.input*, %struct.input** %4, align 8
  %47 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %44, i32 %45, %struct.input* %46)
  %48 = load i32*, i32** %12, align 8
  %49 = load i32, i32* @CURLOPT_INFILESIZE_LARGE, align 4
  %50 = load i64, i64* %11, align 8
  %51 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %48, i32 %49, i64 %50)
  %52 = load i32*, i32** %12, align 8
  %53 = load i32, i32* @CURLOPT_URL, align 4
  %54 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %55 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %52, i32 %53, i8* %54)
  %56 = load i32*, i32** %12, align 8
  %57 = load i32, i32* @CURLOPT_UPLOAD, align 4
  %58 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %56, i32 %57, i64 1)
  %59 = load i32*, i32** %12, align 8
  %60 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %61 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %59, i32 %60, i64 1)
  %62 = load i32*, i32** %12, align 8
  %63 = load i32, i32* @CURLOPT_DEBUGFUNCTION, align 4
  %64 = load i64, i64* @my_trace, align 8
  %65 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %62, i32 %63, i64 %64)
  %66 = load i32*, i32** %12, align 8
  %67 = load i32, i32* @CURLOPT_DEBUGDATA, align 4
  %68 = load %struct.input*, %struct.input** %4, align 8
  %69 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %66, i32 %67, %struct.input* %68)
  %70 = load i32*, i32** %12, align 8
  %71 = load i32, i32* @CURLOPT_HTTP_VERSION, align 4
  %72 = load i64, i64* @CURL_HTTP_VERSION_2_0, align 8
  %73 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %70, i32 %71, i64 %72)
  %74 = load i32*, i32** %12, align 8
  %75 = load i32, i32* @CURLOPT_SSL_VERIFYPEER, align 4
  %76 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %74, i32 %75, i64 0)
  %77 = load i32*, i32** %12, align 8
  %78 = load i32, i32* @CURLOPT_SSL_VERIFYHOST, align 4
  %79 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %77, i32 %78, i64 0)
  ret void
}

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i8* @fopen(i8*, i8*) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @curl_easy_setopt(i32*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

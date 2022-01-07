; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_crawler.c_make_handle.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_crawler.c_make_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i64 }

@CURLOPT_HTTP_VERSION = common dso_local global i32 0, align 4
@CURL_HTTP_VERSION_2TLS = common dso_local global i64 0, align 8
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_WRITEFUNCTION = common dso_local global i32 0, align 4
@grow_buffer = common dso_local global i64 0, align 8
@CURLOPT_WRITEDATA = common dso_local global i32 0, align 4
@CURLOPT_PRIVATE = common dso_local global i32 0, align 4
@CURLOPT_ACCEPT_ENCODING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CURLOPT_TIMEOUT = common dso_local global i32 0, align 4
@CURLOPT_FOLLOWLOCATION = common dso_local global i32 0, align 4
@CURLOPT_MAXREDIRS = common dso_local global i32 0, align 4
@CURLOPT_CONNECTTIMEOUT = common dso_local global i32 0, align 4
@CURLOPT_COOKIEFILE = common dso_local global i32 0, align 4
@CURLOPT_FILETIME = common dso_local global i32 0, align 4
@CURLOPT_USERAGENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"mini crawler\00", align 1
@CURLOPT_HTTPAUTH = common dso_local global i32 0, align 4
@CURLAUTH_ANY = common dso_local global i64 0, align 8
@CURLOPT_UNRESTRICTED_AUTH = common dso_local global i32 0, align 4
@CURLOPT_PROXYAUTH = common dso_local global i32 0, align 4
@CURLOPT_EXPECT_100_TIMEOUT_MS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @make_handle(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %2, align 8
  %5 = call i32* (...) @curl_easy_init()
  store i32* %5, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* @CURLOPT_HTTP_VERSION, align 4
  %8 = load i64, i64* @CURL_HTTP_VERSION_2TLS, align 8
  %9 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %6, i32 %7, i64 %8)
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* @CURLOPT_URL, align 4
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %10, i32 %11, i8* %12)
  %14 = call i8* @malloc(i32 16)
  %15 = bitcast i8* %14 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %4, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = call i8* @malloc(i32 1)
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* @CURLOPT_WRITEFUNCTION, align 4
  %23 = load i64, i64* @grow_buffer, align 8
  %24 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %21, i32 %22, i64 %23)
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* @CURLOPT_WRITEDATA, align 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %28 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %25, i32 %26, %struct.TYPE_2__* %27)
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* @CURLOPT_PRIVATE, align 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %32 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %29, i32 %30, %struct.TYPE_2__* %31)
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* @CURLOPT_ACCEPT_ENCODING, align 4
  %35 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %33, i32 %34, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* @CURLOPT_TIMEOUT, align 4
  %38 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %36, i32 %37, i64 5)
  %39 = load i32*, i32** %3, align 8
  %40 = load i32, i32* @CURLOPT_FOLLOWLOCATION, align 4
  %41 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %39, i32 %40, i64 1)
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* @CURLOPT_MAXREDIRS, align 4
  %44 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %42, i32 %43, i64 10)
  %45 = load i32*, i32** %3, align 8
  %46 = load i32, i32* @CURLOPT_CONNECTTIMEOUT, align 4
  %47 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %45, i32 %46, i64 2)
  %48 = load i32*, i32** %3, align 8
  %49 = load i32, i32* @CURLOPT_COOKIEFILE, align 4
  %50 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %48, i32 %49, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %51 = load i32*, i32** %3, align 8
  %52 = load i32, i32* @CURLOPT_FILETIME, align 4
  %53 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %51, i32 %52, i64 1)
  %54 = load i32*, i32** %3, align 8
  %55 = load i32, i32* @CURLOPT_USERAGENT, align 4
  %56 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %54, i32 %55, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32*, i32** %3, align 8
  %58 = load i32, i32* @CURLOPT_HTTPAUTH, align 4
  %59 = load i64, i64* @CURLAUTH_ANY, align 8
  %60 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %57, i32 %58, i64 %59)
  %61 = load i32*, i32** %3, align 8
  %62 = load i32, i32* @CURLOPT_UNRESTRICTED_AUTH, align 4
  %63 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %61, i32 %62, i64 1)
  %64 = load i32*, i32** %3, align 8
  %65 = load i32, i32* @CURLOPT_PROXYAUTH, align 4
  %66 = load i64, i64* @CURLAUTH_ANY, align 8
  %67 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %64, i32 %65, i64 %66)
  %68 = load i32*, i32** %3, align 8
  %69 = load i32, i32* @CURLOPT_EXPECT_100_TIMEOUT_MS, align 4
  %70 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %68, i32 %69, i64 0)
  %71 = load i32*, i32** %3, align 8
  ret i32* %71
}

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @curl_easy_setopt(i32*, i32, ...) #1

declare dso_local i8* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

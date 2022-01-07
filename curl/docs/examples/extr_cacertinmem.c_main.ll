; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_cacertinmem.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_cacertinmem.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@CURLOPT_HEADER = common dso_local global i32 0, align 4
@CURLOPT_NOPROGRESS = common dso_local global i32 0, align 4
@CURLOPT_NOSIGNAL = common dso_local global i32 0, align 4
@CURLOPT_WRITEFUNCTION = common dso_local global i32 0, align 4
@writefunction = common dso_local global i64* null, align 8
@CURLOPT_WRITEDATA = common dso_local global i32 0, align 4
@stdout = common dso_local global i64 0, align 8
@CURLOPT_HEADERFUNCTION = common dso_local global i32 0, align 4
@CURLOPT_HEADERDATA = common dso_local global i32 0, align 4
@stderr = common dso_local global i64 0, align 8
@CURLOPT_SSLCERTTYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"PEM\00", align 1
@CURLOPT_SSL_VERIFYPEER = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"https://www.example.com/\00", align 1
@CURLOPT_CAINFO = common dso_local global i32 0, align 4
@CURLOPT_CAPATH = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"*** transfer succeeded ***\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"*** transfer failed ***\0A\00", align 1
@CURLOPT_FRESH_CONNECT = common dso_local global i32 0, align 4
@CURLOPT_SSL_CTX_FUNCTION = common dso_local global i32 0, align 4
@sslctx_function = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %4 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %5 = call i32 @curl_global_init(i32 %4)
  %6 = call i32* (...) @curl_easy_init()
  store i32* %6, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %9 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %7, i32 %8, i64 0)
  %10 = load i32*, i32** %2, align 8
  %11 = load i32, i32* @CURLOPT_HEADER, align 4
  %12 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %10, i32 %11, i64 0)
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* @CURLOPT_NOPROGRESS, align 4
  %15 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %13, i32 %14, i64 1)
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* @CURLOPT_NOSIGNAL, align 4
  %18 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %16, i32 %17, i64 1)
  %19 = load i32*, i32** %2, align 8
  %20 = load i32, i32* @CURLOPT_WRITEFUNCTION, align 4
  %21 = load i64*, i64** @writefunction, align 8
  %22 = load i64, i64* %21, align 8
  %23 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %19, i32 %20, i64 %22)
  %24 = load i32*, i32** %2, align 8
  %25 = load i32, i32* @CURLOPT_WRITEDATA, align 4
  %26 = load i64, i64* @stdout, align 8
  %27 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %24, i32 %25, i64 %26)
  %28 = load i32*, i32** %2, align 8
  %29 = load i32, i32* @CURLOPT_HEADERFUNCTION, align 4
  %30 = load i64*, i64** @writefunction, align 8
  %31 = load i64, i64* %30, align 8
  %32 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %28, i32 %29, i64 %31)
  %33 = load i32*, i32** %2, align 8
  %34 = load i32, i32* @CURLOPT_HEADERDATA, align 4
  %35 = load i64, i64* @stderr, align 8
  %36 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %33, i32 %34, i64 %35)
  %37 = load i32*, i32** %2, align 8
  %38 = load i32, i32* @CURLOPT_SSLCERTTYPE, align 4
  %39 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %37, i32 %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %40 = load i32*, i32** %2, align 8
  %41 = load i32, i32* @CURLOPT_SSL_VERIFYPEER, align 4
  %42 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %40, i32 %41, i64 1)
  %43 = load i32*, i32** %2, align 8
  %44 = load i32, i32* @CURLOPT_URL, align 4
  %45 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %43, i32 %44, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32*, i32** %2, align 8
  %47 = load i32, i32* @CURLOPT_CAINFO, align 4
  %48 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %46, i32 %47, i8* null)
  %49 = load i32*, i32** %2, align 8
  %50 = load i32, i32* @CURLOPT_CAPATH, align 4
  %51 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %49, i32 %50, i8* null)
  %52 = load i32*, i32** %2, align 8
  %53 = call i64 @curl_easy_perform(i32* %52)
  store i64 %53, i64* %3, align 8
  %54 = load i64, i64* %3, align 8
  %55 = load i64, i64* @CURLE_OK, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %0
  %58 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %61

59:                                               ; preds = %0
  %60 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %57
  %62 = load i32*, i32** %2, align 8
  %63 = load i32, i32* @CURLOPT_FRESH_CONNECT, align 4
  %64 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %62, i32 %63, i64 1)
  %65 = load i32*, i32** %2, align 8
  %66 = load i32, i32* @CURLOPT_SSL_CTX_FUNCTION, align 4
  %67 = load i64*, i64** @sslctx_function, align 8
  %68 = load i64, i64* %67, align 8
  %69 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %65, i32 %66, i64 %68)
  %70 = load i32*, i32** %2, align 8
  %71 = call i64 @curl_easy_perform(i32* %70)
  store i64 %71, i64* %3, align 8
  %72 = load i64, i64* %3, align 8
  %73 = load i64, i64* @CURLE_OK, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %61
  %76 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %79

77:                                               ; preds = %61
  %78 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %75
  %80 = load i32*, i32** %2, align 8
  %81 = call i32 @curl_easy_cleanup(i32* %80)
  %82 = call i32 (...) @curl_global_cleanup()
  %83 = load i64, i64* %3, align 8
  %84 = trunc i64 %83 to i32
  ret i32 %84
}

declare dso_local i32 @curl_global_init(i32) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @curl_easy_setopt(i32*, i32, ...) #1

declare dso_local i64 @curl_easy_perform(i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @curl_global_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

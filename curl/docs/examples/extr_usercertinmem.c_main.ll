; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_usercertinmem.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_usercertinmem.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@CURLOPT_HEADER = common dso_local global i32 0, align 4
@CURLOPT_NOPROGRESS = common dso_local global i32 0, align 4
@CURLOPT_NOSIGNAL = common dso_local global i32 0, align 4
@CURLOPT_WRITEFUNCTION = common dso_local global i32 0, align 4
@writefunction = common dso_local global i8* null, align 8
@CURLOPT_WRITEDATA = common dso_local global i32 0, align 4
@stdout = common dso_local global i8* null, align 8
@CURLOPT_HEADERFUNCTION = common dso_local global i32 0, align 4
@CURLOPT_HEADERDATA = common dso_local global i32 0, align 4
@stderr = common dso_local global i8* null, align 8
@CURLOPT_SSLCERTTYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"PEM\00", align 1
@CURLOPT_SSL_VERIFYPEER = common dso_local global i32 0, align 4
@CURLOPT_SSL_VERIFYHOST = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"https://www.example.com/\00", align 1
@CURLOPT_SSLKEYTYPE = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"*** transfer succeeded ***\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"*** transfer failed ***\0A\00", align 1
@CURLOPT_SSL_CTX_FUNCTION = common dso_local global i32 0, align 4
@sslctx_function = common dso_local global i8** null, align 8

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
  %21 = load i8*, i8** @writefunction, align 8
  %22 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %19, i32 %20, i8* %21)
  %23 = load i32*, i32** %2, align 8
  %24 = load i32, i32* @CURLOPT_WRITEDATA, align 4
  %25 = load i8*, i8** @stdout, align 8
  %26 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %23, i32 %24, i8* %25)
  %27 = load i32*, i32** %2, align 8
  %28 = load i32, i32* @CURLOPT_HEADERFUNCTION, align 4
  %29 = load i8*, i8** @writefunction, align 8
  %30 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %27, i32 %28, i8* %29)
  %31 = load i32*, i32** %2, align 8
  %32 = load i32, i32* @CURLOPT_HEADERDATA, align 4
  %33 = load i8*, i8** @stderr, align 8
  %34 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %31, i32 %32, i8* %33)
  %35 = load i32*, i32** %2, align 8
  %36 = load i32, i32* @CURLOPT_SSLCERTTYPE, align 4
  %37 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %35, i32 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %38 = load i32*, i32** %2, align 8
  %39 = load i32, i32* @CURLOPT_SSL_VERIFYPEER, align 4
  %40 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %38, i32 %39, i64 0)
  %41 = load i32*, i32** %2, align 8
  %42 = load i32, i32* @CURLOPT_SSL_VERIFYHOST, align 4
  %43 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %41, i32 %42, i64 0)
  %44 = load i32*, i32** %2, align 8
  %45 = load i32, i32* @CURLOPT_URL, align 4
  %46 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %44, i32 %45, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32*, i32** %2, align 8
  %48 = load i32, i32* @CURLOPT_SSLKEYTYPE, align 4
  %49 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %47, i32 %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %50 = load i32*, i32** %2, align 8
  %51 = call i64 @curl_easy_perform(i32* %50)
  store i64 %51, i64* %3, align 8
  %52 = load i64, i64* %3, align 8
  %53 = load i64, i64* @CURLE_OK, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %0
  %56 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %59

57:                                               ; preds = %0
  %58 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %55
  %60 = load i32*, i32** %2, align 8
  %61 = load i32, i32* @CURLOPT_SSL_CTX_FUNCTION, align 4
  %62 = load i8**, i8*** @sslctx_function, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %60, i32 %61, i8* %63)
  %65 = load i32*, i32** %2, align 8
  %66 = call i64 @curl_easy_perform(i32* %65)
  store i64 %66, i64* %3, align 8
  %67 = load i64, i64* %3, align 8
  %68 = load i64, i64* @CURLE_OK, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %59
  %71 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %74

72:                                               ; preds = %59
  %73 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %70
  %75 = load i32*, i32** %2, align 8
  %76 = call i32 @curl_easy_cleanup(i32* %75)
  %77 = call i32 (...) @curl_global_cleanup()
  %78 = load i64, i64* %3, align 8
  %79 = trunc i64 %78 to i32
  ret i32 %79
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

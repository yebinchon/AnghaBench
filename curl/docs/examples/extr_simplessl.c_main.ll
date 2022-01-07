; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_simplessl.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_simplessl.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main.pCertFile = internal global i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [13 x i8] c"testcert.pem\00", align 1
@main.pCACertFile = internal global i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"cacert.pem\00", align 1
@main.pHeaderFile = internal global i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"dumpit\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"testkey.pem\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"PEM\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@CURL_GLOBAL_DEFAULT = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"HTTPS://your.favourite.ssl.site\00", align 1
@CURLOPT_HEADERDATA = common dso_local global i32 0, align 4
@CURLOPT_SSLENGINE = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"can't set crypto engine\0A\00", align 1
@CURLOPT_SSLENGINE_DEFAULT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [36 x i8] c"can't set crypto engine as default\0A\00", align 1
@CURLOPT_SSLCERTTYPE = common dso_local global i32 0, align 4
@CURLOPT_SSLCERT = common dso_local global i32 0, align 4
@CURLOPT_KEYPASSWD = common dso_local global i32 0, align 4
@CURLOPT_SSLKEYTYPE = common dso_local global i32 0, align 4
@CURLOPT_SSLKEY = common dso_local global i32 0, align 4
@CURLOPT_CAINFO = common dso_local global i32 0, align 4
@CURLOPT_SSL_VERIFYPEER = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [32 x i8] c"curl_easy_perform() failed: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  store i8* null, i8** %5, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  store i8* null, i8** %8, align 8
  %9 = load i8*, i8** @main.pHeaderFile, align 8
  %10 = call i32* @fopen(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store i32* %10, i32** %4, align 8
  %11 = load i32, i32* @CURL_GLOBAL_DEFAULT, align 4
  %12 = call i32 @curl_global_init(i32 %11)
  %13 = call i32* (...) @curl_easy_init()
  store i32* %13, i32** %2, align 8
  %14 = load i32*, i32** %2, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %92

16:                                               ; preds = %0
  %17 = load i32*, i32** %2, align 8
  %18 = load i32, i32* @CURLOPT_URL, align 4
  %19 = call i64 (i32*, i32, ...) @curl_easy_setopt(i32* %17, i32 %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %20 = load i32*, i32** %2, align 8
  %21 = load i32, i32* @CURLOPT_HEADERDATA, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = call i64 (i32*, i32, ...) @curl_easy_setopt(i32* %20, i32 %21, i32* %22)
  br label %24

24:                                               ; preds = %16
  %25 = load i8*, i8** %8, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %47

27:                                               ; preds = %24
  %28 = load i32*, i32** %2, align 8
  %29 = load i32, i32* @CURLOPT_SSLENGINE, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = call i64 (i32*, i32, ...) @curl_easy_setopt(i32* %28, i32 %29, i8* %30)
  %32 = load i64, i64* @CURLE_OK, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* @stderr, align 4
  %36 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  br label %89

37:                                               ; preds = %27
  %38 = load i32*, i32** %2, align 8
  %39 = load i32, i32* @CURLOPT_SSLENGINE_DEFAULT, align 4
  %40 = call i64 (i32*, i32, ...) @curl_easy_setopt(i32* %38, i32 %39, i64 1)
  %41 = load i64, i64* @CURLE_OK, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* @stderr, align 4
  %45 = call i32 (i32, i8*, ...) @fprintf(i32 %44, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  br label %89

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46, %24
  %48 = load i32*, i32** %2, align 8
  %49 = load i32, i32* @CURLOPT_SSLCERTTYPE, align 4
  %50 = call i64 (i32*, i32, ...) @curl_easy_setopt(i32* %48, i32 %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %51 = load i32*, i32** %2, align 8
  %52 = load i32, i32* @CURLOPT_SSLCERT, align 4
  %53 = load i8*, i8** @main.pCertFile, align 8
  %54 = call i64 (i32*, i32, ...) @curl_easy_setopt(i32* %51, i32 %52, i8* %53)
  %55 = load i8*, i8** %5, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %47
  %58 = load i32*, i32** %2, align 8
  %59 = load i32, i32* @CURLOPT_KEYPASSWD, align 4
  %60 = load i8*, i8** %5, align 8
  %61 = call i64 (i32*, i32, ...) @curl_easy_setopt(i32* %58, i32 %59, i8* %60)
  br label %62

62:                                               ; preds = %57, %47
  %63 = load i32*, i32** %2, align 8
  %64 = load i32, i32* @CURLOPT_SSLKEYTYPE, align 4
  %65 = load i8*, i8** %7, align 8
  %66 = call i64 (i32*, i32, ...) @curl_easy_setopt(i32* %63, i32 %64, i8* %65)
  %67 = load i32*, i32** %2, align 8
  %68 = load i32, i32* @CURLOPT_SSLKEY, align 4
  %69 = load i8*, i8** %6, align 8
  %70 = call i64 (i32*, i32, ...) @curl_easy_setopt(i32* %67, i32 %68, i8* %69)
  %71 = load i32*, i32** %2, align 8
  %72 = load i32, i32* @CURLOPT_CAINFO, align 4
  %73 = load i8*, i8** @main.pCACertFile, align 8
  %74 = call i64 (i32*, i32, ...) @curl_easy_setopt(i32* %71, i32 %72, i8* %73)
  %75 = load i32*, i32** %2, align 8
  %76 = load i32, i32* @CURLOPT_SSL_VERIFYPEER, align 4
  %77 = call i64 (i32*, i32, ...) @curl_easy_setopt(i32* %75, i32 %76, i64 1)
  %78 = load i32*, i32** %2, align 8
  %79 = call i64 @curl_easy_perform(i32* %78)
  store i64 %79, i64* %3, align 8
  %80 = load i64, i64* %3, align 8
  %81 = load i64, i64* @CURLE_OK, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %62
  %84 = load i32, i32* @stderr, align 4
  %85 = load i64, i64* %3, align 8
  %86 = call i8* @curl_easy_strerror(i64 %85)
  %87 = call i32 (i32, i8*, ...) @fprintf(i32 %84, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i8* %86)
  br label %88

88:                                               ; preds = %83, %62
  br label %89

89:                                               ; preds = %88, %43, %34
  %90 = load i32*, i32** %2, align 8
  %91 = call i32 @curl_easy_cleanup(i32* %90)
  br label %92

92:                                               ; preds = %89, %0
  %93 = call i32 (...) @curl_global_cleanup()
  ret i32 0
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @curl_global_init(i32) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i64 @curl_easy_setopt(i32*, i32, ...) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @curl_easy_perform(i32*) #1

declare dso_local i8* @curl_easy_strerror(i64) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @curl_global_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

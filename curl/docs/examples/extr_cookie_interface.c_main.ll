; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_cookie_interface.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_cookie_interface.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"https://www.example.com/\00", align 1
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@CURLOPT_COOKIEFILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CURLE_OK = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Curl perform failed: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Erasing curl's knowledge of cookies!\0A\00", align 1
@CURLOPT_COOKIELIST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"ALL\00", align 1
@.str.5 = private unnamed_addr constant [95 x i8] c"-----------------------------------------------\0ASetting a cookie \22PREF\22 via cookie interface:\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"%s\09%s\09%s\09%s\09%lu\09%s\09%s\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c".example.com\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"PREF\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"hello example, i like you very much!\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"Curl curl_easy_setopt failed: %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [107 x i8] c"Set-Cookie: OLD_PREF=3d141414bf4209321; expires=Sun, 17-Jan-2038 19:14:07 GMT; path=/; domain=.example.com\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"Curl init failed!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [256 x i8], align 16
  store i32 0, i32* %1, align 4
  %5 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %6 = call i32 @curl_global_init(i32 %5)
  %7 = call i32* (...) @curl_easy_init()
  store i32* %7, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %87

10:                                               ; preds = %0
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* @CURLOPT_URL, align 4
  %13 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %11, i32 %12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %14 = load i32*, i32** %2, align 8
  %15 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %16 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %14, i32 %15, i64 1)
  %17 = load i32*, i32** %2, align 8
  %18 = load i32, i32* @CURLOPT_COOKIEFILE, align 4
  %19 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %17, i32 %18, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @curl_easy_perform(i32* %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @CURLE_OK, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %10
  %26 = load i32, i32* @stderr, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i8* @curl_easy_strerror(i32 %27)
  %29 = call i32 (i32, i8*, ...) @fprintf(i32 %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %28)
  store i32 1, i32* %1, align 4
  br label %92

30:                                               ; preds = %10
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @print_cookies(i32* %31)
  %33 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %34 = load i32*, i32** %2, align 8
  %35 = load i32, i32* @CURLOPT_COOKIELIST, align 4
  %36 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %34, i32 %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @print_cookies(i32* %37)
  %39 = call i32 @printf(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.5, i64 0, i64 0))
  %40 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %41 = call i64 @time(i32* null)
  %42 = add i64 %41, 31337
  %43 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %40, i32 256, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0))
  %44 = load i32*, i32** %2, align 8
  %45 = load i32, i32* @CURLOPT_COOKIELIST, align 4
  %46 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %47 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %44, i32 %45, i8* %46)
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @CURLE_OK, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %30
  %52 = load i32, i32* @stderr, align 4
  %53 = load i32, i32* %3, align 4
  %54 = call i8* @curl_easy_strerror(i32 %53)
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %52, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0), i8* %54)
  store i32 1, i32* %1, align 4
  br label %92

56:                                               ; preds = %30
  %57 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %58 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %57, i32 256, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.14, i64 0, i64 0))
  %59 = load i32*, i32** %2, align 8
  %60 = load i32, i32* @CURLOPT_COOKIELIST, align 4
  %61 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %62 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %59, i32 %60, i8* %61)
  store i32 %62, i32* %3, align 4
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* @CURLE_OK, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %56
  %67 = load i32, i32* @stderr, align 4
  %68 = load i32, i32* %3, align 4
  %69 = call i8* @curl_easy_strerror(i32 %68)
  %70 = call i32 (i32, i8*, ...) @fprintf(i32 %67, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0), i8* %69)
  store i32 1, i32* %1, align 4
  br label %92

71:                                               ; preds = %56
  %72 = load i32*, i32** %2, align 8
  %73 = call i32 @print_cookies(i32* %72)
  %74 = load i32*, i32** %2, align 8
  %75 = call i32 @curl_easy_perform(i32* %74)
  store i32 %75, i32* %3, align 4
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* @CURLE_OK, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %71
  %80 = load i32, i32* @stderr, align 4
  %81 = load i32, i32* %3, align 4
  %82 = call i8* @curl_easy_strerror(i32 %81)
  %83 = call i32 (i32, i8*, ...) @fprintf(i32 %80, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %82)
  store i32 1, i32* %1, align 4
  br label %92

84:                                               ; preds = %71
  %85 = load i32*, i32** %2, align 8
  %86 = call i32 @curl_easy_cleanup(i32* %85)
  br label %90

87:                                               ; preds = %0
  %88 = load i32, i32* @stderr, align 4
  %89 = call i32 (i32, i8*, ...) @fprintf(i32 %88, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %92

90:                                               ; preds = %84
  %91 = call i32 (...) @curl_global_cleanup()
  store i32 0, i32* %1, align 4
  br label %92

92:                                               ; preds = %90, %87, %79, %66, %51, %25
  %93 = load i32, i32* %1, align 4
  ret i32 %93
}

declare dso_local i32 @curl_global_init(i32) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @curl_easy_setopt(i32*, i32, ...) #1

declare dso_local i32 @curl_easy_perform(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @curl_easy_strerror(i32) #1

declare dso_local i32 @print_cookies(i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @curl_global_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

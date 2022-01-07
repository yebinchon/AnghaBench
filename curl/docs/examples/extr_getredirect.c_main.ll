; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_getredirect.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_getredirect.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURLOPT_URL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"https://example.com\00", align 1
@CURLE_OK = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"curl_easy_perform() failed: %s\0A\00", align 1
@CURLINFO_RESPONSE_CODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Not a redirect.\0A\00", align 1
@CURLINFO_REDIRECT_URL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"Redirected to: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %6 = call i32* (...) @curl_easy_init()
  store i32* %6, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %55

9:                                                ; preds = %0
  %10 = load i32*, i32** %2, align 8
  %11 = load i32, i32* @CURLOPT_URL, align 4
  %12 = call i32 @curl_easy_setopt(i32* %10, i32 %11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @curl_easy_perform(i32* %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @CURLE_OK, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %9
  %19 = load i32, i32* @stderr, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i8* @curl_easy_strerror(i32 %20)
  %22 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  br label %52

23:                                               ; preds = %9
  %24 = load i32*, i32** %2, align 8
  %25 = load i32, i32* @CURLINFO_RESPONSE_CODE, align 4
  %26 = call i32 (i32*, i32, ...) @curl_easy_getinfo(i32* %24, i32 %25, i64* %5)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @CURLE_OK, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load i64, i64* %5, align 8
  %32 = sdiv i64 %31, 100
  %33 = icmp ne i64 %32, 3
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @stderr, align 4
  %36 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %51

37:                                               ; preds = %30, %23
  %38 = load i32*, i32** %2, align 8
  %39 = load i32, i32* @CURLINFO_REDIRECT_URL, align 4
  %40 = call i32 (i32*, i32, ...) @curl_easy_getinfo(i32* %38, i32 %39, i8** %4)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @CURLE_OK, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %37
  %45 = load i8*, i8** %4, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i8*, i8** %4, align 8
  %49 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %48)
  br label %50

50:                                               ; preds = %47, %44, %37
  br label %51

51:                                               ; preds = %50, %34
  br label %52

52:                                               ; preds = %51, %18
  %53 = load i32*, i32** %2, align 8
  %54 = call i32 @curl_easy_cleanup(i32* %53)
  br label %55

55:                                               ; preds = %52, %0
  ret i32 0
}

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @curl_easy_setopt(i32*, i32, i8*) #1

declare dso_local i32 @curl_easy_perform(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @curl_easy_strerror(i32) #1

declare dso_local i32 @curl_easy_getinfo(i32*, i32, ...) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

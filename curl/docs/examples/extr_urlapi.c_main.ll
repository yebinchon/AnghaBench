; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_urlapi.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_urlapi.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURLUPART_URL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"http://example.com/path/index.html\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"curl_url_set() failed: %in\00", align 1
@CURLOPT_CURLU = common dso_local global i32 0, align 4
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"curl_easy_perform() failed: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = call i32* (...) @curl_easy_init()
  store i32* %6, i32** %2, align 8
  %7 = call i32* (...) @curl_url()
  store i32* %7, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* @CURLUPART_URL, align 4
  %10 = call i32 @curl_url_set(i32* %8, i32 %9, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %0
  %14 = load i32, i32* @stderr, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 (i32, i8*, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  br label %41

17:                                               ; preds = %0
  %18 = load i32*, i32** %2, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %40

20:                                               ; preds = %17
  %21 = load i32*, i32** %2, align 8
  %22 = load i32, i32* @CURLOPT_CURLU, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = ptrtoint i32* %23 to i64
  %25 = call i32 @curl_easy_setopt(i32* %21, i32 %22, i64 %24)
  %26 = load i32*, i32** %2, align 8
  %27 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %28 = call i32 @curl_easy_setopt(i32* %26, i32 %27, i64 1)
  %29 = load i32*, i32** %2, align 8
  %30 = call i64 @curl_easy_perform(i32* %29)
  store i64 %30, i64* %3, align 8
  %31 = load i64, i64* %3, align 8
  %32 = load i64, i64* @CURLE_OK, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %20
  %35 = load i32, i32* @stderr, align 4
  %36 = load i64, i64* %3, align 8
  %37 = call i8* @curl_easy_strerror(i64 %36)
  %38 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %37)
  br label %39

39:                                               ; preds = %34, %20
  br label %41

40:                                               ; preds = %17
  br label %41

41:                                               ; preds = %40, %39, %13
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @curl_url_cleanup(i32* %42)
  %44 = load i32*, i32** %2, align 8
  %45 = call i32 @curl_easy_cleanup(i32* %44)
  ret i32 0
}

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32* @curl_url(...) #1

declare dso_local i32 @curl_url_set(i32*, i32, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @curl_easy_setopt(i32*, i32, i64) #1

declare dso_local i64 @curl_easy_perform(i32*) #1

declare dso_local i8* @curl_easy_strerror(i64) #1

declare dso_local i32 @curl_url_cleanup(i32*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

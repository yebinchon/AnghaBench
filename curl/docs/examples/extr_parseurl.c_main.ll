; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_parseurl.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_parseurl.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURLUPART_URL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"http://example.com/path/index.html\00", align 1
@CURLUPART_HOST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Host name: %s\0A\00", align 1
@CURLUPART_PATH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"Path: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"../another/second.html\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  %6 = call i32* (...) @curl_url()
  store i32* %6, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  store i32 1, i32* %1, align 4
  br label %61

10:                                               ; preds = %0
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* @CURLUPART_URL, align 4
  %13 = call i64 @curl_url_set(i32* %11, i32 %12, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 0)
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* %3, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %58

17:                                               ; preds = %10
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* @CURLUPART_HOST, align 4
  %20 = call i64 @curl_url_get(i32* %18, i32 %19, i8** %4, i32 0)
  store i64 %20, i64* %3, align 8
  %21 = load i64, i64* %3, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %17
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @curl_free(i8* %26)
  br label %28

28:                                               ; preds = %23, %17
  %29 = load i32*, i32** %2, align 8
  %30 = load i32, i32* @CURLUPART_PATH, align 4
  %31 = call i64 @curl_url_get(i32* %29, i32 %30, i8** %5, i32 0)
  store i64 %31, i64* %3, align 8
  %32 = load i64, i64* %3, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %28
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %35)
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @curl_free(i8* %37)
  br label %39

39:                                               ; preds = %34, %28
  %40 = load i32*, i32** %2, align 8
  %41 = load i32, i32* @CURLUPART_URL, align 4
  %42 = call i64 @curl_url_set(i32* %40, i32 %41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 0)
  store i64 %42, i64* %3, align 8
  %43 = load i64, i64* %3, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %58

46:                                               ; preds = %39
  %47 = load i32*, i32** %2, align 8
  %48 = load i32, i32* @CURLUPART_PATH, align 4
  %49 = call i64 @curl_url_get(i32* %47, i32 %48, i8** %5, i32 0)
  store i64 %49, i64* %3, align 8
  %50 = load i64, i64* %3, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %46
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %53)
  %55 = load i8*, i8** %5, align 8
  %56 = call i32 @curl_free(i8* %55)
  br label %57

57:                                               ; preds = %52, %46
  br label %58

58:                                               ; preds = %57, %45, %16
  %59 = load i32*, i32** %2, align 8
  %60 = call i32 @curl_url_cleanup(i32* %59)
  store i32 0, i32* %1, align 4
  br label %61

61:                                               ; preds = %58, %9
  %62 = load i32, i32* %1, align 4
  ret i32 %62
}

declare dso_local i32* @curl_url(...) #1

declare dso_local i64 @curl_url_set(i32*, i32, i8*, i32) #1

declare dso_local i64 @curl_url_get(i32*, i32, i8**, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @curl_free(i8*) #1

declare dso_local i32 @curl_url_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

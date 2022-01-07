; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_altsvc.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_altsvc.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURLOPT_URL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"https://example.com\00", align 1
@CURLOPT_ALTSVC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"altsvc.txt\00", align 1
@CURLOPT_ALTSVC_CTRL = common dso_local global i32 0, align 4
@CURLALTSVC_H1 = common dso_local global i64 0, align 8
@CURLALTSVC_H2 = common dso_local global i64 0, align 8
@CURLALTSVC_H3 = common dso_local global i64 0, align 8
@CURLE_OK = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"curl_easy_perform() failed: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = call i32* (...) @curl_easy_init()
  store i32* %4, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %35

7:                                                ; preds = %0
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* @CURLOPT_URL, align 4
  %10 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %8, i32 %9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* @CURLOPT_ALTSVC, align 4
  %13 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %11, i32 %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32*, i32** %2, align 8
  %15 = load i32, i32* @CURLOPT_ALTSVC_CTRL, align 4
  %16 = load i64, i64* @CURLALTSVC_H1, align 8
  %17 = load i64, i64* @CURLALTSVC_H2, align 8
  %18 = or i64 %16, %17
  %19 = load i64, i64* @CURLALTSVC_H3, align 8
  %20 = or i64 %18, %19
  %21 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %14, i32 %15, i64 %20)
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @curl_easy_perform(i32* %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @CURLE_OK, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %7
  %28 = load i32, i32* @stderr, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i8* @curl_easy_strerror(i32 %29)
  %31 = call i32 @fprintf(i32 %28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %30)
  br label %32

32:                                               ; preds = %27, %7
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @curl_easy_cleanup(i32* %33)
  br label %35

35:                                               ; preds = %32, %0
  ret i32 0
}

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @curl_easy_setopt(i32*, i32, ...) #1

declare dso_local i32 @curl_easy_perform(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @curl_easy_strerror(i32) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

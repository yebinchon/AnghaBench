; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib1513.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib1513.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_TIMEOUT = common dso_local global i32 0, align 4
@CURLOPT_NOSIGNAL = common dso_local global i32 0, align 4
@CURLOPT_PROGRESSFUNCTION = common dso_local global i32 0, align 4
@progressKiller = common dso_local global i64 0, align 8
@CURLOPT_PROGRESSDATA = common dso_local global i32 0, align 4
@CURLOPT_NOPROGRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %6 = call i32 @global_init(i32 %5)
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @easy_init(i32* %7)
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* @CURLOPT_URL, align 4
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 (i32*, i32, ...) @easy_setopt(i32* %9, i32 %10, i8* %11)
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* @CURLOPT_TIMEOUT, align 4
  %15 = call i32 (i32*, i32, ...) @easy_setopt(i32* %13, i32 %14, i64 7)
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* @CURLOPT_NOSIGNAL, align 4
  %18 = call i32 (i32*, i32, ...) @easy_setopt(i32* %16, i32 %17, i64 1)
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* @CURLOPT_PROGRESSFUNCTION, align 4
  %21 = load i64, i64* @progressKiller, align 8
  %22 = call i32 (i32*, i32, ...) @easy_setopt(i32* %19, i32 %20, i64 %21)
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* @CURLOPT_PROGRESSDATA, align 4
  %25 = call i32 (i32*, i32, ...) @easy_setopt(i32* %23, i32 %24, i8* null)
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* @CURLOPT_NOPROGRESS, align 4
  %28 = call i32 (i32*, i32, ...) @easy_setopt(i32* %26, i32 %27, i64 0)
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @curl_easy_perform(i32* %29)
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %1
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @curl_easy_cleanup(i32* %32)
  %34 = call i32 (...) @curl_global_cleanup()
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @global_init(i32) #1

declare dso_local i32 @easy_init(i32*) #1

declare dso_local i32 @easy_setopt(i32*, i32, ...) #1

declare dso_local i32 @curl_easy_perform(i32*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @curl_global_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

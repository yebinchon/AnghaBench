; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib1555.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib1555.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@curl = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_TIMEOUT = common dso_local global i32 0, align 4
@CURLOPT_NOSIGNAL = common dso_local global i32 0, align 4
@CURLOPT_PROGRESSFUNCTION = common dso_local global i32 0, align 4
@progressCallback = common dso_local global i64 0, align 8
@CURLOPT_PROGRESSDATA = common dso_local global i32 0, align 4
@CURLOPT_NOPROGRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %5 = call i32 @global_init(i32 %4)
  %6 = load i32, i32* @curl, align 4
  %7 = call i32 @easy_init(i32 %6)
  %8 = load i32, i32* @curl, align 4
  %9 = load i32, i32* @CURLOPT_URL, align 4
  %10 = load i8*, i8** %2, align 8
  %11 = call i32 (i32, i32, ...) @easy_setopt(i32 %8, i32 %9, i8* %10)
  %12 = load i32, i32* @curl, align 4
  %13 = load i32, i32* @CURLOPT_TIMEOUT, align 4
  %14 = call i32 (i32, i32, ...) @easy_setopt(i32 %12, i32 %13, i64 7)
  %15 = load i32, i32* @curl, align 4
  %16 = load i32, i32* @CURLOPT_NOSIGNAL, align 4
  %17 = call i32 (i32, i32, ...) @easy_setopt(i32 %15, i32 %16, i64 1)
  %18 = load i32, i32* @curl, align 4
  %19 = load i32, i32* @CURLOPT_PROGRESSFUNCTION, align 4
  %20 = load i64, i64* @progressCallback, align 8
  %21 = call i32 (i32, i32, ...) @easy_setopt(i32 %18, i32 %19, i64 %20)
  %22 = load i32, i32* @curl, align 4
  %23 = load i32, i32* @CURLOPT_PROGRESSDATA, align 4
  %24 = call i32 (i32, i32, ...) @easy_setopt(i32 %22, i32 %23, i8* null)
  %25 = load i32, i32* @curl, align 4
  %26 = load i32, i32* @CURLOPT_NOPROGRESS, align 4
  %27 = call i32 (i32, i32, ...) @easy_setopt(i32 %25, i32 %26, i64 0)
  %28 = load i32, i32* @curl, align 4
  %29 = call i32 @curl_easy_perform(i32 %28)
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %1
  %31 = load i32, i32* @curl, align 4
  %32 = call i32 @curl_easy_cleanup(i32 %31)
  %33 = call i32 (...) @curl_global_cleanup()
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @global_init(i32) #1

declare dso_local i32 @easy_init(i32) #1

declare dso_local i32 @easy_setopt(i32, i32, ...) #1

declare dso_local i32 @curl_easy_perform(i32) #1

declare dso_local i32 @curl_easy_cleanup(i32) #1

declare dso_local i32 @curl_global_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

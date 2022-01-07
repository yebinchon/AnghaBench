; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_easy.c_curl_global_init_mem.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_easy.c_curl_global_init_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURLE_FAILED_INIT = common dso_local global i32 0, align 4
@initialized = common dso_local global i64 0, align 8
@CURLE_OK = common dso_local global i32 0, align 4
@Curl_cmalloc = common dso_local global i64 0, align 8
@Curl_cfree = common dso_local global i64 0, align 8
@Curl_cstrdup = common dso_local global i64 0, align 8
@Curl_crealloc = common dso_local global i64 0, align 8
@Curl_ccalloc = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @curl_global_init_mem(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %14 = load i64, i64* %9, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %6
  %17 = load i64, i64* %10, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = load i64, i64* %11, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load i64, i64* %12, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i64, i64* %13, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25, %22, %19, %16, %6
  %29 = load i32, i32* @CURLE_FAILED_INIT, align 4
  store i32 %29, i32* %7, align 4
  br label %46

30:                                               ; preds = %25
  %31 = load i64, i64* @initialized, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i64, i64* @initialized, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* @initialized, align 8
  %36 = load i32, i32* @CURLE_OK, align 4
  store i32 %36, i32* %7, align 4
  br label %46

37:                                               ; preds = %30
  %38 = load i64, i64* %9, align 8
  store i64 %38, i64* @Curl_cmalloc, align 8
  %39 = load i64, i64* %10, align 8
  store i64 %39, i64* @Curl_cfree, align 8
  %40 = load i64, i64* %12, align 8
  store i64 %40, i64* @Curl_cstrdup, align 8
  %41 = load i64, i64* %11, align 8
  store i64 %41, i64* @Curl_crealloc, align 8
  %42 = load i64, i64* %13, align 8
  store i64 %42, i64* @Curl_ccalloc, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load i32, i32* @FALSE, align 4
  %45 = call i32 @global_init(i64 %43, i32 %44)
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %37, %33, %28
  %47 = load i32, i32* %7, align 4
  ret i32 %47
}

declare dso_local i32 @global_init(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

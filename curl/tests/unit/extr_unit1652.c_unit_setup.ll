; ModuleID = '/home/carl/AnghaBench/curl/tests/unit/extr_unit1652.c_unit_setup.c'
source_filename = "/home/carl/AnghaBench/curl/tests/unit/extr_unit1652.c_unit_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@data = common dso_local global i32 0, align 4
@CURLE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@CURLOPT_DEBUGFUNCTION = common dso_local global i32 0, align 4
@debugf_cb = common dso_local global i64 0, align 8
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @unit_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unit_setup() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %4 = call i32 @global_init(i32 %3)
  %5 = call i32 (...) @curl_easy_init()
  store i32 %5, i32* @data, align 4
  %6 = load i32, i32* @data, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %9, i32* %1, align 4
  br label %19

10:                                               ; preds = %0
  %11 = load i32, i32* @data, align 4
  %12 = load i32, i32* @CURLOPT_DEBUGFUNCTION, align 4
  %13 = load i64, i64* @debugf_cb, align 8
  %14 = call i32 @curl_easy_setopt(i32 %11, i32 %12, i64 %13)
  %15 = load i32, i32* @data, align 4
  %16 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %17 = call i32 @curl_easy_setopt(i32 %15, i32 %16, i64 1)
  %18 = load i32, i32* @CURLE_OK, align 4
  store i32 %18, i32* %1, align 4
  br label %19

19:                                               ; preds = %10, %8
  %20 = load i32, i32* %1, align 4
  ret i32 %20
}

declare dso_local i32 @global_init(i32) #1

declare dso_local i32 @curl_easy_init(...) #1

declare dso_local i32 @curl_easy_setopt(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

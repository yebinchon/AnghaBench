; ModuleID = '/home/carl/AnghaBench/curl/tests/unit/extr_unit1305.c_unit_setup.c'
source_filename = "/home/carl/AnghaBench/curl/tests/unit/extr_unit1305.c_unit_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@data = common dso_local global i32 0, align 4
@CURLE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@hp = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @unit_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unit_setup() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @curl_easy_init()
  store i32 %3, i32* @data, align 4
  %4 = load i32, i32* @data, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %0
  %7 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %7, i32* %1, align 4
  br label %19

8:                                                ; preds = %0
  %9 = call i32 @Curl_mk_dnscache(i32* @hp)
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = load i32, i32* @data, align 4
  %14 = call i32 @curl_easy_cleanup(i32 %13)
  %15 = call i32 (...) @curl_global_cleanup()
  %16 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %16, i32* %1, align 4
  br label %19

17:                                               ; preds = %8
  %18 = load i32, i32* @CURLE_OK, align 4
  store i32 %18, i32* %1, align 4
  br label %19

19:                                               ; preds = %17, %12, %6
  %20 = load i32, i32* %1, align 4
  ret i32 %20
}

declare dso_local i32 @curl_easy_init(...) #1

declare dso_local i32 @Curl_mk_dnscache(i32*) #1

declare dso_local i32 @curl_easy_cleanup(i32) #1

declare dso_local i32 @curl_global_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

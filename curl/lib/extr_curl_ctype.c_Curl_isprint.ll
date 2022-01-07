; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_curl_ctype.c_Curl_isprint.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_curl_ctype.c_Curl_isprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@ascii = common dso_local global i32* null, align 8
@_N = common dso_local global i32 0, align 4
@_X = common dso_local global i32 0, align 4
@_U = common dso_local global i32 0, align 4
@_L = common dso_local global i32 0, align 4
@_P = common dso_local global i32 0, align 4
@_S = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_isprint(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp sge i32 %7, 128
  br i1 %8, label %9, label %11

9:                                                ; preds = %6, %1
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %2, align 4
  br label %29

11:                                               ; preds = %6
  %12 = load i32*, i32** @ascii, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @_N, align 4
  %18 = load i32, i32* @_X, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @_U, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @_L, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @_P, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @_S, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %16, %27
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %11, %9
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

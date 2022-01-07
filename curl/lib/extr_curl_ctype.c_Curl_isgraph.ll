; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_curl_ctype.c_Curl_isgraph.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_curl_ctype.c_Curl_isgraph.c"
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
define dso_local i32 @Curl_isgraph(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp sge i32 %7, 128
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = load i32, i32* %3, align 4
  %11 = icmp eq i32 %10, 32
  br i1 %11, label %12, label %14

12:                                               ; preds = %9, %6, %1
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %2, align 4
  br label %32

14:                                               ; preds = %9
  %15 = load i32*, i32** @ascii, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @_N, align 4
  %21 = load i32, i32* @_X, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @_U, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @_L, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @_P, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @_S, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %19, %30
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %14, %12
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/dnn/extr_dnn_backend_native_layer_pad.c_before_get_buddy.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/dnn/extr_dnn_backend_native_layer_pad.c_before_get_buddy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LPMP_SYMMETRIC = common dso_local global i64 0, align 8
@LPMP_REFLECT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"should not reach here\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64)* @before_get_buddy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @before_get_buddy(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @LPMP_SYMMETRIC, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = mul nsw i32 2, %12
  %14 = sub nsw i32 %13, 1
  %15 = load i32, i32* %5, align 4
  %16 = sub nsw i32 %14, %15
  store i32 %16, i32* %4, align 4
  br label %28

17:                                               ; preds = %3
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @LPMP_REFLECT, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = mul nsw i32 2, %22
  %24 = load i32, i32* %5, align 4
  %25 = sub nsw i32 %23, %24
  store i32 %25, i32* %4, align 4
  br label %28

26:                                               ; preds = %17
  %27 = call i32 @av_assert0(i32 0)
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %26, %21, %11
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @av_assert0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_clock.c_get_scale_factors_from_adj.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_clock.c_get_scale_factors_from_adj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ticks_per_sec = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*, i32*)* @get_scale_factors_from_adj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_scale_factors_from_adj(i32 %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 undef, i32* %9, align 4
  %12 = load i32, i32* %5, align 4
  %13 = sdiv i32 %12, 1024
  %14 = mul nsw i32 %13, 2199
  %15 = load i32, i32* %9, align 4
  %16 = add nsw i32 %15, %14
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* @ticks_per_sec, align 4
  %18 = load i32, i32* %9, align 4
  %19 = sdiv i32 %18, %17
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = mul nsw i32 %20, 2
  %22 = load i32*, i32** %6, align 8
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i32, i32* %5, align 4
  %27 = ashr i32 %26, 32
  br label %33

28:                                               ; preds = %4
  %29 = load i32, i32* %5, align 4
  %30 = sub nsw i32 0, %29
  %31 = ashr i32 %30, 32
  %32 = sub nsw i32 0, %31
  br label %33

33:                                               ; preds = %28, %25
  %34 = phi i32 [ %27, %25 ], [ %32, %28 ]
  store i32 %34, i32* %10, align 4
  %35 = load i64, i64* @NSEC_PER_SEC, align 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32*, i32** %7, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %33
  %45 = load i32, i32* %5, align 4
  br label %50

46:                                               ; preds = %33
  %47 = load i32, i32* %5, align 4
  %48 = sub nsw i32 0, %47
  %49 = sub nsw i32 0, %48
  br label %50

50:                                               ; preds = %46, %44
  %51 = phi i32 [ %45, %44 ], [ %49, %46 ]
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32, i32* %11, align 4
  %56 = shl i32 %55, 32
  br label %62

57:                                               ; preds = %50
  %58 = load i32, i32* %11, align 4
  %59 = sub nsw i32 0, %58
  %60 = shl i32 %59, 32
  %61 = sub nsw i32 0, %60
  br label %62

62:                                               ; preds = %57, %54
  %63 = phi i32 [ %56, %54 ], [ %61, %57 ]
  %64 = load i32*, i32** %8, align 8
  store i32 %63, i32* %64, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

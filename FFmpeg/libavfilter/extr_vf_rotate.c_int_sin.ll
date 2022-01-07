; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_rotate.c_int_sin.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_rotate.c_int_sin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT_PI = common dso_local global i32 0, align 4
@FIXP2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @int_sin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @int_sin(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* @INT_PI, align 4
  %10 = load i32, i32* %2, align 4
  %11 = sub nsw i32 %9, %10
  store i32 %11, i32* %2, align 4
  br label %12

12:                                               ; preds = %8, %1
  %13 = load i32, i32* @INT_PI, align 4
  %14 = mul nsw i32 2, %13
  %15 = load i32, i32* %2, align 4
  %16 = srem i32 %15, %14
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @INT_PI, align 4
  %19 = mul nsw i32 %18, 3
  %20 = sdiv i32 %19, 2
  %21 = icmp sge i32 %17, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %12
  %23 = load i32, i32* @INT_PI, align 4
  %24 = mul nsw i32 2, %23
  %25 = load i32, i32* %2, align 4
  %26 = sub nsw i32 %25, %24
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %22, %12
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @INT_PI, align 4
  %30 = sdiv i32 %29, 2
  %31 = icmp sge i32 %28, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* @INT_PI, align 4
  %34 = load i32, i32* %2, align 4
  %35 = sub nsw i32 %33, %34
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %32, %27
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* %2, align 4
  %39 = mul nsw i32 %37, %38
  %40 = load i32, i32* @FIXP2, align 4
  %41 = sdiv i32 %39, %40
  store i32 %41, i32* %3, align 4
  store i32 2, i32* %5, align 4
  br label %42

42:                                               ; preds = %60, %36
  %43 = load i32, i32* %5, align 4
  %44 = icmp slt i32 %43, 11
  br i1 %44, label %45, label %63

45:                                               ; preds = %42
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %2, align 4
  %50 = sub nsw i32 0, %49
  %51 = load i32, i32* %3, align 4
  %52 = mul nsw i32 %50, %51
  %53 = load i32, i32* @FIXP2, align 4
  %54 = load i32, i32* %5, align 4
  %55 = mul nsw i32 %53, %54
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  %58 = mul nsw i32 %55, %57
  %59 = sdiv i32 %52, %58
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %45
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 2
  store i32 %62, i32* %5, align 4
  br label %42

63:                                               ; preds = %42
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 8
  %66 = ashr i32 %65, 4
  ret i32 %66
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

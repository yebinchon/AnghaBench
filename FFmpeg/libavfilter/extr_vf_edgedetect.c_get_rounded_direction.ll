; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_edgedetect.c_get_rounded_direction.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_edgedetect.c_get_rounded_direction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DIRECTION_45UP = common dso_local global i32 0, align 4
@DIRECTION_HORIZONTAL = common dso_local global i32 0, align 4
@DIRECTION_45DOWN = common dso_local global i32 0, align 4
@DIRECTION_VERTICAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @get_rounded_direction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_rounded_direction(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %58

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load i32, i32* %4, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %5, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %13, %10
  %19 = load i32, i32* %5, align 4
  %20 = mul nsw i32 %19, 65536
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  %22 = mul nsw i32 27146, %21
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %4, align 4
  %24 = mul nsw i32 158218, %23
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %7, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp sgt i32 %25, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %18
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = sub nsw i32 0, %31
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @DIRECTION_45UP, align 4
  store i32 %35, i32* %3, align 4
  br label %60

36:                                               ; preds = %29, %18
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp sgt i32 %37, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* @DIRECTION_HORIZONTAL, align 4
  store i32 %46, i32* %3, align 4
  br label %60

47:                                               ; preds = %41, %36
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* @DIRECTION_45DOWN, align 4
  store i32 %56, i32* %3, align 4
  br label %60

57:                                               ; preds = %51, %47
  br label %58

58:                                               ; preds = %57, %2
  %59 = load i32, i32* @DIRECTION_VERTICAL, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %55, %45, %34
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

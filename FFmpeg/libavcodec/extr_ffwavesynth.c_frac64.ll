; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ffwavesynth.c_frac64.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ffwavesynth.c_frac64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @frac64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @frac64(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, undef
  br i1 %9, label %10, label %24

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = shl i32 %11, 32
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %5, align 4
  %15 = sdiv i32 %13, %14
  %16 = shl i32 %15, 32
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %5, align 4
  %19 = srem i32 %17, %18
  %20 = shl i32 %19, 32
  %21 = load i32, i32* %5, align 4
  %22 = sdiv i32 %20, %21
  %23 = or i32 %16, %22
  store i32 %23, i32* %3, align 4
  br label %78

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, undef
  br i1 %26, label %27, label %48

27:                                               ; preds = %24
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %43, %27
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 4
  br i1 %30, label %31, label %46

31:                                               ; preds = %28
  %32 = load i32, i32* %4, align 4
  %33 = shl i32 %32, 16
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %6, align 4
  %35 = shl i32 %34, 16
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %5, align 4
  %38 = sdiv i32 %36, %37
  %39 = or i32 %35, %38
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %4, align 4
  %42 = srem i32 %41, %40
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %31
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %28

46:                                               ; preds = %28
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %78

48:                                               ; preds = %24
  store i32 63, i32* %7, align 4
  br label %49

49:                                               ; preds = %73, %48
  %50 = load i32, i32* %7, align 4
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %76

52:                                               ; preds = %49
  %53 = load i32, i32* %4, align 4
  %54 = icmp sge i32 %53, undef
  br i1 %54, label %60, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %4, align 4
  %57 = shl i32 %56, 1
  %58 = load i32, i32* %5, align 4
  %59 = icmp sge i32 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %55, %52
  %61 = load i32, i32* %7, align 4
  %62 = shl i32 1, %61
  %63 = load i32, i32* %6, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %4, align 4
  %66 = shl i32 %65, 1
  %67 = load i32, i32* %5, align 4
  %68 = sub nsw i32 %66, %67
  store i32 %68, i32* %4, align 4
  br label %72

69:                                               ; preds = %55
  %70 = load i32, i32* %4, align 4
  %71 = shl i32 %70, 1
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %69, %60
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %7, align 4
  br label %49

76:                                               ; preds = %49
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %76, %46, %10
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

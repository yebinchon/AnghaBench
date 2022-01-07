; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxv.c_extract_component.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxv.c_extract_component.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @extract_component to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extract_component(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %7, align 4
  br label %62

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %7, align 4
  br label %61

18:                                               ; preds = %13
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %7, align 4
  br label %60

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load i32, i32* %6, align 4
  %29 = sub nsw i32 8, %28
  %30 = load i32, i32* %4, align 4
  %31 = mul nsw i32 %29, %30
  %32 = load i32, i32* %6, align 4
  %33 = sub nsw i32 %32, 1
  %34 = load i32, i32* %5, align 4
  %35 = mul nsw i32 %33, %34
  %36 = add nsw i32 %31, %35
  %37 = sdiv i32 %36, 7
  store i32 %37, i32* %7, align 4
  br label %59

38:                                               ; preds = %23
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %39, 6
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 0, i32* %7, align 4
  br label %58

42:                                               ; preds = %38
  %43 = load i32, i32* %6, align 4
  %44 = icmp eq i32 %43, 7
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 255, i32* %7, align 4
  br label %57

46:                                               ; preds = %42
  %47 = load i32, i32* %6, align 4
  %48 = sub nsw i32 6, %47
  %49 = load i32, i32* %4, align 4
  %50 = mul nsw i32 %48, %49
  %51 = load i32, i32* %6, align 4
  %52 = sub nsw i32 %51, 1
  %53 = load i32, i32* %5, align 4
  %54 = mul nsw i32 %52, %53
  %55 = add nsw i32 %50, %54
  %56 = sdiv i32 %55, 5
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %46, %45
  br label %58

58:                                               ; preds = %57, %41
  br label %59

59:                                               ; preds = %58, %27
  br label %60

60:                                               ; preds = %59, %21
  br label %61

61:                                               ; preds = %60, %16
  br label %62

62:                                               ; preds = %61, %11
  %63 = load i32, i32* %7, align 4
  ret i32 %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

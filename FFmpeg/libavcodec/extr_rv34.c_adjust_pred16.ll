; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rv34.c_adjust_pred16.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rv34.c_adjust_pred16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DC_128_PRED8x8 = common dso_local global i32 0, align 4
@PLANE_PRED8x8 = common dso_local global i32 0, align 4
@HOR_PRED8x8 = common dso_local global i32 0, align 4
@VERT_PRED8x8 = common dso_local global i32 0, align 4
@DC_PRED8x8 = common dso_local global i32 0, align 4
@LEFT_DC_PRED8x8 = common dso_local global i32 0, align 4
@TOP_DC_PRED8x8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @adjust_pred16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adjust_pred16(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %3
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = load i32, i32* @DC_128_PRED8x8, align 4
  store i32 %13, i32* %4, align 4
  br label %60

14:                                               ; preds = %9, %3
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %36, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @PLANE_PRED8x8, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @HOR_PRED8x8, align 4
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %21, %17
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @VERT_PRED8x8, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @HOR_PRED8x8, align 4
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %27, %23
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @DC_PRED8x8, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @LEFT_DC_PRED8x8, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %33, %29
  br label %59

36:                                               ; preds = %14
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %58, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @PLANE_PRED8x8, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @VERT_PRED8x8, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %43, %39
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @HOR_PRED8x8, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* @VERT_PRED8x8, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %49, %45
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @DC_PRED8x8, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* @TOP_DC_PRED8x8, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %55, %51
  br label %58

58:                                               ; preds = %57, %36
  br label %59

59:                                               ; preds = %58, %35
  br label %60

60:                                               ; preds = %59, %12
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

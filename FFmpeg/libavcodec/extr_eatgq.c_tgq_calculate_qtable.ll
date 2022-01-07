; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_eatgq.c_tgq_calculate_qtable.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_eatgq.c_tgq_calculate_qtable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@ff_inv_aanscales = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32)* @tgq_calculate_qtable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tgq_calculate_qtable(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = sub nsw i32 100, %9
  %11 = mul nsw i32 14, %10
  %12 = sdiv i32 %11, 100
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %4, align 4
  %15 = sub nsw i32 100, %14
  %16 = mul nsw i32 11, %15
  %17 = sdiv i32 %16, 100
  %18 = add nsw i32 %17, 4
  store i32 %18, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %58, %2
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 8
  br i1 %21, label %22, label %61

22:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %54, %22
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 8
  br i1 %25, label %26, label %57

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %28, %29
  %31 = mul nsw i32 %27, %30
  %32 = sdiv i32 %31, 14
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %32, %33
  %35 = load i32*, i32** @ff_inv_aanscales, align 8
  %36 = load i32, i32* %6, align 4
  %37 = mul nsw i32 %36, 8
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %35, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %34, %42
  %44 = ashr i32 %43, 10
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = mul nsw i32 %48, 8
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %47, i64 %52
  store i32 %44, i32* %53, align 4
  br label %54

54:                                               ; preds = %26
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %23

57:                                               ; preds = %23
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %19

61:                                               ; preds = %19
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

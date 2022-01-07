; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_integer.c_av_shr_i.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_integer.c_av_shr_i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@AV_INTEGER_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @av_shr_i(i32* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__, align 8
  %4 = alloca %struct.TYPE_4__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %55, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @AV_INTEGER_SIZE, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %58

14:                                               ; preds = %10
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = ashr i32 %16, 4
  %18 = add nsw i32 %15, %17
  store i32 %18, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  %20 = add i32 %19, 1
  %21 = load i32, i32* @AV_INTEGER_SIZE, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = add i32 %26, 1
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %30, 16
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %23, %14
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @AV_INTEGER_SIZE, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %8, align 4
  %44 = add i32 %43, %42
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %36, %32
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %5, align 4
  %48 = and i32 %47, 15
  %49 = lshr i32 %46, %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %49, i32* %54, align 4
  br label %55

55:                                               ; preds = %45
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %10

58:                                               ; preds = %10
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  ret i32* %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

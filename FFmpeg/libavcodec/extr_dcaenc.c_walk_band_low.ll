; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dcaenc.c_walk_band_low.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dcaenc.c_walk_band_low.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i32, i32 (%struct.TYPE_5__*, i32, i32, i32, i32, i32, i32, i32*)*, i32*)* @walk_band_low to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @walk_band_low(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 (%struct.TYPE_5__*, i32, i32, i32, i32, i32, i32, i32*)* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32 (%struct.TYPE_5__*, i32, i32, i32, i32, i32, i32, i32*)*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 (%struct.TYPE_5__*, i32, i32, i32, i32, i32, i32, i32*)* %3, i32 (%struct.TYPE_5__*, i32, i32, i32, i32, i32, i32, i32*)** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %5
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %25, %14
  %16 = load i32, i32* %11, align 4
  %17 = icmp slt i32 %16, 4
  br i1 %17, label %18, label %28

18:                                               ; preds = %15
  %19 = load i32 (%struct.TYPE_5__*, i32, i32, i32, i32, i32, i32, i32*)*, i32 (%struct.TYPE_5__*, i32, i32, i32, i32, i32, i32, i32*)** %9, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32*, i32** %10, align 8
  %24 = call i32 %19(%struct.TYPE_5__* %20, i32 0, i32 0, i32 %21, i32 0, i32 -2047, i32 %22, i32* %23)
  br label %25

25:                                               ; preds = %18
  %26 = load i32, i32* %11, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %11, align 4
  br label %15

28:                                               ; preds = %15
  br label %66

29:                                               ; preds = %5
  store i32 0, i32* %11, align 4
  br label %30

30:                                               ; preds = %62, %29
  %31 = load i32, i32* %11, align 4
  %32 = icmp slt i32 %31, 8
  br i1 %32, label %33, label %65

33:                                               ; preds = %30
  %34 = load i32 (%struct.TYPE_5__*, i32, i32, i32, i32, i32, i32, i32*)*, i32 (%struct.TYPE_5__*, i32, i32, i32, i32, i32, i32, i32*)** %9, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = sub nsw i32 %37, 1
  %39 = load i32, i32* %7, align 4
  %40 = mul nsw i32 8, %39
  %41 = sub nsw i32 %40, 4
  %42 = load i32, i32* %11, align 4
  %43 = add nsw i32 %41, %42
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sub nsw i32 7, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32*, i32** %10, align 8
  %61 = call i32 %34(%struct.TYPE_5__* %35, i32 %36, i32 %38, i32 %43, i32 %51, i32 %58, i32 %59, i32* %60)
  br label %62

62:                                               ; preds = %33
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %11, align 4
  br label %30

65:                                               ; preds = %30
  br label %66

66:                                               ; preds = %65, %28
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

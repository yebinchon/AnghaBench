; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dcaenc.c_walk_band_high.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dcaenc.c_walk_band_high.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i32, i32 (%struct.TYPE_5__*, i32, i32, i32, i32, i32, i32, i32*)*, i32*)* @walk_band_high to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @walk_band_high(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 (%struct.TYPE_5__*, i32, i32, i32, i32, i32, i32, i32*)* %3, i32* %4) #0 {
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
  %13 = icmp eq i32 %12, 31
  br i1 %13, label %14, label %30

14:                                               ; preds = %5
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %26, %14
  %16 = load i32, i32* %11, align 4
  %17 = icmp slt i32 %16, 4
  br i1 %17, label %18, label %29

18:                                               ; preds = %15
  %19 = load i32 (%struct.TYPE_5__*, i32, i32, i32, i32, i32, i32, i32*)*, i32 (%struct.TYPE_5__*, i32, i32, i32, i32, i32, i32, i32*)** %9, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %21 = load i32, i32* %11, align 4
  %22 = add nsw i32 252, %21
  %23 = load i32, i32* %8, align 4
  %24 = load i32*, i32** %10, align 8
  %25 = call i32 %19(%struct.TYPE_5__* %20, i32 31, i32 31, i32 %22, i32 0, i32 -2047, i32 %23, i32* %24)
  br label %26

26:                                               ; preds = %18
  %27 = load i32, i32* %11, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %11, align 4
  br label %15

29:                                               ; preds = %15
  br label %67

30:                                               ; preds = %5
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %63, %30
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 8
  br i1 %33, label %34, label %66

34:                                               ; preds = %31
  %35 = load i32 (%struct.TYPE_5__*, i32, i32, i32, i32, i32, i32, i32*)*, i32 (%struct.TYPE_5__*, i32, i32, i32, i32, i32, i32, i32*)** %9, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  %40 = load i32, i32* %7, align 4
  %41 = mul nsw i32 8, %40
  %42 = add nsw i32 %41, 4
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %42, %43
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sub nsw i32 7, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32*, i32** %10, align 8
  %62 = call i32 %35(%struct.TYPE_5__* %36, i32 %37, i32 %39, i32 %44, i32 %51, i32 %59, i32 %60, i32* %61)
  br label %63

63:                                               ; preds = %34
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %11, align 4
  br label %31

66:                                               ; preds = %31
  br label %67

67:                                               ; preds = %66, %29
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

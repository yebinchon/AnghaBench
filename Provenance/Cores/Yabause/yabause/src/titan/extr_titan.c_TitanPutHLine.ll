; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/titan/extr_titan.c_TitanPutHLine.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/titan/extr_titan.c_TitanPutHLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, %struct.PixelData** }
%struct.PixelData = type { i32 }

@tt_context = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TitanPutHLine(i32 %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.PixelData*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  br label %43

16:                                               ; preds = %5
  %17 = load %struct.PixelData**, %struct.PixelData*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tt_context, i32 0, i32 1), align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.PixelData*, %struct.PixelData** %17, i64 %19
  %21 = load %struct.PixelData*, %struct.PixelData** %20, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tt_context, i32 0, i32 0), align 8
  %24 = mul i64 %22, %23
  %25 = load i64, i64* %7, align 8
  %26 = add i64 %24, %25
  %27 = getelementptr inbounds %struct.PixelData, %struct.PixelData* %21, i64 %26
  store %struct.PixelData* %27, %struct.PixelData** %11, align 8
  store i32 0, i32* %12, align 4
  br label %28

28:                                               ; preds = %40, %16
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* %9, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.PixelData*, %struct.PixelData** %11, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.PixelData, %struct.PixelData* %35, i64 %37
  %39 = getelementptr inbounds %struct.PixelData, %struct.PixelData* %38, i32 0, i32 0
  store i32 %34, i32* %39, align 4
  br label %40

40:                                               ; preds = %33
  %41 = load i32, i32* %12, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %12, align 4
  br label %28

43:                                               ; preds = %15, %28
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

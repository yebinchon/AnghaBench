; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacenc.c_encode_band_info.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacenc.c_encode_band_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_14__*, %struct.TYPE_13__*, i32, i64, i32)*, i32 (%struct.TYPE_14__*, %struct.TYPE_13__*)* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_13__*)* @encode_band_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_band_info(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %6 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %10 = load i32 (%struct.TYPE_14__*, %struct.TYPE_13__*)*, i32 (%struct.TYPE_14__*, %struct.TYPE_13__*)** %9, align 8
  %11 = icmp ne i32 (%struct.TYPE_14__*, %struct.TYPE_13__*)* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %17 = load i32 (%struct.TYPE_14__*, %struct.TYPE_13__*)*, i32 (%struct.TYPE_14__*, %struct.TYPE_13__*)** %16, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %20 = call i32 %17(%struct.TYPE_14__* %18, %struct.TYPE_13__* %19)
  br label %21

21:                                               ; preds = %12, %2
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %50, %21
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %23, %27
  br i1 %28, label %29, label %63

29:                                               ; preds = %22
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32 (%struct.TYPE_14__*, %struct.TYPE_13__*, i32, i64, i32)*, i32 (%struct.TYPE_14__*, %struct.TYPE_13__*, i32, i64, i32)** %33, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 %34(%struct.TYPE_14__* %35, %struct.TYPE_13__* %36, i32 %37, i64 %45, i32 %48)
  br label %50

50:                                               ; preds = %29
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = load i64*, i64** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %58
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %5, align 4
  br label %22

63:                                               ; preds = %22
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_muxcommon.c_OutputTrackChunk.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_muxcommon.c_OutputTrackChunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, %struct.TYPE_15__** }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i32 (%struct.TYPE_17__*, i32, %struct.TYPE_18__*)* }
%struct.TYPE_18__ = type { i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, i32, %struct.TYPE_17__*)* @OutputTrackChunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @OutputTrackChunk(%struct.TYPE_16__* %0, i32 %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %6, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %11, i64 %13
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  store %struct.TYPE_15__* %15, %struct.TYPE_15__** %7, align 8
  br label %16

16:                                               ; preds = %31, %3
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %18 = call %struct.TYPE_18__* @mf_peek(%struct.TYPE_15__* %17)
  store %struct.TYPE_18__* %18, %struct.TYPE_18__** %8, align 8
  %19 = icmp ne %struct.TYPE_18__* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %16
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %24, %27
  br label %29

29:                                               ; preds = %20, %16
  %30 = phi i1 [ false, %16 ], [ %28, %20 ]
  br i1 %30, label %31, label %57

31:                                               ; preds = %29
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call %struct.TYPE_18__* @mf_pull(%struct.TYPE_16__* %32, i32 %33)
  store %struct.TYPE_18__* %34, %struct.TYPE_18__** %8, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %45, %41
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %43, align 4
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load i32 (%struct.TYPE_17__*, i32, %struct.TYPE_18__*)*, i32 (%struct.TYPE_17__*, i32, %struct.TYPE_18__*)** %49, align 8
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %56 = call i32 %50(%struct.TYPE_17__* %51, i32 %54, %struct.TYPE_18__* %55)
  br label %16

57:                                               ; preds = %29
  ret void
}

declare dso_local %struct.TYPE_18__* @mf_peek(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_18__* @mf_pull(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

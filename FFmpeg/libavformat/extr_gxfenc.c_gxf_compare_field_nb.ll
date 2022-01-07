; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_gxfenc.c_gxf_compare_field_nb.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_gxfenc.c_gxf_compare_field_nb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__**, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { %struct.TYPE_11__*, %struct.TYPE_13__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_16__ = type { i64, i32 }

@AVMEDIA_TYPE_AUDIO = common dso_local global i64 0, align 8
@AV_ROUND_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_16__*)* @gxf_compare_field_nb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gxf_compare_field_nb(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1, %struct.TYPE_16__* %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca [2 x %struct.TYPE_16__*], align 16
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca [2 x %struct.TYPE_13__*], align 16
  %12 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %6, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %7, align 8
  %16 = getelementptr inbounds [2 x %struct.TYPE_16__*], [2 x %struct.TYPE_16__*]* %8, i64 0, i64 0
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_16__* %17, %struct.TYPE_16__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %16, i64 1
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_16__* %19, %struct.TYPE_16__** %18, align 8
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %85, %3
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 2
  br i1 %22, label %23, label %88

23:                                               ; preds = %20
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [2 x %struct.TYPE_16__*], [2 x %struct.TYPE_16__*]* %8, i64 0, i64 %28
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %26, i64 %32
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  store %struct.TYPE_15__* %34, %struct.TYPE_15__** %12, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [2 x %struct.TYPE_13__*], [2 x %struct.TYPE_13__*]* %11, i64 0, i64 %39
  store %struct.TYPE_13__* %37, %struct.TYPE_13__** %40, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %74

48:                                               ; preds = %23
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [2 x %struct.TYPE_16__*], [2 x %struct.TYPE_16__*]* %8, i64 0, i64 %50
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 48000, %62
  %64 = load i32, i32* @AV_ROUND_UP, align 4
  %65 = call i32 @av_rescale_rnd(i32 %54, i32 %58, i32 %63, i32 %64)
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %67
  store i32 %65, i32* %68, align 4
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, -2
  store i32 %73, i32* %71, align 4
  br label %84

74:                                               ; preds = %23
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [2 x %struct.TYPE_16__*], [2 x %struct.TYPE_16__*]* %8, i64 0, i64 %76
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %82
  store i32 %80, i32* %83, align 4
  br label %84

84:                                               ; preds = %74, %48
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %9, align 4
  br label %20

88:                                               ; preds = %20
  %89 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp sgt i32 %90, %92
  br i1 %93, label %112, label %94

94:                                               ; preds = %88
  %95 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %96, %98
  br i1 %99, label %100, label %110

100:                                              ; preds = %94
  %101 = getelementptr inbounds [2 x %struct.TYPE_13__*], [2 x %struct.TYPE_13__*]* %11, i64 0, i64 1
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds [2 x %struct.TYPE_13__*], [2 x %struct.TYPE_13__*]* %11, i64 0, i64 0
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %105, align 16
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp sgt i64 %104, %108
  br label %110

110:                                              ; preds = %100, %94
  %111 = phi i1 [ false, %94 ], [ %109, %100 ]
  br label %112

112:                                              ; preds = %110, %88
  %113 = phi i1 [ true, %88 ], [ %111, %110 ]
  %114 = zext i1 %113 to i32
  ret i32 %114
}

declare dso_local i32 @av_rescale_rnd(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

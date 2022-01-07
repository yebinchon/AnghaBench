; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_pcm.c_ff_pcm_read_seek.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_pcm.c_ff_pcm_read_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__*, i32, %struct.TYPE_10__** }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_8__, i32, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }

@AVSEEK_FLAG_BACKWARD = common dso_local global i32 0, align 4
@AV_ROUND_DOWN = common dso_local global i32 0, align 4
@AV_ROUND_UP = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_pcm_read_seek(%struct.TYPE_11__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %17, i64 0
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %10, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  br label %46

32:                                               ; preds = %4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @av_get_bits_per_sample(i32 %37)
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %38, %43
  %45 = ashr i32 %44, 3
  br label %46

46:                                               ; preds = %32, %26
  %47 = phi i32 [ %31, %26 ], [ %45, %32 ]
  store i32 %47, i32* %11, align 4
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %46
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = ashr i32 %59, 3
  br label %69

61:                                               ; preds = %46
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = mul nsw i32 %62, %67
  br label %69

69:                                               ; preds = %61, %54
  %70 = phi i32 [ %60, %54 ], [ %68, %61 ]
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp sle i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* %12, align 4
  %75 = icmp sle i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73, %69
  store i32 -1, i32* %5, align 4
  br label %141

77:                                               ; preds = %73
  %78 = load i32, i32* %8, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store i32 0, i32* %8, align 4
  br label %81

81:                                               ; preds = %80, %77
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %12, align 4
  %84 = mul nsw i32 %82, %83
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %11, align 4
  %94 = mul nsw i32 %92, %93
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @AVSEEK_FLAG_BACKWARD, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %81
  %100 = load i32, i32* @AV_ROUND_DOWN, align 4
  br label %103

101:                                              ; preds = %81
  %102 = load i32, i32* @AV_ROUND_UP, align 4
  br label %103

103:                                              ; preds = %101, %99
  %104 = phi i32 [ %100, %99 ], [ %102, %101 ]
  %105 = call i32 @av_rescale_rnd(i32 %84, i64 %88, i32 %94, i32 %104)
  store i32 %105, i32* %13, align 4
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %13, align 4
  %108 = mul nsw i32 %107, %106
  store i32 %108, i32* %13, align 4
  %109 = load i32, i32* %13, align 4
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %12, align 4
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = trunc i64 %118 to i32
  %120 = mul nsw i32 %114, %119
  %121 = call i32 @av_rescale(i32 %109, i32 %113, i32 %120)
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 8
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* %13, align 4
  %128 = sext i32 %127 to i64
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %128, %133
  %135 = load i32, i32* @SEEK_SET, align 4
  %136 = call i32 @avio_seek(i32 %126, i64 %134, i32 %135)
  store i32 %136, i32* %14, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %103
  %139 = load i32, i32* %14, align 4
  store i32 %139, i32* %5, align 4
  br label %141

140:                                              ; preds = %103
  store i32 0, i32* %5, align 4
  br label %141

141:                                              ; preds = %140, %138, %76
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local i32 @av_get_bits_per_sample(i32) #1

declare dso_local i32 @av_rescale_rnd(i32, i64, i32, i32) #1

declare dso_local i32 @av_rescale(i32, i32, i32) #1

declare dso_local i32 @avio_seek(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

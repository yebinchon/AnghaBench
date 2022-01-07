; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfenc.c_mxf_write_d10_audio_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfenc.c_mxf_write_d10_audio_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i64 }
%struct.TYPE_12__ = type { i32, i32* }

@AV_CODEC_ID_PCM_S24LE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.TYPE_11__*, %struct.TYPE_12__*)* @mxf_write_d10_audio_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxf_write_d10_audio_packet(%struct.TYPE_13__* %0, %struct.TYPE_11__* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %6, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %7, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %8, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sdiv i32 %22, %27
  store i32 %28, i32* %9, align 4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %10, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %34, i64 %38
  store i32* %39, i32** %11, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %9, align 4
  %42 = mul nsw i32 %41, 4
  %43 = mul nsw i32 %42, 8
  %44 = add nsw i32 4, %43
  %45 = call i32 @klv_encode_ber4_length(i32* %40, i32 %44)
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = icmp eq i32 %47, 1920
  br i1 %48, label %49, label %50

49:                                               ; preds = %3
  br label %57

50:                                               ; preds = %3
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %53, 1
  %55 = srem i32 %54, 5
  %56 = add nsw i32 %55, 1
  br label %57

57:                                               ; preds = %50, %49
  %58 = phi i32 [ 0, %49 ], [ %56, %50 ]
  %59 = call i32 @avio_w8(i32* %46, i32 %58)
  %60 = load i32*, i32** %8, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @avio_wl16(i32* %60, i32 %61)
  %63 = load i32*, i32** %8, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 1, %68
  %70 = sub nsw i32 %69, 1
  %71 = call i32 @avio_w8(i32* %63, i32 %70)
  br label %72

72:                                               ; preds = %125, %57
  %73 = load i32*, i32** %10, align 8
  %74 = load i32*, i32** %11, align 8
  %75 = icmp ult i32* %73, %74
  br i1 %75, label %76, label %126

76:                                               ; preds = %72
  store i32 0, i32* %12, align 4
  br label %77

77:                                               ; preds = %111, %76
  %78 = load i32, i32* %12, align 4
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp slt i32 %78, %83
  br i1 %84, label %85, label %114

85:                                               ; preds = %77
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @AV_CODEC_ID_PCM_S24LE, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %85
  %94 = load i32*, i32** %10, align 8
  %95 = call i32 @AV_RL24(i32* %94)
  %96 = shl i32 %95, 4
  store i32 %96, i32* %13, align 4
  %97 = load i32*, i32** %10, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 3
  store i32* %98, i32** %10, align 8
  br label %105

99:                                               ; preds = %85
  %100 = load i32*, i32** %10, align 8
  %101 = call i32 @AV_RL16(i32* %100)
  %102 = shl i32 %101, 12
  store i32 %102, i32* %13, align 4
  %103 = load i32*, i32** %10, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 2
  store i32* %104, i32** %10, align 8
  br label %105

105:                                              ; preds = %99, %93
  %106 = load i32*, i32** %8, align 8
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* %12, align 4
  %109 = or i32 %107, %108
  %110 = call i32 @avio_wl32(i32* %106, i32 %109)
  br label %111

111:                                              ; preds = %105
  %112 = load i32, i32* %12, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %12, align 4
  br label %77

114:                                              ; preds = %77
  br label %115

115:                                              ; preds = %122, %114
  %116 = load i32, i32* %12, align 4
  %117 = icmp slt i32 %116, 8
  br i1 %117, label %118, label %125

118:                                              ; preds = %115
  %119 = load i32*, i32** %8, align 8
  %120 = load i32, i32* %12, align 4
  %121 = call i32 @avio_wl32(i32* %119, i32 %120)
  br label %122

122:                                              ; preds = %118
  %123 = load i32, i32* %12, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %12, align 4
  br label %115

125:                                              ; preds = %115
  br label %72

126:                                              ; preds = %72
  ret void
}

declare dso_local i32 @klv_encode_ber4_length(i32*, i32) #1

declare dso_local i32 @avio_w8(i32*, i32) #1

declare dso_local i32 @avio_wl16(i32*, i32) #1

declare dso_local i32 @AV_RL24(i32*) #1

declare dso_local i32 @AV_RL16(i32*) #1

declare dso_local i32 @avio_wl32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

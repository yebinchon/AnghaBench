; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_genh.c_genh_read_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_genh.c_genh_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_11__*, %struct.TYPE_10__** }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i32, i32 }
%struct.TYPE_12__ = type { i64, i8** }

@AV_CODEC_ID_ADPCM_THP = common dso_local global i64 0, align 8
@AVERROR_EOF = common dso_local global i32 0, align 4
@AV_CODEC_ID_SDX2_DPCM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_12__*)* @genh_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @genh_read_packet(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %13, i64 0
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %6, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %7, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %115

25:                                               ; preds = %2
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @AV_CODEC_ID_ADPCM_THP, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %115

31:                                               ; preds = %25
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp sgt i32 %34, 1
  br i1 %35, label %36, label %115

36:                                               ; preds = %31
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @avio_feof(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %43, i32* %3, align 4
  br label %157

44:                                               ; preds = %36
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = mul nsw i32 8, %48
  %50 = call i32 @av_new_packet(%struct.TYPE_12__* %45, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %3, align 4
  br label %157

55:                                               ; preds = %44
  store i32 0, i32* %9, align 4
  br label %56

56:                                               ; preds = %111, %55
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sdiv i32 8, %60
  %62 = icmp slt i32 %57, %61
  br i1 %62, label %63, label %114

63:                                               ; preds = %56
  store i32 0, i32* %10, align 4
  br label %64

64:                                               ; preds = %107, %63
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %110

70:                                               ; preds = %64
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i8* @avio_r8(i32 %73)
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 1
  %77 = load i8**, i8*** %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = mul nsw i32 %78, 8
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 %80, %83
  %85 = add nsw i32 %79, %84
  %86 = add nsw i32 %85, 0
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8*, i8** %77, i64 %87
  store i8* %74, i8** %88, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i8* @avio_r8(i32 %91)
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 1
  %95 = load i8**, i8*** %94, align 8
  %96 = load i32, i32* %10, align 4
  %97 = mul nsw i32 %96, 8
  %98 = load i32, i32* %9, align 4
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = mul nsw i32 %98, %101
  %103 = add nsw i32 %97, %102
  %104 = add nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %95, i64 %105
  store i8* %92, i8** %106, align 8
  br label %107

107:                                              ; preds = %70
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %10, align 4
  br label %64

110:                                              ; preds = %64
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %9, align 4
  br label %56

114:                                              ; preds = %56
  store i32 0, i32* %8, align 4
  br label %153

115:                                              ; preds = %31, %25, %2
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @AV_CODEC_ID_SDX2_DPCM, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %131

121:                                              ; preds = %115
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = mul nsw i32 %128, 1024
  %130 = call i32 @av_get_packet(i32 %124, %struct.TYPE_12__* %125, i32 %129)
  store i32 %130, i32* %8, align 4
  br label %152

131:                                              ; preds = %115
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %131
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  br label %149

144:                                              ; preds = %131
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = mul nsw i32 1024, %147
  br label %149

149:                                              ; preds = %144, %140
  %150 = phi i32 [ %143, %140 ], [ %148, %144 ]
  %151 = call i32 @av_get_packet(i32 %134, %struct.TYPE_12__* %135, i32 %150)
  store i32 %151, i32* %8, align 4
  br label %152

152:                                              ; preds = %149, %121
  br label %153

153:                                              ; preds = %152, %114
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 0
  store i64 0, i64* %155, align 8
  %156 = load i32, i32* %8, align 4
  store i32 %156, i32* %3, align 4
  br label %157

157:                                              ; preds = %153, %53, %42
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local i64 @avio_feof(i32) #1

declare dso_local i32 @av_new_packet(%struct.TYPE_12__*, i32) #1

declare dso_local i8* @avio_r8(i32) #1

declare dso_local i32 @av_get_packet(i32, %struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

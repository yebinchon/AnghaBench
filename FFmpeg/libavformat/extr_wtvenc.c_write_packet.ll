; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_wtvenc.c_write_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_wtvenc.c_write_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_24__**, %struct.TYPE_23__*, i32* }
%struct.TYPE_24__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_23__ = type { i32, i32, i32, i32, i32, %struct.TYPE_20__*, %struct.TYPE_22__*, %struct.TYPE_19__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_25__ = type { i64, i32, i64, i32 }

@AV_CODEC_ID_MJPEG = common dso_local global i64 0, align 8
@AV_CODEC_ID_H264 = common dso_local global i64 0, align 8
@AV_NOPTS_VALUE = common dso_local global i32 0, align 4
@ff_data_guid = common dso_local global i32 0, align 4
@INDEX_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*, %struct.TYPE_25__*)* @write_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_packet(%struct.TYPE_26__* %0, %struct.TYPE_25__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %4, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %5, align 8
  %10 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %6, align 8
  %13 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  store %struct.TYPE_23__* %15, %struct.TYPE_23__** %7, align 8
  %16 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %17, align 8
  %19 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %18, i64 %21
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  store %struct.TYPE_24__* %23, %struct.TYPE_24__** %8, align 8
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @AV_CODEC_ID_MJPEG, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %2
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 7
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %31
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 7
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %41 = call i32 @av_packet_ref(%struct.TYPE_19__* %39, %struct.TYPE_25__* %40)
  store i32 0, i32* %3, align 4
  br label %193

42:                                               ; preds = %31, %2
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @AV_CODEC_ID_H264, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %42
  %51 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %54 = call i32 @ff_check_h264_startcode(%struct.TYPE_26__* %51, %struct.TYPE_24__* %52, %struct.TYPE_25__* %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %3, align 4
  br label %193

59:                                               ; preds = %50
  br label %60

60:                                               ; preds = %59, %42
  br label %61

61:                                               ; preds = %60
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %61
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 6
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %71, align 8
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  br label %82

81:                                               ; preds = %61
  br label %82

82:                                               ; preds = %81, %69
  %83 = phi i32 [ %80, %69 ], [ 0, %81 ]
  %84 = sub nsw i32 %64, %83
  %85 = icmp sge i32 %84, 50
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %88 = call i32 @write_sync(%struct.TYPE_26__* %87)
  br label %89

89:                                               ; preds = %86, %82
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @AV_NOPTS_VALUE, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %132

95:                                               ; preds = %89
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %95
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %104, i32 0, i32 5
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %105, align 8
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = sub nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  br label %116

115:                                              ; preds = %95
  br label %116

116:                                              ; preds = %115, %103
  %117 = phi i32 [ %114, %103 ], [ 0, %115 ]
  %118 = sub nsw i32 %98, %117
  %119 = icmp sge i32 %118, 5000000
  br i1 %119, label %120, label %132

120:                                              ; preds = %116
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i32 0, i32 5
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 2
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @add_serial_pair(%struct.TYPE_20__** %122, i32* %124, i32 %127, i32 %130)
  br label %132

132:                                              ; preds = %120, %116, %89
  %133 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @AV_NOPTS_VALUE, align 4
  %137 = icmp ne i32 %135, %136
  br i1 %137, label %138, label %157

138:                                              ; preds = %132
  %139 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = icmp sgt i32 %141, %144
  br i1 %145, label %146, label %157

146:                                              ; preds = %138
  %147 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %150, i32 0, i32 3
  store i32 %149, i32* %151, align 4
  %152 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %155, i32 0, i32 4
  store i32 %154, i32* %156, align 8
  br label %157

157:                                              ; preds = %146, %138, %132
  %158 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %159 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %160 = call i32 @write_timestamp(%struct.TYPE_26__* %158, %struct.TYPE_25__* %159)
  %161 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %162 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @INDEX_BASE, align 8
  %166 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = add i64 %165, %168
  %170 = call i32 @write_chunk_header(%struct.TYPE_26__* %161, i32* @ff_data_guid, i64 %164, i64 %169)
  %171 = load i32*, i32** %6, align 8
  %172 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = call i32 @avio_write(i32* %171, i32 %174, i64 %177)
  %179 = load i32*, i32** %6, align 8
  %180 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = call i64 @WTV_PAD8(i64 %182)
  %184 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = sub nsw i64 %183, %186
  %188 = call i32 @write_pad(i32* %179, i64 %187)
  %189 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %190, align 8
  store i32 0, i32* %3, align 4
  br label %193

193:                                              ; preds = %157, %57, %37
  %194 = load i32, i32* %3, align 4
  ret i32 %194
}

declare dso_local i32 @av_packet_ref(%struct.TYPE_19__*, %struct.TYPE_25__*) #1

declare dso_local i32 @ff_check_h264_startcode(%struct.TYPE_26__*, %struct.TYPE_24__*, %struct.TYPE_25__*) #1

declare dso_local i32 @write_sync(%struct.TYPE_26__*) #1

declare dso_local i32 @add_serial_pair(%struct.TYPE_20__**, i32*, i32, i32) #1

declare dso_local i32 @write_timestamp(%struct.TYPE_26__*, %struct.TYPE_25__*) #1

declare dso_local i32 @write_chunk_header(%struct.TYPE_26__*, i32*, i64, i64) #1

declare dso_local i32 @avio_write(i32*, i32, i64) #1

declare dso_local i32 @write_pad(i32*, i64) #1

declare dso_local i64 @WTV_PAD8(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

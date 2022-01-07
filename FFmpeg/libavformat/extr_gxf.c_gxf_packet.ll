; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_gxf.c_gxf_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_gxf.c_gxf_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_19__**, %struct.gxf_stream_info*, %struct.TYPE_21__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64 }
%struct.gxf_stream_info = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"sync lost\0A\00", align 1
@PKT_FLT = common dso_local global i32 0, align 4
@PKT_MEDIA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"invalid media packet length\0A\00", align 1
@AV_CODEC_ID_PCM_S24LE = common dso_local global i64 0, align 8
@AV_CODEC_ID_PCM_S16LE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"invalid first and last sample values\0A\00", align 1
@AV_CODEC_ID_DVVIDEO = common dso_local global i64 0, align 8
@AVERROR_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, %struct.TYPE_20__*)* @gxf_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gxf_packet(%struct.TYPE_22__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.gxf_stream_info*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  store %struct.TYPE_21__* %23, %struct.TYPE_21__** %6, align 8
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 1
  %26 = load %struct.gxf_stream_info*, %struct.gxf_stream_info** %25, align 8
  store %struct.gxf_stream_info* %26, %struct.gxf_stream_info** %9, align 8
  br label %27

27:                                               ; preds = %65, %58, %50, %2
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br i1 %32, label %33, label %192

33:                                               ; preds = %27
  store i32 0, i32* %16, align 4
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %35 = call i32 @parse_packet_header(%struct.TYPE_21__* %34, i32* %7, i32* %8)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %33
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %39 = call i32 @avio_feof(%struct.TYPE_21__* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %43 = load i32, i32* @AV_LOG_ERROR, align 4
  %44 = call i32 @av_log(%struct.TYPE_22__* %42, i32 %43, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %41, %37
  store i32 -1, i32* %3, align 4
  br label %194

46:                                               ; preds = %33
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @PKT_FLT, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @gxf_read_index(%struct.TYPE_22__* %51, i32 %52)
  br label %27

54:                                               ; preds = %46
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @PKT_MEDIA, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @avio_skip(%struct.TYPE_21__* %59, i32 %60)
  br label %27

62:                                               ; preds = %54
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %63, 16
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %67 = load i32, i32* @AV_LOG_ERROR, align 4
  %68 = call i32 @av_log(%struct.TYPE_22__* %66, i32 %67, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %27

69:                                               ; preds = %62
  %70 = load i32, i32* %8, align 4
  %71 = sub nsw i32 %70, 16
  store i32 %71, i32* %8, align 4
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %73 = call i32 @avio_r8(%struct.TYPE_21__* %72)
  store i32 %73, i32* %11, align 4
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %75 = call i32 @avio_r8(%struct.TYPE_21__* %74)
  store i32 %75, i32* %12, align 4
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @get_sindex(%struct.TYPE_22__* %76, i32 %77, i32 %78)
  store i32 %79, i32* %17, align 4
  %80 = load i32, i32* %17, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %69
  %83 = load i32, i32* %17, align 4
  store i32 %83, i32* %3, align 4
  br label %194

84:                                               ; preds = %69
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %86, align 8
  %88 = load i32, i32* %17, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %87, i64 %89
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %90, align 8
  store %struct.TYPE_19__* %91, %struct.TYPE_19__** %10, align 8
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %93 = call i32 @avio_rb32(%struct.TYPE_21__* %92)
  store i32 %93, i32* %14, align 4
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %95 = call i32 @avio_rb32(%struct.TYPE_21__* %94)
  store i32 %95, i32* %15, align 4
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %97 = call i32 @avio_rb32(%struct.TYPE_21__* %96)
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %99 = call i32 @avio_r8(%struct.TYPE_21__* %98)
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %101 = call i32 @avio_r8(%struct.TYPE_21__* %100)
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @AV_CODEC_ID_PCM_S24LE, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %117, label %109

109:                                              ; preds = %84
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @AV_CODEC_ID_PCM_S16LE, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %159

117:                                              ; preds = %109, %84
  %118 = load i32, i32* %15, align 4
  %119 = ashr i32 %118, 16
  store i32 %119, i32* %18, align 4
  %120 = load i32, i32* %15, align 4
  %121 = and i32 %120, 65535
  store i32 %121, i32* %19, align 4
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @av_get_bits_per_sample(i64 %126)
  %128 = ashr i32 %127, 3
  store i32 %128, i32* %20, align 4
  %129 = load i32, i32* %18, align 4
  %130 = load i32, i32* %19, align 4
  %131 = icmp sle i32 %129, %130
  br i1 %131, label %132, label %154

132:                                              ; preds = %117
  %133 = load i32, i32* %19, align 4
  %134 = load i32, i32* %20, align 4
  %135 = mul nsw i32 %133, %134
  %136 = load i32, i32* %8, align 4
  %137 = icmp sle i32 %135, %136
  br i1 %137, label %138, label %154

138:                                              ; preds = %132
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %140 = load i32, i32* %18, align 4
  %141 = load i32, i32* %20, align 4
  %142 = mul nsw i32 %140, %141
  %143 = call i32 @avio_skip(%struct.TYPE_21__* %139, i32 %142)
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* %19, align 4
  %146 = load i32, i32* %20, align 4
  %147 = mul nsw i32 %145, %146
  %148 = sub nsw i32 %144, %147
  store i32 %148, i32* %16, align 4
  %149 = load i32, i32* %19, align 4
  %150 = load i32, i32* %18, align 4
  %151 = sub nsw i32 %149, %150
  %152 = load i32, i32* %20, align 4
  %153 = mul nsw i32 %151, %152
  store i32 %153, i32* %8, align 4
  br label %158

154:                                              ; preds = %132, %117
  %155 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %156 = load i32, i32* @AV_LOG_ERROR, align 4
  %157 = call i32 @av_log(%struct.TYPE_22__* %155, i32 %156, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %158

158:                                              ; preds = %154, %138
  br label %159

159:                                              ; preds = %158, %109
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %162 = load i32, i32* %8, align 4
  %163 = call i32 @av_get_packet(%struct.TYPE_21__* %160, %struct.TYPE_20__* %161, i32 %162)
  store i32 %163, i32* %13, align 4
  %164 = load i32, i32* %16, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %159
  %167 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %168 = load i32, i32* %16, align 4
  %169 = call i32 @avio_skip(%struct.TYPE_21__* %167, i32 %168)
  br label %170

170:                                              ; preds = %166, %159
  %171 = load i32, i32* %17, align 4
  %172 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %172, i32 0, i32 0
  store i32 %171, i32* %173, align 4
  %174 = load i32, i32* %14, align 4
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %175, i32 0, i32 1
  store i32 %174, i32* %176, align 4
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @AV_CODEC_ID_DVVIDEO, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %190

184:                                              ; preds = %170
  %185 = load %struct.gxf_stream_info*, %struct.gxf_stream_info** %9, align 8
  %186 = getelementptr inbounds %struct.gxf_stream_info, %struct.gxf_stream_info* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %188, i32 0, i32 2
  store i32 %187, i32* %189, align 4
  br label %190

190:                                              ; preds = %184, %170
  %191 = load i32, i32* %13, align 4
  store i32 %191, i32* %3, align 4
  br label %194

192:                                              ; preds = %27
  %193 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %193, i32* %3, align 4
  br label %194

194:                                              ; preds = %192, %190, %82, %45
  %195 = load i32, i32* %3, align 4
  ret i32 %195
}

declare dso_local i32 @parse_packet_header(%struct.TYPE_21__*, i32*, i32*) #1

declare dso_local i32 @avio_feof(%struct.TYPE_21__*) #1

declare dso_local i32 @av_log(%struct.TYPE_22__*, i32, i8*) #1

declare dso_local i32 @gxf_read_index(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @avio_skip(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @avio_r8(%struct.TYPE_21__*) #1

declare dso_local i32 @get_sindex(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @avio_rb32(%struct.TYPE_21__*) #1

declare dso_local i32 @av_get_bits_per_sample(i64) #1

declare dso_local i32 @av_get_packet(%struct.TYPE_21__*, %struct.TYPE_20__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_spdifdec.c_ff_spdif_read_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_spdifdec.c_ff_spdif_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_18__**, i32, i32* }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i64 }
%struct.TYPE_19__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32 }

@SYNCWORD1 = common dso_local global i32 0, align 4
@SYNCWORD2 = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Packet not ending at a 16-bit boundary\00", align 1
@BURST_HEADER_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Codec change in IEC 61937\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_spdif_read_packet(%struct.TYPE_21__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %6, align 8
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %37, %2
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @SYNCWORD1, align 4
  %20 = call i32 @AV_BSWAP16C(i32 %19)
  %21 = shl i32 %20, 16
  %22 = load i32, i32* @SYNCWORD2, align 4
  %23 = call i32 @AV_BSWAP16C(i32 %22)
  %24 = or i32 %21, %23
  %25 = icmp ne i32 %18, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %17
  %27 = load i32, i32* %9, align 4
  %28 = shl i32 %27, 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @avio_r8(i32* %29)
  %31 = or i32 %28, %30
  store i32 %31, i32* %9, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = call i64 @avio_feof(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %36, i32* %3, align 4
  br label %190

37:                                               ; preds = %26
  br label %17

38:                                               ; preds = %17
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @avio_rl16(i32* %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @avio_rl16(i32* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = srem i32 %43, 16
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %48 = call i32 @avpriv_request_sample(%struct.TYPE_21__* %47, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %38
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @FFALIGN(i32 %51, i32 16)
  %53 = ashr i32 %52, 3
  %54 = call i32 @av_new_packet(%struct.TYPE_20__* %50, i32 %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %3, align 4
  br label %190

59:                                               ; preds = %49
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @avio_tell(i32* %60)
  %62 = load i32, i32* @BURST_HEADER_SIZE, align 4
  %63 = sub nsw i32 %61, %62
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @avio_read(i32* %66, i64 %69, i32 %72)
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %59
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %80 = call i32 @av_packet_unref(%struct.TYPE_20__* %79)
  %81 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %81, i32* %3, align 4
  br label %190

82:                                               ; preds = %59
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to i32*
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to i32*
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = ashr i32 %93, 1
  %95 = call i32 @ff_spdif_bswap_buf16(i32* %86, i32* %90, i32 %94)
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %97 = load i32, i32* %7, align 4
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @spdif_get_offset_and_codec(%struct.TYPE_21__* %96, i32 %97, i64 %100, i32* %11, i32* %8)
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %82
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %106 = call i32 @av_packet_unref(%struct.TYPE_20__* %105)
  %107 = load i32, i32* %12, align 4
  store i32 %107, i32* %3, align 4
  br label %190

108:                                              ; preds = %82
  %109 = load i32*, i32** %6, align 8
  %110 = load i32, i32* %11, align 4
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = sub nsw i32 %110, %113
  %115 = load i32, i32* @BURST_HEADER_SIZE, align 4
  %116 = sub nsw i32 %114, %115
  %117 = call i32 @avio_skip(i32* %109, i32 %116)
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %143, label %122

122:                                              ; preds = %108
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %124 = call %struct.TYPE_19__* @avformat_new_stream(%struct.TYPE_21__* %123, i32* null)
  store %struct.TYPE_19__* %124, %struct.TYPE_19__** %13, align 8
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %126 = icmp ne %struct.TYPE_19__* %125, null
  br i1 %126, label %132, label %127

127:                                              ; preds = %122
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %129 = call i32 @av_packet_unref(%struct.TYPE_20__* %128)
  %130 = load i32, i32* @ENOMEM, align 4
  %131 = call i32 @AVERROR(i32 %130)
  store i32 %131, i32* %3, align 4
  br label %190

132:                                              ; preds = %122
  %133 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 1
  store i32 %133, i32* %137, align 4
  %138 = load i32, i32* %8, align 4
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 0
  store i32 %138, i32* %142, align 4
  br label %160

143:                                              ; preds = %108
  %144 = load i32, i32* %8, align 4
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %147, i64 0
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %144, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %143
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %157 = call i32 @avpriv_report_missing_feature(%struct.TYPE_21__* %156, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %158 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %158, i32* %3, align 4
  br label %190

159:                                              ; preds = %143
  br label %160

160:                                              ; preds = %159, %132
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %189, label %165

165:                                              ; preds = %160
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %168, i64 0
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %189

176:                                              ; preds = %165
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %179, i64 0
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = mul nsw i32 32, %185
  %187 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %187, i32 0, i32 0
  store i32 %186, i32* %188, align 8
  br label %189

189:                                              ; preds = %176, %165, %160
  store i32 0, i32* %3, align 4
  br label %190

190:                                              ; preds = %189, %155, %127, %104, %78, %57, %35
  %191 = load i32, i32* %3, align 4
  ret i32 %191
}

declare dso_local i32 @AV_BSWAP16C(i32) #1

declare dso_local i32 @avio_r8(i32*) #1

declare dso_local i64 @avio_feof(i32*) #1

declare dso_local i32 @avio_rl16(i32*) #1

declare dso_local i32 @avpriv_request_sample(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @av_new_packet(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @FFALIGN(i32, i32) #1

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local i32 @avio_read(i32*, i64, i32) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_20__*) #1

declare dso_local i32 @ff_spdif_bswap_buf16(i32*, i32*, i32) #1

declare dso_local i32 @spdif_get_offset_and_codec(%struct.TYPE_21__*, i32, i64, i32*, i32*) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

declare dso_local %struct.TYPE_19__* @avformat_new_stream(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avpriv_report_missing_feature(%struct.TYPE_21__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

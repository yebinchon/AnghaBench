; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_spdifenc.c_spdif_write_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_spdifenc.c_spdif_write_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AVFormatContext = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32*, i32, i32, i32, i32, {}*, i32, i32, i32, i32*, i32 }
%struct.TYPE_7__ = type { i32*, i32 }

@BURST_HEADER_SIZE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"bitrate is too high\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SYNCWORD1 = common dso_local global i32 0, align 4
@SYNCWORD2 = common dso_local global i32 0, align 4
@SPDIF_FLAG_BIGENDIAN = common dso_local global i32 0, align 4
@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"type=%x len=%i pkt_offset=%i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.AVFormatContext*, %struct.TYPE_7__*)* @spdif_write_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spdif_write_packet(%struct.AVFormatContext* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.AVFormatContext*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.AVFormatContext* %0, %struct.AVFormatContext** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %9 = load %struct.AVFormatContext*, %struct.AVFormatContext** %4, align 8
  %10 = getelementptr inbounds %struct.AVFormatContext, %struct.AVFormatContext* %9, i32 0, i32 1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %6, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store i32* %14, i32** %16, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @FFALIGN(i32 %24, i32 2)
  %26 = shl i32 %25, 3
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 3
  store i32 1, i32* %30, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 4
  store i32 0, i32* %32, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 5
  %35 = bitcast {}** %34 to i32 (%struct.AVFormatContext*, %struct.TYPE_7__*)**
  %36 = load i32 (%struct.AVFormatContext*, %struct.TYPE_7__*)*, i32 (%struct.AVFormatContext*, %struct.TYPE_7__*)** %35, align 8
  %37 = load %struct.AVFormatContext*, %struct.AVFormatContext** %4, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = call i32 %36(%struct.AVFormatContext* %37, %struct.TYPE_7__* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %2
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %213

44:                                               ; preds = %2
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %213

50:                                               ; preds = %44
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @BURST_HEADER_SIZE, align 4
  %58 = mul nsw i32 %56, %57
  %59 = sub nsw i32 %53, %58
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = sub nsw i32 %59, %62
  %64 = and i32 %63, -2
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %50
  %68 = load %struct.AVFormatContext*, %struct.AVFormatContext** %4, align 8
  %69 = load i32, i32* @AV_LOG_ERROR, align 4
  %70 = call i32 (%struct.AVFormatContext*, i32, i8*, ...) @av_log(%struct.AVFormatContext* %68, i32 %69, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %71 = load i32, i32* @EINVAL, align 4
  %72 = call i32 @AVERROR(i32 %71)
  store i32 %72, i32* %3, align 4
  br label %213

73:                                               ; preds = %50
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %107

78:                                               ; preds = %73
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %80 = load %struct.AVFormatContext*, %struct.AVFormatContext** %4, align 8
  %81 = getelementptr inbounds %struct.AVFormatContext, %struct.AVFormatContext* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @SYNCWORD1, align 4
  %84 = call i32 @spdif_put_16(%struct.TYPE_6__* %79, i32 %82, i32 %83)
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %86 = load %struct.AVFormatContext*, %struct.AVFormatContext** %4, align 8
  %87 = getelementptr inbounds %struct.AVFormatContext, %struct.AVFormatContext* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @SYNCWORD2, align 4
  %90 = call i32 @spdif_put_16(%struct.TYPE_6__* %85, i32 %88, i32 %89)
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %92 = load %struct.AVFormatContext*, %struct.AVFormatContext** %4, align 8
  %93 = getelementptr inbounds %struct.AVFormatContext, %struct.AVFormatContext* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 7
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @spdif_put_16(%struct.TYPE_6__* %91, i32 %94, i32 %97)
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %100 = load %struct.AVFormatContext*, %struct.AVFormatContext** %4, align 8
  %101 = getelementptr inbounds %struct.AVFormatContext, %struct.AVFormatContext* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @spdif_put_16(%struct.TYPE_6__* %99, i32 %102, i32 %105)
  br label %107

107:                                              ; preds = %78, %73
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 8
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @SPDIF_FLAG_BIGENDIAN, align 4
  %115 = and i32 %113, %114
  %116 = xor i32 %110, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %130

118:                                              ; preds = %107
  %119 = load %struct.AVFormatContext*, %struct.AVFormatContext** %4, align 8
  %120 = getelementptr inbounds %struct.AVFormatContext, %struct.AVFormatContext* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = and i32 %127, -2
  %129 = call i32 @avio_write(i32 %121, i32* %124, i32 %128)
  br label %172

130:                                              ; preds = %107
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 9
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 10
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = sext i32 %137 to i64
  %139 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %140 = add nsw i64 %138, %139
  %141 = call i32 @av_fast_malloc(i32** %132, i32* %134, i64 %140)
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 9
  %144 = load i32*, i32** %143, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %149, label %146

146:                                              ; preds = %130
  %147 = load i32, i32* @ENOMEM, align 4
  %148 = call i32 @AVERROR(i32 %147)
  store i32 %148, i32* %3, align 4
  br label %213

149:                                              ; preds = %130
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 9
  %152 = load i32*, i32** %151, align 8
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = ashr i32 %158, 1
  %160 = call i32 @ff_spdif_bswap_buf16(i32* %152, i32* %155, i32 %159)
  %161 = load %struct.AVFormatContext*, %struct.AVFormatContext** %4, align 8
  %162 = getelementptr inbounds %struct.AVFormatContext, %struct.AVFormatContext* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 9
  %166 = load i32*, i32** %165, align 8
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = and i32 %169, -2
  %171 = call i32 @avio_write(i32 %163, i32* %166, i32 %170)
  br label %172

172:                                              ; preds = %149, %118
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = and i32 %175, 1
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %195

178:                                              ; preds = %172
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %180 = load %struct.AVFormatContext*, %struct.AVFormatContext** %4, align 8
  %181 = getelementptr inbounds %struct.AVFormatContext, %struct.AVFormatContext* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = sub nsw i32 %188, 1
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %185, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = shl i32 %192, 8
  %194 = call i32 @spdif_put_16(%struct.TYPE_6__* %179, i32 %182, i32 %193)
  br label %195

195:                                              ; preds = %178, %172
  %196 = load %struct.AVFormatContext*, %struct.AVFormatContext** %4, align 8
  %197 = getelementptr inbounds %struct.AVFormatContext, %struct.AVFormatContext* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* %8, align 4
  %200 = call i32 @ffio_fill(i32 %198, i32 0, i32 %199)
  %201 = load %struct.AVFormatContext*, %struct.AVFormatContext** %4, align 8
  %202 = load i32, i32* @AV_LOG_DEBUG, align 4
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 7
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 6
  %211 = load i32, i32* %210, align 8
  %212 = call i32 (%struct.AVFormatContext*, i32, i8*, ...) @av_log(%struct.AVFormatContext* %201, i32 %202, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %205, i32 %208, i32 %211)
  store i32 0, i32* %3, align 4
  br label %213

213:                                              ; preds = %195, %146, %67, %49, %42
  %214 = load i32, i32* %3, align 4
  ret i32 %214
}

declare dso_local i32 @FFALIGN(i32, i32) #1

declare dso_local i32 @av_log(%struct.AVFormatContext*, i32, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @spdif_put_16(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @avio_write(i32, i32*, i32) #1

declare dso_local i32 @av_fast_malloc(i32**, i32*, i64) #1

declare dso_local i32 @ff_spdif_bswap_buf16(i32*, i32*, i32) #1

declare dso_local i32 @ffio_fill(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

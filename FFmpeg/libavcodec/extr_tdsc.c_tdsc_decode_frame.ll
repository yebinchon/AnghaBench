; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_tdsc.c_tdsc_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_tdsc.c_tdsc_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i64, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32*, i32* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Deflate error %d.\0A\00", align 1
@AVERROR_UNKNOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Frame is too small.\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@TDSF_HEADER_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"TDSF tag is too small.\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"DTSM tag is too small.\0A\00", align 1
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_P = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i8*, i32*, %struct.TYPE_15__*)* @tdsc_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tdsc_decode_frame(%struct.TYPE_17__* %0, i8* %1, i32* %2, %struct.TYPE_15__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %9, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %10, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %22, %struct.TYPE_16__** %11, align 8
  store i32 0, i32* %14, align 4
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %25, %28
  br i1 %29, label %38, label %30

30:                                               ; preds = %4
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %33, %36
  br i1 %37, label %38, label %62

38:                                               ; preds = %30, %4
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = mul nsw i64 %42, %45
  %47 = mul nsw i64 %46, 4
  %48 = trunc i64 %47 to i32
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 5
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @av_reallocp(i32* %52, i32 %55)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %38
  %60 = load i32, i32* %12, align 4
  store i32 %60, i32* %5, align 4
  br label %222

61:                                               ; preds = %38
  br label %62

62:                                               ; preds = %61, %30
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %15, align 4
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @uncompress(i32 %68, i32* %15, i32 %71, i32 %74)
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %62
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %80 = load i32, i32* @AV_LOG_ERROR, align 4
  %81 = load i32, i32* %12, align 4
  %82 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @av_log(%struct.TYPE_17__* %79, i32 %80, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %83, i32* %5, align 4
  br label %222

84:                                               ; preds = %62
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 4
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %15, align 4
  %91 = call i32 @bytestream2_init(i32* %86, i32 %89, i32 %90)
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 4
  %94 = call i32 @bytestream2_get_bytes_left(i32* %93)
  %95 = icmp slt i32 %94, 8
  br i1 %95, label %96, label %101

96:                                               ; preds = %84
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %98 = load i32, i32* @AV_LOG_ERROR, align 4
  %99 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @av_log(%struct.TYPE_17__* %97, i32 %98, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %100 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %100, i32* %5, align 4
  br label %222

101:                                              ; preds = %84
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 4
  %104 = call i32 @bytestream2_get_le32(i32* %103)
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* %13, align 4
  %106 = call i32 @MKTAG(i8 signext 84, i8 signext 68, i8 signext 83, i8 signext 70)
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %148

108:                                              ; preds = %101
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 4
  %111 = call i32 @bytestream2_get_bytes_left(i32* %110)
  %112 = load i32, i32* @TDSF_HEADER_SIZE, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %108
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %116 = load i32, i32* @AV_LOG_ERROR, align 4
  %117 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @av_log(%struct.TYPE_17__* %115, i32 %116, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %118 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %118, i32* %5, align 4
  br label %222

119:                                              ; preds = %108
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 4
  %122 = call i32 @bytestream2_get_le32(i32* %121)
  store i32 %122, i32* %16, align 4
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 4
  %125 = call i32 @bytestream2_skip(i32* %124, i32 4)
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 4
  %128 = call i32 @bytestream2_get_le32(i32* %127)
  %129 = icmp eq i32 %128, 48
  %130 = zext i1 %129 to i32
  store i32 %130, i32* %14, align 4
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %132 = load i32, i32* %16, align 4
  %133 = call i32 @tdsc_parse_tdsf(%struct.TYPE_17__* %131, i32 %132)
  store i32 %133, i32* %12, align 4
  %134 = load i32, i32* %12, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %119
  %137 = load i32, i32* %12, align 4
  store i32 %137, i32* %5, align 4
  br label %222

138:                                              ; preds = %119
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 4
  %141 = call i32 @bytestream2_get_bytes_left(i32* %140)
  %142 = icmp sge i32 %141, 8
  br i1 %142, label %143, label %147

143:                                              ; preds = %138
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 4
  %146 = call i32 @bytestream2_get_le32(i32* %145)
  store i32 %146, i32* %13, align 4
  br label %147

147:                                              ; preds = %143, %138
  br label %148

148:                                              ; preds = %147, %101
  %149 = load i32, i32* %13, align 4
  %150 = call i32 @MKTAG(i8 signext 68, i8 signext 84, i8 signext 83, i8 signext 77)
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %174

152:                                              ; preds = %148
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 4
  %155 = call i32 @bytestream2_get_le32(i32* %154)
  store i32 %155, i32* %17, align 4
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 4
  %158 = call i32 @bytestream2_get_bytes_left(i32* %157)
  %159 = load i32, i32* %17, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %166

161:                                              ; preds = %152
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %163 = load i32, i32* @AV_LOG_ERROR, align 4
  %164 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @av_log(%struct.TYPE_17__* %162, i32 %163, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %165 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %165, i32* %5, align 4
  br label %222

166:                                              ; preds = %152
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %168 = call i32 @tdsc_parse_dtsm(%struct.TYPE_17__* %167)
  store i32 %168, i32* %12, align 4
  %169 = load i32, i32* %12, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %166
  %172 = load i32, i32* %12, align 4
  store i32 %172, i32* %5, align 4
  br label %222

173:                                              ; preds = %166
  br label %174

174:                                              ; preds = %173, %148
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %177 = call i32 @ff_get_buffer(%struct.TYPE_17__* %175, %struct.TYPE_16__* %176, i32 0)
  store i32 %177, i32* %12, align 4
  %178 = load i32, i32* %12, align 4
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %174
  %181 = load i32, i32* %12, align 4
  store i32 %181, i32* %5, align 4
  br label %222

182:                                              ; preds = %174
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @av_frame_copy(%struct.TYPE_16__* %183, i32 %186)
  store i32 %187, i32* %12, align 4
  %188 = load i32, i32* %12, align 4
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %182
  %191 = load i32, i32* %12, align 4
  store i32 %191, i32* %5, align 4
  br label %222

192:                                              ; preds = %182
  %193 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 3
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 0
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 2
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 0
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @tdsc_paint_cursor(%struct.TYPE_17__* %193, i32 %198, i32 %203)
  %205 = load i32, i32* %14, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %213

207:                                              ; preds = %192
  %208 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %209 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 1
  store i32 %208, i32* %210, align 4
  %211 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i32 0, i32 0
  store i32 1, i32* %212, align 8
  br label %217

213:                                              ; preds = %192
  %214 = load i32, i32* @AV_PICTURE_TYPE_P, align 4
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 1
  store i32 %214, i32* %216, align 4
  br label %217

217:                                              ; preds = %213, %207
  %218 = load i32*, i32** %8, align 8
  store i32 1, i32* %218, align 4
  %219 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  store i32 %221, i32* %5, align 4
  br label %222

222:                                              ; preds = %217, %190, %180, %171, %161, %136, %114, %96, %78, %59
  %223 = load i32, i32* %5, align 4
  ret i32 %223
}

declare dso_local i32 @av_reallocp(i32*, i32) #1

declare dso_local i32 @uncompress(i32, i32*, i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_17__*, i32, i8*, ...) #1

declare dso_local i32 @bytestream2_init(i32*, i32, i32) #1

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @bytestream2_get_le32(i32*) #1

declare dso_local i32 @MKTAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @bytestream2_skip(i32*, i32) #1

declare dso_local i32 @tdsc_parse_tdsf(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @tdsc_parse_dtsm(%struct.TYPE_17__*) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_17__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @av_frame_copy(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @tdsc_paint_cursor(%struct.TYPE_17__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

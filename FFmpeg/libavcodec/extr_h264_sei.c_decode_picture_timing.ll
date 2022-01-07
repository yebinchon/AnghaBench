; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_sei.c_decode_picture_timing.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_sei.c_decode_picture_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i64, %struct.TYPE_10__*, i8*, i8* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_8__**, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i32, i64, i32, i32, i64, i64, i32 }

@MAX_SPS_COUNT = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"SPS unavailable in decode_picture_timing\0A\00", align 1
@AVERROR_PS_NOT_FOUND = common dso_local global i32 0, align 4
@H264_SEI_PIC_STRUCT_FRAME_TRIPLING = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@sei_num_clock_ts_table = common dso_local global i32* null, align 8
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"ct_type:%X pic_struct:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32*, %struct.TYPE_12__*, i8*)* @decode_picture_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_picture_timing(%struct.TYPE_11__* %0, i32* %1, %struct.TYPE_12__* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %8, align 8
  store i8* %3, i8** %9, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %11, align 8
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %54, %4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @MAX_SPS_COUNT, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %57

25:                                               ; preds = %21
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %27 = icmp ne %struct.TYPE_9__* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %53, label %33

33:                                               ; preds = %28, %25
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %36, i64 %38
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = icmp ne %struct.TYPE_8__* %40, null
  br i1 %41, label %42, label %53

42:                                               ; preds = %33
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %45, i64 %47
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %52, %struct.TYPE_9__** %11, align 8
  br label %53

53:                                               ; preds = %42, %33, %28
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %21

57:                                               ; preds = %21
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %59 = icmp ne %struct.TYPE_9__* %58, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %57
  %61 = load i8*, i8** %9, align 8
  %62 = load i32, i32* @AV_LOG_ERROR, align 4
  %63 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %61, i32 %62, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %64 = load i32, i32* @AVERROR_PS_NOT_FOUND, align 4
  store i32 %64, i32* %5, align 4
  br label %251

65:                                               ; preds = %57
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 5
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %65
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %70, %65
  %76 = load i32*, i32** %7, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @get_bits_long(i32* %76, i32 %79)
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 6
  store i8* %80, i8** %82, align 8
  %83 = load i32*, i32** %7, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i8* @get_bits_long(i32* %83, i32 %86)
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 5
  store i8* %87, i8** %89, align 8
  br label %90

90:                                               ; preds = %75, %70
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %248

95:                                               ; preds = %90
  %96 = load i32*, i32** %7, align 8
  %97 = call i32 @get_bits(i32* %96, i32 4)
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 1
  store i32 0, i32* %101, align 4
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @H264_SEI_PIC_STRUCT_FRAME_TRIPLING, align 4
  %106 = icmp sgt i32 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %95
  %108 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %108, i32* %5, align 4
  br label %251

109:                                              ; preds = %95
  %110 = load i32*, i32** @sei_num_clock_ts_table, align 8
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %110, i64 %114
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %13, align 4
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 3
  store i64 0, i64* %118, align 8
  store i32 0, i32* %12, align 4
  br label %119

119:                                              ; preds = %235, %109
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* %13, align 4
  %122 = icmp ult i32 %120, %121
  br i1 %122, label %123, label %238

123:                                              ; preds = %119
  %124 = load i32*, i32** %7, align 8
  %125 = call i32 @get_bits(i32* %124, i32 1)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %234

127:                                              ; preds = %123
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 4
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %129, align 8
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %133, 1
  store i64 %134, i64* %132, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i64 %133
  store %struct.TYPE_10__* %135, %struct.TYPE_10__** %14, align 8
  %136 = load i32*, i32** %7, align 8
  %137 = call i32 @get_bits(i32* %136, i32 2)
  %138 = shl i32 1, %137
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 4
  %143 = load i32*, i32** %7, align 8
  %144 = call i32 @skip_bits(i32* %143, i32 1)
  %145 = load i32*, i32** %7, align 8
  %146 = call i32 @get_bits(i32* %145, i32 5)
  store i32 %146, i32* %16, align 4
  %147 = load i32*, i32** %7, align 8
  %148 = call i32 @get_bits(i32* %147, i32 1)
  store i32 %148, i32* %15, align 4
  %149 = load i32*, i32** %7, align 8
  %150 = call i32 @skip_bits(i32* %149, i32 1)
  %151 = load i32*, i32** %7, align 8
  %152 = call i32 @get_bits(i32* %151, i32 1)
  store i32 %152, i32* %17, align 4
  %153 = load i32, i32* %17, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %164

155:                                              ; preds = %127
  %156 = load i32, i32* %16, align 4
  %157 = icmp ugt i32 %156, 1
  br i1 %157, label %158, label %164

158:                                              ; preds = %155
  %159 = load i32, i32* %16, align 4
  %160 = icmp ult i32 %159, 7
  br i1 %160, label %161, label %164

161:                                              ; preds = %158
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 0
  store i32 1, i32* %163, align 4
  br label %164

164:                                              ; preds = %161, %158, %155, %127
  %165 = load i32*, i32** %7, align 8
  %166 = call i32 @get_bits(i32* %165, i32 8)
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 1
  store i32 %166, i32* %168, align 4
  %169 = load i32, i32* %15, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %186

171:                                              ; preds = %164
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 2
  store i32 1, i32* %173, align 4
  %174 = load i32*, i32** %7, align 8
  %175 = call i32 @get_bits(i32* %174, i32 6)
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 3
  store i32 %175, i32* %177, align 4
  %178 = load i32*, i32** %7, align 8
  %179 = call i32 @get_bits(i32* %178, i32 6)
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 4
  store i32 %179, i32* %181, align 4
  %182 = load i32*, i32** %7, align 8
  %183 = call i32 @get_bits(i32* %182, i32 5)
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 5
  store i32 %183, i32* %185, align 4
  br label %222

186:                                              ; preds = %164
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 2
  store i32 0, i32* %188, align 4
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 5
  store i32 0, i32* %190, align 4
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 4
  store i32 0, i32* %192, align 4
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 3
  store i32 0, i32* %194, align 4
  %195 = load i32*, i32** %7, align 8
  %196 = call i32 @get_bits(i32* %195, i32 1)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %221

198:                                              ; preds = %186
  %199 = load i32*, i32** %7, align 8
  %200 = call i32 @get_bits(i32* %199, i32 6)
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 3
  store i32 %200, i32* %202, align 4
  %203 = load i32*, i32** %7, align 8
  %204 = call i32 @get_bits(i32* %203, i32 1)
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %220

206:                                              ; preds = %198
  %207 = load i32*, i32** %7, align 8
  %208 = call i32 @get_bits(i32* %207, i32 6)
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 4
  store i32 %208, i32* %210, align 4
  %211 = load i32*, i32** %7, align 8
  %212 = call i32 @get_bits(i32* %211, i32 1)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %206
  %215 = load i32*, i32** %7, align 8
  %216 = call i32 @get_bits(i32* %215, i32 5)
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 5
  store i32 %216, i32* %218, align 4
  br label %219

219:                                              ; preds = %214, %206
  br label %220

220:                                              ; preds = %219, %198
  br label %221

221:                                              ; preds = %220, %186
  br label %222

222:                                              ; preds = %221, %171
  %223 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = icmp sgt i32 %225, 0
  br i1 %226, label %227, label %233

227:                                              ; preds = %222
  %228 = load i32*, i32** %7, align 8
  %229 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %230 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = call i32 @skip_bits(i32* %228, i32 %231)
  br label %233

233:                                              ; preds = %227, %222
  br label %234

234:                                              ; preds = %233, %123
  br label %235

235:                                              ; preds = %234
  %236 = load i32, i32* %12, align 4
  %237 = add i32 %236, 1
  store i32 %237, i32* %12, align 4
  br label %119

238:                                              ; preds = %119
  %239 = load i8*, i8** %9, align 8
  %240 = load i32, i32* @AV_LOG_DEBUG, align 4
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %239, i32 %240, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %243, i32 %246)
  br label %248

248:                                              ; preds = %238, %90
  %249 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 2
  store i32 1, i32* %250, align 8
  store i32 0, i32* %5, align 4
  br label %251

251:                                              ; preds = %248, %107, %60
  %252 = load i32, i32* %5, align 4
  ret i32 %252
}

declare dso_local i32 @av_log(i8*, i32, i8*, ...) #1

declare dso_local i8* @get_bits_long(i32*, i32) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

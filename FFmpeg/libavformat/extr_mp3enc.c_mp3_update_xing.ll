; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mp3enc.c_mp3_update_xing.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mp3enc.c_mp3_update_xing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64, i64, i32, i64*, i32, i32, i64, i32, i32, i64*, i32, i32 }
%struct.TYPE_7__ = type { i64, i64, i32 }

@XING_TOC_SIZE = common dso_local global i32 0, align 4
@AV_PKT_DATA_REPLAYGAIN = common dso_local global i32 0, align 4
@INT32_MIN = common dso_local global i64 0, align 8
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Too many samples of initial padding.\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Too many samples of trailing padding.\0A\00", align 1
@XING_SIZE = common dso_local global i32 0, align 4
@AV_CRC_16_ANSI_LE = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @mp3_update_xing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mp3_update_xing(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %3, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @avio_tell(i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 12
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %1
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 10
  %27 = load i64*, i64** %26, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %27, i64 %31
  %33 = call i32 @MKTAG(i8 signext 73, i8 signext 110, float 1.020000e+02, i8 signext 111)
  %34 = call i32 @AV_WL32(i64* %32, i32 %33)
  br label %35

35:                                               ; preds = %24, %1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 10
  %38 = load i64*, i64** %37, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %38, i64 %42
  %44 = getelementptr inbounds i64, i64* %43, i64 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @AV_WB32(i64* %44, i64 %47)
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 10
  %51 = load i64*, i64** %50, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %51, i64 %55
  %57 = getelementptr inbounds i64, i64* %56, i64 12
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @AV_WB32(i64* %57, i64 %60)
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 10
  %64 = load i64*, i64** %63, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %64, i64 %68
  %70 = getelementptr inbounds i64, i64* %69, i64 16
  store i64* %70, i64** %6, align 8
  %71 = load i64*, i64** %6, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 0
  store i64 0, i64* %72, align 8
  store i32 1, i32* %7, align 4
  br label %73

73:                                               ; preds = %104, %35
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @XING_TOC_SIZE, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %107

77:                                               ; preds = %73
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = mul nsw i32 %78, %81
  %83 = load i32, i32* @XING_TOC_SIZE, align 4
  %84 = sdiv i32 %82, %83
  store i32 %84, i32* %10, align 4
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 4
  %87 = load i64*, i64** %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = mul nsw i64 256, %91
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = sdiv i64 %92, %95
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %11, align 4
  %99 = call i64 @FFMIN(i32 %98, i32 255)
  %100 = load i64*, i64** %6, align 8
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %100, i64 %102
  store i64 %99, i64* %103, align 8
  br label %104

104:                                              ; preds = %77
  %105 = load i32, i32* %7, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %7, align 4
  br label %73

107:                                              ; preds = %73
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @AV_PKT_DATA_REPLAYGAIN, align 4
  %114 = call i64 @av_stream_get_side_data(i32 %112, i32 %113, i32* %8)
  %115 = inttoptr i64 %114 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %115, %struct.TYPE_7__** %4, align 8
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %117 = icmp ne %struct.TYPE_7__* %116, null
  br i1 %117, label %118, label %207

118:                                              ; preds = %107
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = icmp uge i64 %120, 24
  br i1 %121, label %122, label %207

122:                                              ; preds = %118
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 10
  %125 = load i64*, i64** %124, align 8
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i64, i64* %125, i64 %129
  %131 = getelementptr inbounds i64, i64* %130, i64 131
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = call i64 @av_rescale(i32 %134, i32 8388608, i32 100000)
  %136 = call i32 @AV_WB32(i64* %131, i64 %135)
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @INT32_MIN, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %171

142:                                              ; preds = %122
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = sdiv i64 %145, 10000
  %147 = trunc i64 %146 to i32
  %148 = call i32 @FFABS(i32 %147)
  %149 = and i32 %148, 511
  store i32 %149, i32* %12, align 4
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp slt i64 %152, 0
  %154 = zext i1 %153 to i32
  %155 = shl i32 %154, 9
  %156 = load i32, i32* %12, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %12, align 4
  %158 = load i32, i32* %12, align 4
  %159 = or i32 %158, 8192
  store i32 %159, i32* %12, align 4
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 10
  %162 = load i64*, i64** %161, align 8
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i64, i64* %162, i64 %166
  %168 = getelementptr inbounds i64, i64* %167, i64 135
  %169 = load i32, i32* %12, align 4
  %170 = call i32 @AV_WB16(i64* %168, i32 %169)
  br label %171

171:                                              ; preds = %142, %122
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @INT32_MIN, align 8
  %176 = icmp ne i64 %174, %175
  br i1 %176, label %177, label %206

177:                                              ; preds = %171
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = sdiv i64 %180, 10000
  %182 = trunc i64 %181 to i32
  %183 = call i32 @FFABS(i32 %182)
  %184 = and i32 %183, 511
  store i32 %184, i32* %12, align 4
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = icmp slt i64 %187, 0
  %189 = zext i1 %188 to i32
  %190 = shl i32 %189, 9
  %191 = load i32, i32* %12, align 4
  %192 = or i32 %191, %190
  store i32 %192, i32* %12, align 4
  %193 = load i32, i32* %12, align 4
  %194 = or i32 %193, 16384
  store i32 %194, i32* %12, align 4
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 10
  %197 = load i64*, i64** %196, align 8
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i64, i64* %197, i64 %201
  %203 = getelementptr inbounds i64, i64* %202, i64 137
  %204 = load i32, i32* %12, align 4
  %205 = call i32 @AV_WB16(i64* %203, i32 %204)
  br label %206

206:                                              ; preds = %177, %171
  br label %207

207:                                              ; preds = %206, %118, %107
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 5
  %210 = load i32, i32* %209, align 8
  %211 = icmp sge i32 %210, 4096
  br i1 %211, label %212, label %218

212:                                              ; preds = %207
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 5
  store i32 4095, i32* %214, align 8
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %216 = load i32, i32* @AV_LOG_WARNING, align 4
  %217 = call i32 @av_log(%struct.TYPE_8__* %215, i32 %216, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %218

218:                                              ; preds = %212, %207
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 6
  %221 = load i32, i32* %220, align 4
  %222 = icmp sge i32 %221, 4096
  br i1 %222, label %223, label %229

223:                                              ; preds = %218
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 6
  store i32 4095, i32* %225, align 4
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %227 = load i32, i32* @AV_LOG_WARNING, align 4
  %228 = call i32 @av_log(%struct.TYPE_8__* %226, i32 %227, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %229

229:                                              ; preds = %223, %218
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 10
  %232 = load i64*, i64** %231, align 8
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i64, i64* %232, i64 %236
  %238 = getelementptr inbounds i64, i64* %237, i64 141
  %239 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 5
  %241 = load i32, i32* %240, align 8
  %242 = shl i32 %241, 12
  %243 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 6
  %245 = load i32, i32* %244, align 4
  %246 = add nsw i32 %242, %245
  %247 = call i32 @AV_WB24(i64* %238, i32 %246)
  %248 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 10
  %250 = load i64*, i64** %249, align 8
  %251 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i64, i64* %250, i64 %254
  %256 = load i32, i32* @XING_SIZE, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i64, i64* %255, i64 %257
  %259 = getelementptr inbounds i64, i64* %258, i64 -8
  %260 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i32 0, i32 7
  %262 = load i64, i64* %261, align 8
  %263 = call i32 @AV_WB32(i64* %259, i64 %262)
  %264 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 10
  %266 = load i64*, i64** %265, align 8
  %267 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i64, i64* %266, i64 %270
  %272 = load i32, i32* @XING_SIZE, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i64, i64* %271, i64 %273
  %275 = getelementptr inbounds i64, i64* %274, i64 -4
  %276 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %276, i32 0, i32 8
  %278 = load i32, i32* %277, align 8
  %279 = call i32 @AV_WB16(i64* %275, i32 %278)
  %280 = load i32, i32* @AV_CRC_16_ANSI_LE, align 4
  %281 = call i32 @av_crc_get_table(i32 %280)
  %282 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %283 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %282, i32 0, i32 10
  %284 = load i64*, i64** %283, align 8
  %285 = call i32 @av_crc(i32 %281, i32 0, i64* %284, i32 190)
  store i32 %285, i32* %5, align 4
  %286 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %287 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %286, i32 0, i32 10
  %288 = load i64*, i64** %287, align 8
  %289 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %290 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i64, i64* %288, i64 %292
  %294 = load i32, i32* @XING_SIZE, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i64, i64* %293, i64 %295
  %297 = getelementptr inbounds i64, i64* %296, i64 -2
  %298 = load i32, i32* %5, align 4
  %299 = call i32 @AV_WB16(i64* %297, i32 %298)
  %300 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %301 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %304 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %303, i32 0, i32 11
  %305 = load i32, i32* %304, align 8
  %306 = load i32, i32* @SEEK_SET, align 4
  %307 = call i32 @avio_seek(i32 %302, i32 %305, i32 %306)
  %308 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %309 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %312 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %311, i32 0, i32 10
  %313 = load i64*, i64** %312, align 8
  %314 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %315 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %314, i32 0, i32 9
  %316 = load i32, i32* %315, align 4
  %317 = call i32 @avio_write(i32 %310, i64* %313, i32 %316)
  %318 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %319 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  %321 = load i32, i32* %9, align 4
  %322 = load i32, i32* @SEEK_SET, align 4
  %323 = call i32 @avio_seek(i32 %320, i32 %321, i32 %322)
  ret void
}

declare dso_local i32 @avio_tell(i32) #1

declare dso_local i32 @AV_WL32(i64*, i32) #1

declare dso_local i32 @MKTAG(i8 signext, i8 signext, float, i8 signext) #1

declare dso_local i32 @AV_WB32(i64*, i64) #1

declare dso_local i64 @FFMIN(i32, i32) #1

declare dso_local i64 @av_stream_get_side_data(i32, i32, i32*) #1

declare dso_local i64 @av_rescale(i32, i32, i32) #1

declare dso_local i32 @FFABS(i32) #1

declare dso_local i32 @AV_WB16(i64*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_8__*, i32, i8*) #1

declare dso_local i32 @AV_WB24(i64*, i32) #1

declare dso_local i32 @av_crc(i32, i32, i64*, i32) #1

declare dso_local i32 @av_crc_get_table(i32) #1

declare dso_local i32 @avio_seek(i32, i32, i32) #1

declare dso_local i32 @avio_write(i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

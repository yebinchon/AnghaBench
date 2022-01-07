; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_atrac3plus.c_decode_tones_info.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_atrac3plus.c_decode_tones_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { i32, i64*, i64*, i64, i64*, i8*, i32*, i8* }

@ATRAC3P_SUBBANDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"GHA amplitude mode 0\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@tone_vlc_tabs = common dso_local global %struct.TYPE_14__* null, align 8
@Atrac3pWavesData = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_13__*, i32, i32*)* @decode_tones_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_tones_info(i32* %0, %struct.TYPE_13__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [16 x i32], align 16
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %32, %4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %14
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* @ATRAC3P_SUBBANDS, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 4, %28
  %30 = trunc i64 %29 to i32
  %31 = call i32 @memset(i32* %26, i32 0, i32 %30)
  br label %32

32:                                               ; preds = %18
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %10, align 4
  br label %14

35:                                               ; preds = %14
  %36 = load i32*, i32** %6, align 8
  %37 = call i8* @get_bits1(i32* %36)
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 7
  store i8* %37, i8** %41, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 7
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %287

49:                                               ; preds = %35
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 6
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @memset(i32* %54, i32 0, i32 8)
  %56 = load i32*, i32** %6, align 8
  %57 = call i8* @get_bits1(i32* %56)
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 5
  store i8* %57, i8** %61, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 5
  %66 = load i8*, i8** %65, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %72, label %68

68:                                               ; preds = %49
  %69 = load i32*, i32** %9, align 8
  %70 = call i32 @avpriv_report_missing_feature(i32* %69, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %71 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %71, i32* %5, align 4
  br label %287

72:                                               ; preds = %49
  %73 = load i32*, i32** %6, align 8
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** @tone_vlc_tabs, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i64 0
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** @tone_vlc_tabs, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i64 0
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @get_vlc2(i32* %73, i32 %77, i32 %81, i32 1)
  %83 = add nsw i32 %82, 1
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  store i32 %83, i32* %87, align 8
  %88 = load i32, i32* %8, align 4
  %89 = icmp eq i32 %88, 2
  br i1 %89, label %90, label %127

90:                                               ; preds = %72
  %91 = load i32*, i32** %6, align 8
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 2
  %96 = load i64*, i64** %95, align 8
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @get_subband_flags(i32* %91, i64* %96, i32 %101)
  %103 = load i32*, i32** %6, align 8
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 1
  %108 = load i64*, i64** %107, align 8
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @get_subband_flags(i32* %103, i64* %108, i32 %113)
  %115 = load i32*, i32** %6, align 8
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 4
  %120 = load i64*, i64** %119, align 8
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @get_subband_flags(i32* %115, i64* %120, i32 %125)
  br label %127

127:                                              ; preds = %90, %72
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 3
  store i64 0, i64* %131, align 8
  store i32 0, i32* %10, align 4
  br label %132

132:                                              ; preds = %201, %127
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* %8, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %204

136:                                              ; preds = %132
  store i32 0, i32* %11, align 4
  br label %137

137:                                              ; preds = %167, %136
  %138 = load i32, i32* %11, align 4
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp slt i32 %138, %143
  br i1 %144, label %145, label %170

145:                                              ; preds = %137
  %146 = load i32, i32* %10, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %145
  br label %162

149:                                              ; preds = %145
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 2
  %154 = load i64*, i64** %153, align 8
  %155 = load i32, i32* %11, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i64, i64* %154, i64 %156
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  %160 = xor i1 %159, true
  %161 = zext i1 %160 to i32
  br label %162

162:                                              ; preds = %149, %148
  %163 = phi i32 [ 1, %148 ], [ %161, %149 ]
  %164 = load i32, i32* %11, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 %165
  store i32 %163, i32* %166, align 4
  br label %167

167:                                              ; preds = %162
  %168 = load i32, i32* %11, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %11, align 4
  br label %137

170:                                              ; preds = %137
  %171 = load i32*, i32** %6, align 8
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %173 = load i32, i32* %10, align 4
  %174 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 0
  %175 = call i32 @decode_tones_envelope(i32* %171, %struct.TYPE_13__* %172, i32 %173, i32* %174)
  %176 = load i32*, i32** %6, align 8
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %178 = load i32, i32* %10, align 4
  %179 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 0
  %180 = load i32*, i32** %9, align 8
  %181 = call i32 @decode_band_numwavs(i32* %176, %struct.TYPE_13__* %177, i32 %178, i32* %179, i32* %180)
  store i32 %181, i32* %12, align 4
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %170
  %184 = load i32, i32* %12, align 4
  store i32 %184, i32* %5, align 4
  br label %287

185:                                              ; preds = %170
  %186 = load i32*, i32** %6, align 8
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %188 = load i32, i32* %10, align 4
  %189 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 0
  %190 = call i32 @decode_tones_frequency(i32* %186, %struct.TYPE_13__* %187, i32 %188, i32* %189)
  %191 = load i32*, i32** %6, align 8
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %193 = load i32, i32* %10, align 4
  %194 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 0
  %195 = call i32 @decode_tones_amplitude(i32* %191, %struct.TYPE_13__* %192, i32 %193, i32* %194)
  %196 = load i32*, i32** %6, align 8
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %198 = load i32, i32* %10, align 4
  %199 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 0
  %200 = call i32 @decode_tones_phase(i32* %196, %struct.TYPE_13__* %197, i32 %198, i32* %199)
  br label %201

201:                                              ; preds = %185
  %202 = load i32, i32* %10, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %10, align 4
  br label %132

204:                                              ; preds = %132
  %205 = load i32, i32* %8, align 4
  %206 = icmp eq i32 %205, 2
  br i1 %206, label %207, label %286

207:                                              ; preds = %204
  store i32 0, i32* %11, align 4
  br label %208

208:                                              ; preds = %282, %207
  %209 = load i32, i32* %11, align 4
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 1
  %212 = load %struct.TYPE_11__*, %struct.TYPE_11__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = icmp slt i32 %209, %214
  br i1 %215, label %216, label %285

216:                                              ; preds = %208
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 1
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 2
  %221 = load i64*, i64** %220, align 8
  %222 = load i32, i32* %11, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i64, i64* %221, i64 %223
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %247

227:                                              ; preds = %216
  %228 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 0
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i64 0
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 0
  %233 = load i32*, i32** %232, align 8
  %234 = load i32, i32* %11, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %233, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %238, i32 0, i32 0
  %240 = load %struct.TYPE_12__*, %struct.TYPE_12__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i64 1
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 0
  %243 = load i32*, i32** %242, align 8
  %244 = load i32, i32* %11, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  store i32 %237, i32* %246, align 4
  br label %247

247:                                              ; preds = %227, %216
  %248 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %248, i32 0, i32 1
  %250 = load %struct.TYPE_11__*, %struct.TYPE_11__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %250, i32 0, i32 1
  %252 = load i64*, i64** %251, align 8
  %253 = load i32, i32* %11, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i64, i64* %252, i64 %254
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %281

258:                                              ; preds = %247
  %259 = load i32, i32* @Atrac3pWavesData, align 4
  %260 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %261 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %260, i32 0, i32 0
  %262 = load %struct.TYPE_12__*, %struct.TYPE_12__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %262, i64 0
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i32 0, i32 0
  %265 = load i32*, i32** %264, align 8
  %266 = load i32, i32* %11, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %265, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %271 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %270, i32 0, i32 0
  %272 = load %struct.TYPE_12__*, %struct.TYPE_12__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i64 1
  %274 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %273, i32 0, i32 0
  %275 = load i32*, i32** %274, align 8
  %276 = load i32, i32* %11, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %275, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = call i32 @FFSWAP(i32 %259, i32 %269, i32 %279)
  br label %281

281:                                              ; preds = %258, %247
  br label %282

282:                                              ; preds = %281
  %283 = load i32, i32* %11, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %11, align 4
  br label %208

285:                                              ; preds = %208
  br label %286

286:                                              ; preds = %285, %204
  store i32 0, i32* %5, align 4
  br label %287

287:                                              ; preds = %286, %183, %68, %48
  %288 = load i32, i32* %5, align 4
  ret i32 %288
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i8* @get_bits1(i32*) #1

declare dso_local i32 @avpriv_report_missing_feature(i32*, i8*) #1

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i32 @get_subband_flags(i32*, i64*, i32) #1

declare dso_local i32 @decode_tones_envelope(i32*, %struct.TYPE_13__*, i32, i32*) #1

declare dso_local i32 @decode_band_numwavs(i32*, %struct.TYPE_13__*, i32, i32*, i32*) #1

declare dso_local i32 @decode_tones_frequency(i32*, %struct.TYPE_13__*, i32, i32*) #1

declare dso_local i32 @decode_tones_amplitude(i32*, %struct.TYPE_13__*, i32, i32*) #1

declare dso_local i32 @decode_tones_phase(i32*, %struct.TYPE_13__*, i32, i32*) #1

declare dso_local i32 @FFSWAP(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

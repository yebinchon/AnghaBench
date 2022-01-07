; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_atrac3plus.c_decode_channel_wordlen.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_atrac3plus.c_decode_channel_wordlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i64*, i32, i32 }

@wl_vlc_tabs = common dso_local global %struct.TYPE_10__* null, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"WL mode 1: invalid position!\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@atrac3p_wl_shapes = common dso_local global i32*** null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Split point beyond array\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_11__*, i32, i32*)* @decode_channel_wordlen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_channel_wordlen(i32* %0, %struct.TYPE_11__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_10__*, align 8
  %21 = alloca %struct.TYPE_12__*, align 8
  %22 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %11, align 4
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i64 %27
  store %struct.TYPE_12__* %28, %struct.TYPE_12__** %21, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i64 0
  store %struct.TYPE_12__* %32, %struct.TYPE_12__** %22, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = call i64 @get_bits(i32* %35, i32 2)
  switch i64 %36, label %540 [
    i64 0, label %37
    i64 1, label %57
    i64 2, label %198
    i64 3, label %474
  ]

37:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %38

38:                                               ; preds = %53, %37
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %38
  %45 = load i32*, i32** %6, align 8
  %46 = call i64 @get_bits(i32* %45, i32 3)
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  store i64 %46, i64* %52, align 8
  br label %53

53:                                               ; preds = %44
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %10, align 4
  br label %38

56:                                               ; preds = %38
  br label %540

57:                                               ; preds = %4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %116

60:                                               ; preds = %57
  %61 = load i32*, i32** %6, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = call i32 @num_coded_units(i32* %61, %struct.TYPE_12__* %62, %struct.TYPE_11__* %63, i32* %64)
  store i32 %65, i32* %18, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i32, i32* %18, align 4
  store i32 %68, i32* %5, align 4
  br label %647

69:                                               ; preds = %60
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %115

74:                                               ; preds = %69
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wl_vlc_tabs, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = call i64 @get_bits(i32* %76, i32 2)
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i64 %77
  store %struct.TYPE_10__* %78, %struct.TYPE_10__** %20, align 8
  store i32 0, i32* %10, align 4
  br label %79

79:                                               ; preds = %111, %74
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %114

85:                                               ; preds = %79
  %86 = load i32*, i32** %6, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @get_vlc2(i32* %86, i32 %89, i32 %92, i32 1)
  store i32 %93, i32* %12, align 4
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 1
  %96 = load i64*, i64** %95, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %96, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* %12, align 4
  %102 = sext i32 %101 to i64
  %103 = add i64 %100, %102
  %104 = and i64 %103, 7
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 1
  %107 = load i64*, i64** %106, align 8
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %107, i64 %109
  store i64 %104, i64* %110, align 8
  br label %111

111:                                              ; preds = %85
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %10, align 4
  br label %79

114:                                              ; preds = %79
  br label %115

115:                                              ; preds = %114, %69
  br label %197

116:                                              ; preds = %57
  %117 = load i32*, i32** %6, align 8
  %118 = call i64 @get_bits(i32* %117, i32 2)
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %11, align 4
  %120 = load i32*, i32** %6, align 8
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %123 = load i32*, i32** %9, align 8
  %124 = call i32 @num_coded_units(i32* %120, %struct.TYPE_12__* %121, %struct.TYPE_11__* %122, i32* %123)
  store i32 %124, i32* %18, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %116
  %127 = load i32, i32* %18, align 4
  store i32 %127, i32* %5, align 4
  br label %647

128:                                              ; preds = %116
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %196

133:                                              ; preds = %128
  %134 = load i32*, i32** %6, align 8
  %135 = call i64 @get_bits(i32* %134, i32 5)
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %14, align 4
  %137 = load i32, i32* %14, align 4
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = icmp sgt i32 %137, %140
  br i1 %141, label %142, label %147

142:                                              ; preds = %133
  %143 = load i32*, i32** %9, align 8
  %144 = load i32, i32* @AV_LOG_ERROR, align 4
  %145 = call i32 @av_log(i32* %143, i32 %144, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %146 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %146, i32* %5, align 4
  br label %647

147:                                              ; preds = %133
  %148 = load i32*, i32** %6, align 8
  %149 = call i64 @get_bits(i32* %148, i32 2)
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %15, align 4
  %151 = load i32*, i32** %6, align 8
  %152 = call i64 @get_bits(i32* %151, i32 3)
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %16, align 4
  store i32 0, i32* %10, align 4
  br label %154

154:                                              ; preds = %167, %147
  %155 = load i32, i32* %10, align 4
  %156 = load i32, i32* %14, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %170

158:                                              ; preds = %154
  %159 = load i32*, i32** %6, align 8
  %160 = call i64 @get_bits(i32* %159, i32 3)
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 1
  %163 = load i64*, i64** %162, align 8
  %164 = load i32, i32* %10, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i64, i64* %163, i64 %165
  store i64 %160, i64* %166, align 8
  br label %167

167:                                              ; preds = %158
  %168 = load i32, i32* %10, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %10, align 4
  br label %154

170:                                              ; preds = %154
  %171 = load i32, i32* %14, align 4
  store i32 %171, i32* %10, align 4
  br label %172

172:                                              ; preds = %192, %170
  %173 = load i32, i32* %10, align 4
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = icmp slt i32 %173, %176
  br i1 %177, label %178, label %195

178:                                              ; preds = %172
  %179 = load i32, i32* %16, align 4
  %180 = load i32*, i32** %6, align 8
  %181 = load i32, i32* %15, align 4
  %182 = call i32 @get_bitsz(i32* %180, i32 %181)
  %183 = add nsw i32 %179, %182
  %184 = and i32 %183, 7
  %185 = sext i32 %184 to i64
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 1
  %188 = load i64*, i64** %187, align 8
  %189 = load i32, i32* %10, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i64, i64* %188, i64 %190
  store i64 %185, i64* %191, align 8
  br label %192

192:                                              ; preds = %178
  %193 = load i32, i32* %10, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %10, align 4
  br label %172

195:                                              ; preds = %172
  br label %196

196:                                              ; preds = %195, %128
  br label %197

197:                                              ; preds = %196, %115
  br label %540

198:                                              ; preds = %4
  %199 = load i32*, i32** %6, align 8
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %202 = load i32*, i32** %9, align 8
  %203 = call i32 @num_coded_units(i32* %199, %struct.TYPE_12__* %200, %struct.TYPE_11__* %201, i32* %202)
  store i32 %203, i32* %18, align 4
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %198
  %206 = load i32, i32* %18, align 4
  store i32 %206, i32* %5, align 4
  br label %647

207:                                              ; preds = %198
  %208 = load i32, i32* %8, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %298

210:                                              ; preds = %207
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %298

215:                                              ; preds = %210
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wl_vlc_tabs, align 8
  %217 = load i32*, i32** %6, align 8
  %218 = call i64 @get_bits(i32* %217, i32 2)
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i64 %218
  store %struct.TYPE_10__* %219, %struct.TYPE_10__** %20, align 8
  %220 = load i32*, i32** %6, align 8
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @get_vlc2(i32* %220, i32 %223, i32 %226, i32 1)
  store i32 %227, i32* %12, align 4
  %228 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 1
  %230 = load i64*, i64** %229, align 8
  %231 = getelementptr inbounds i64, i64* %230, i64 0
  %232 = load i64, i64* %231, align 8
  %233 = load i32, i32* %12, align 4
  %234 = sext i32 %233 to i64
  %235 = add i64 %232, %234
  %236 = and i64 %235, 7
  %237 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 1
  %239 = load i64*, i64** %238, align 8
  %240 = getelementptr inbounds i64, i64* %239, i64 0
  store i64 %236, i64* %240, align 8
  store i32 1, i32* %10, align 4
  br label %241

241:                                              ; preds = %294, %215
  %242 = load i32, i32* %10, align 4
  %243 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = icmp slt i32 %242, %245
  br i1 %246, label %247, label %297

247:                                              ; preds = %241
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 1
  %250 = load i64*, i64** %249, align 8
  %251 = load i32, i32* %10, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i64, i64* %250, i64 %252
  %254 = load i64, i64* %253, align 8
  %255 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %255, i32 0, i32 1
  %257 = load i64*, i64** %256, align 8
  %258 = load i32, i32* %10, align 4
  %259 = sub nsw i32 %258, 1
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i64, i64* %257, i64 %260
  %262 = load i64, i64* %261, align 8
  %263 = sub i64 %254, %262
  %264 = trunc i64 %263 to i32
  store i32 %264, i32* %13, align 4
  %265 = load i32*, i32** %6, align 8
  %266 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %267 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @get_vlc2(i32* %265, i32 %268, i32 %271, i32 1)
  store i32 %272, i32* %12, align 4
  %273 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %274 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %273, i32 0, i32 1
  %275 = load i64*, i64** %274, align 8
  %276 = load i32, i32* %10, align 4
  %277 = sub nsw i32 %276, 1
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i64, i64* %275, i64 %278
  %280 = load i64, i64* %279, align 8
  %281 = load i32, i32* %13, align 4
  %282 = sext i32 %281 to i64
  %283 = add i64 %280, %282
  %284 = load i32, i32* %12, align 4
  %285 = sext i32 %284 to i64
  %286 = add i64 %283, %285
  %287 = and i64 %286, 7
  %288 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %289 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %288, i32 0, i32 1
  %290 = load i64*, i64** %289, align 8
  %291 = load i32, i32* %10, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i64, i64* %290, i64 %292
  store i64 %287, i64* %293, align 8
  br label %294

294:                                              ; preds = %247
  %295 = load i32, i32* %10, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %10, align 4
  br label %241

297:                                              ; preds = %241
  br label %473

298:                                              ; preds = %210, %207
  %299 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %300 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 8
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %472

303:                                              ; preds = %298
  %304 = load i32*, i32** %6, align 8
  %305 = call i64 @get_bits(i32* %304, i32 1)
  %306 = trunc i64 %305 to i32
  store i32 %306, i32* %17, align 4
  %307 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wl_vlc_tabs, align 8
  %308 = load i32*, i32** %6, align 8
  %309 = call i64 @get_bits(i32* %308, i32 1)
  %310 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %307, i64 %309
  store %struct.TYPE_10__* %310, %struct.TYPE_10__** %20, align 8
  %311 = load i32*, i32** %6, align 8
  %312 = call i64 @get_bits(i32* %311, i32 3)
  %313 = trunc i64 %312 to i32
  store i32 %313, i32* %19, align 4
  %314 = load i32, i32* %19, align 4
  %315 = load i32***, i32**** @atrac3p_wl_shapes, align 8
  %316 = load i32, i32* %19, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32**, i32*** %315, i64 %317
  %319 = load i32**, i32*** %318, align 8
  %320 = load i32*, i32** %6, align 8
  %321 = call i64 @get_bits(i32* %320, i32 4)
  %322 = getelementptr inbounds i32*, i32** %319, i64 %321
  %323 = load i32*, i32** %322, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 0
  %325 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %326 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %325, i32 0, i32 1
  %327 = load i64*, i64** %326, align 8
  %328 = bitcast i64* %327 to i32*
  %329 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %330 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %329, i32 0, i32 2
  %331 = load i32, i32* %330, align 8
  %332 = call i32 @unpack_vq_shape(i32 %314, i32* %324, i32* %328, i32 %331)
  %333 = load i32, i32* %17, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %372, label %335

335:                                              ; preds = %303
  store i32 0, i32* %10, align 4
  br label %336

336:                                              ; preds = %368, %335
  %337 = load i32, i32* %10, align 4
  %338 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %339 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %338, i32 0, i32 2
  %340 = load i32, i32* %339, align 8
  %341 = icmp slt i32 %337, %340
  br i1 %341, label %342, label %371

342:                                              ; preds = %336
  %343 = load i32*, i32** %6, align 8
  %344 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %345 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 4
  %347 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %348 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 4
  %350 = call i32 @get_vlc2(i32* %343, i32 %346, i32 %349, i32 1)
  store i32 %350, i32* %12, align 4
  %351 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %352 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %351, i32 0, i32 1
  %353 = load i64*, i64** %352, align 8
  %354 = load i32, i32* %10, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i64, i64* %353, i64 %355
  %357 = load i64, i64* %356, align 8
  %358 = load i32, i32* %12, align 4
  %359 = sext i32 %358 to i64
  %360 = add i64 %357, %359
  %361 = and i64 %360, 7
  %362 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %363 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %362, i32 0, i32 1
  %364 = load i64*, i64** %363, align 8
  %365 = load i32, i32* %10, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i64, i64* %364, i64 %366
  store i64 %361, i64* %367, align 8
  br label %368

368:                                              ; preds = %342
  %369 = load i32, i32* %10, align 4
  %370 = add nsw i32 %369, 1
  store i32 %370, i32* %10, align 4
  br label %336

371:                                              ; preds = %336
  br label %471

372:                                              ; preds = %303
  store i32 0, i32* %10, align 4
  br label %373

373:                                              ; preds = %436, %372
  %374 = load i32, i32* %10, align 4
  %375 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %376 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %375, i32 0, i32 2
  %377 = load i32, i32* %376, align 8
  %378 = and i32 %377, -2
  %379 = icmp slt i32 %374, %378
  br i1 %379, label %380, label %439

380:                                              ; preds = %373
  %381 = load i32*, i32** %6, align 8
  %382 = call i32 @get_bits1(i32* %381)
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %435, label %384

384:                                              ; preds = %380
  %385 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %386 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %385, i32 0, i32 1
  %387 = load i64*, i64** %386, align 8
  %388 = load i32, i32* %10, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i64, i64* %387, i64 %389
  %391 = load i64, i64* %390, align 8
  %392 = load i32*, i32** %6, align 8
  %393 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %394 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %393, i32 0, i32 1
  %395 = load i32, i32* %394, align 4
  %396 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %397 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 4
  %399 = call i32 @get_vlc2(i32* %392, i32 %395, i32 %398, i32 1)
  %400 = sext i32 %399 to i64
  %401 = add i64 %391, %400
  %402 = and i64 %401, 7
  %403 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %404 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %403, i32 0, i32 1
  %405 = load i64*, i64** %404, align 8
  %406 = load i32, i32* %10, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds i64, i64* %405, i64 %407
  store i64 %402, i64* %408, align 8
  %409 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %410 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %409, i32 0, i32 1
  %411 = load i64*, i64** %410, align 8
  %412 = load i32, i32* %10, align 4
  %413 = add nsw i32 %412, 1
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i64, i64* %411, i64 %414
  %416 = load i64, i64* %415, align 8
  %417 = load i32*, i32** %6, align 8
  %418 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %419 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %418, i32 0, i32 1
  %420 = load i32, i32* %419, align 4
  %421 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %422 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %421, i32 0, i32 0
  %423 = load i32, i32* %422, align 4
  %424 = call i32 @get_vlc2(i32* %417, i32 %420, i32 %423, i32 1)
  %425 = sext i32 %424 to i64
  %426 = add i64 %416, %425
  %427 = and i64 %426, 7
  %428 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %429 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %428, i32 0, i32 1
  %430 = load i64*, i64** %429, align 8
  %431 = load i32, i32* %10, align 4
  %432 = add nsw i32 %431, 1
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds i64, i64* %430, i64 %433
  store i64 %427, i64* %434, align 8
  br label %435

435:                                              ; preds = %384, %380
  br label %436

436:                                              ; preds = %435
  %437 = load i32, i32* %10, align 4
  %438 = add nsw i32 %437, 2
  store i32 %438, i32* %10, align 4
  br label %373

439:                                              ; preds = %373
  %440 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %441 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %440, i32 0, i32 2
  %442 = load i32, i32* %441, align 8
  %443 = and i32 %442, 1
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %445, label %470

445:                                              ; preds = %439
  %446 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %447 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %446, i32 0, i32 1
  %448 = load i64*, i64** %447, align 8
  %449 = load i32, i32* %10, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds i64, i64* %448, i64 %450
  %452 = load i64, i64* %451, align 8
  %453 = load i32*, i32** %6, align 8
  %454 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %455 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %454, i32 0, i32 1
  %456 = load i32, i32* %455, align 4
  %457 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %458 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %457, i32 0, i32 0
  %459 = load i32, i32* %458, align 4
  %460 = call i32 @get_vlc2(i32* %453, i32 %456, i32 %459, i32 1)
  %461 = sext i32 %460 to i64
  %462 = add i64 %452, %461
  %463 = and i64 %462, 7
  %464 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %465 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %464, i32 0, i32 1
  %466 = load i64*, i64** %465, align 8
  %467 = load i32, i32* %10, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds i64, i64* %466, i64 %468
  store i64 %463, i64* %469, align 8
  br label %470

470:                                              ; preds = %445, %439
  br label %471

471:                                              ; preds = %470, %371
  br label %472

472:                                              ; preds = %471, %298
  br label %473

473:                                              ; preds = %472, %297
  br label %540

474:                                              ; preds = %4
  %475 = load i32*, i32** %6, align 8
  %476 = call i64 @get_bits(i32* %475, i32 2)
  %477 = trunc i64 %476 to i32
  store i32 %477, i32* %11, align 4
  %478 = load i32*, i32** %6, align 8
  %479 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %480 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %481 = load i32*, i32** %9, align 8
  %482 = call i32 @num_coded_units(i32* %478, %struct.TYPE_12__* %479, %struct.TYPE_11__* %480, i32* %481)
  store i32 %482, i32* %18, align 4
  %483 = icmp slt i32 %482, 0
  br i1 %483, label %484, label %486

484:                                              ; preds = %474
  %485 = load i32, i32* %18, align 4
  store i32 %485, i32* %5, align 4
  br label %647

486:                                              ; preds = %474
  %487 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %488 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %487, i32 0, i32 2
  %489 = load i32, i32* %488, align 8
  %490 = icmp ne i32 %489, 0
  br i1 %490, label %491, label %539

491:                                              ; preds = %486
  %492 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wl_vlc_tabs, align 8
  %493 = load i32*, i32** %6, align 8
  %494 = call i64 @get_bits(i32* %493, i32 2)
  %495 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %492, i64 %494
  store %struct.TYPE_10__* %495, %struct.TYPE_10__** %20, align 8
  %496 = load i32*, i32** %6, align 8
  %497 = call i64 @get_bits(i32* %496, i32 3)
  %498 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %499 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %498, i32 0, i32 1
  %500 = load i64*, i64** %499, align 8
  %501 = getelementptr inbounds i64, i64* %500, i64 0
  store i64 %497, i64* %501, align 8
  store i32 1, i32* %10, align 4
  br label %502

502:                                              ; preds = %535, %491
  %503 = load i32, i32* %10, align 4
  %504 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %505 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %504, i32 0, i32 2
  %506 = load i32, i32* %505, align 8
  %507 = icmp slt i32 %503, %506
  br i1 %507, label %508, label %538

508:                                              ; preds = %502
  %509 = load i32*, i32** %6, align 8
  %510 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %511 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %510, i32 0, i32 1
  %512 = load i32, i32* %511, align 4
  %513 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %514 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %513, i32 0, i32 0
  %515 = load i32, i32* %514, align 4
  %516 = call i32 @get_vlc2(i32* %509, i32 %512, i32 %515, i32 1)
  store i32 %516, i32* %12, align 4
  %517 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %518 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %517, i32 0, i32 1
  %519 = load i64*, i64** %518, align 8
  %520 = load i32, i32* %10, align 4
  %521 = sub nsw i32 %520, 1
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds i64, i64* %519, i64 %522
  %524 = load i64, i64* %523, align 8
  %525 = load i32, i32* %12, align 4
  %526 = sext i32 %525 to i64
  %527 = add i64 %524, %526
  %528 = and i64 %527, 7
  %529 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %530 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %529, i32 0, i32 1
  %531 = load i64*, i64** %530, align 8
  %532 = load i32, i32* %10, align 4
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds i64, i64* %531, i64 %533
  store i64 %528, i64* %534, align 8
  br label %535

535:                                              ; preds = %508
  %536 = load i32, i32* %10, align 4
  %537 = add nsw i32 %536, 1
  store i32 %537, i32* %10, align 4
  br label %502

538:                                              ; preds = %502
  br label %539

539:                                              ; preds = %538, %486
  br label %540

540:                                              ; preds = %4, %539, %473, %197, %56
  %541 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %542 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %541, i32 0, i32 0
  %543 = load i32, i32* %542, align 8
  %544 = icmp eq i32 %543, 2
  br i1 %544, label %545, label %575

545:                                              ; preds = %540
  %546 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %547 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %546, i32 0, i32 2
  %548 = load i32, i32* %547, align 8
  store i32 %548, i32* %10, align 4
  br label %549

549:                                              ; preds = %571, %545
  %550 = load i32, i32* %10, align 4
  %551 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %552 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %551, i32 0, i32 0
  %553 = load i32, i32* %552, align 8
  %554 = icmp slt i32 %550, %553
  br i1 %554, label %555, label %574

555:                                              ; preds = %549
  %556 = load i32, i32* %8, align 4
  %557 = icmp ne i32 %556, 0
  br i1 %557, label %558, label %561

558:                                              ; preds = %555
  %559 = load i32*, i32** %6, align 8
  %560 = call i32 @get_bits1(i32* %559)
  br label %562

561:                                              ; preds = %555
  br label %562

562:                                              ; preds = %561, %558
  %563 = phi i32 [ %560, %558 ], [ 1, %561 ]
  %564 = sext i32 %563 to i64
  %565 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %566 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %565, i32 0, i32 1
  %567 = load i64*, i64** %566, align 8
  %568 = load i32, i32* %10, align 4
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds i64, i64* %567, i64 %569
  store i64 %564, i64* %570, align 8
  br label %571

571:                                              ; preds = %562
  %572 = load i32, i32* %10, align 4
  %573 = add nsw i32 %572, 1
  store i32 %573, i32* %10, align 4
  br label %549

574:                                              ; preds = %549
  br label %637

575:                                              ; preds = %540
  %576 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %577 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %576, i32 0, i32 0
  %578 = load i32, i32* %577, align 8
  %579 = icmp eq i32 %578, 3
  br i1 %579, label %580, label %636

580:                                              ; preds = %575
  %581 = load i32, i32* %8, align 4
  %582 = icmp ne i32 %581, 0
  br i1 %582, label %583, label %591

583:                                              ; preds = %580
  %584 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %585 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %584, i32 0, i32 2
  %586 = load i32, i32* %585, align 8
  %587 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %588 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %587, i32 0, i32 3
  %589 = load i32, i32* %588, align 4
  %590 = add nsw i32 %586, %589
  br label %599

591:                                              ; preds = %580
  %592 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %593 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %592, i32 0, i32 0
  %594 = load i32, i32* %593, align 8
  %595 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %596 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %595, i32 0, i32 3
  %597 = load i32, i32* %596, align 4
  %598 = sub nsw i32 %594, %597
  br label %599

599:                                              ; preds = %591, %583
  %600 = phi i32 [ %590, %583 ], [ %598, %591 ]
  store i32 %600, i32* %14, align 4
  %601 = load i32, i32* %14, align 4
  %602 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %603 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %602, i32 0, i32 1
  %604 = load i64*, i64** %603, align 8
  %605 = bitcast i64* %604 to i32*
  %606 = call i32 @FF_ARRAY_ELEMS(i32* %605)
  %607 = icmp sgt i32 %601, %606
  br i1 %607, label %608, label %617

608:                                              ; preds = %599
  %609 = load i32*, i32** %9, align 8
  %610 = load i32, i32* @AV_LOG_ERROR, align 4
  %611 = call i32 @av_log(i32* %609, i32 %610, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %612 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %613 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %612, i32 0, i32 1
  %614 = load i64*, i64** %613, align 8
  %615 = bitcast i64* %614 to i32*
  %616 = call i32 @FF_ARRAY_ELEMS(i32* %615)
  store i32 %616, i32* %14, align 4
  br label %617

617:                                              ; preds = %608, %599
  %618 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %619 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %618, i32 0, i32 2
  %620 = load i32, i32* %619, align 8
  store i32 %620, i32* %10, align 4
  br label %621

621:                                              ; preds = %632, %617
  %622 = load i32, i32* %10, align 4
  %623 = load i32, i32* %14, align 4
  %624 = icmp slt i32 %622, %623
  br i1 %624, label %625, label %635

625:                                              ; preds = %621
  %626 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %627 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %626, i32 0, i32 1
  %628 = load i64*, i64** %627, align 8
  %629 = load i32, i32* %10, align 4
  %630 = sext i32 %629 to i64
  %631 = getelementptr inbounds i64, i64* %628, i64 %630
  store i64 1, i64* %631, align 8
  br label %632

632:                                              ; preds = %625
  %633 = load i32, i32* %10, align 4
  %634 = add nsw i32 %633, 1
  store i32 %634, i32* %10, align 4
  br label %621

635:                                              ; preds = %621
  br label %636

636:                                              ; preds = %635, %575
  br label %637

637:                                              ; preds = %636, %574
  %638 = load i32, i32* %11, align 4
  %639 = icmp ne i32 %638, 0
  br i1 %639, label %640, label %646

640:                                              ; preds = %637
  %641 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %642 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %643 = load i32, i32* %11, align 4
  %644 = load i32*, i32** %9, align 8
  %645 = call i32 @add_wordlen_weights(%struct.TYPE_11__* %641, %struct.TYPE_12__* %642, i32 %643, i32* %644)
  store i32 %645, i32* %5, align 4
  br label %647

646:                                              ; preds = %637
  store i32 0, i32* %5, align 4
  br label %647

647:                                              ; preds = %646, %640, %484, %205, %142, %126, %67
  %648 = load i32, i32* %5, align 4
  ret i32 %648
}

declare dso_local i64 @get_bits(i32*, i32) #1

declare dso_local i32 @num_coded_units(i32*, %struct.TYPE_12__*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @get_bitsz(i32*, i32) #1

declare dso_local i32 @unpack_vq_shape(i32, i32*, i32*, i32) #1

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i32 @FF_ARRAY_ELEMS(i32*) #1

declare dso_local i32 @add_wordlen_weights(%struct.TYPE_11__*, %struct.TYPE_12__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

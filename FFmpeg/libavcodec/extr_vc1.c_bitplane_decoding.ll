; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vc1.c_bitplane_decoding.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vc1.c_bitplane_decoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }

@ff_vc1_imode_vlc = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@VC1_IMODE_VLC_BITS = common dso_local global i32 0, align 4
@ff_vc1_norm2_vlc = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@VC1_NORM2_VLC_BITS = common dso_local global i32 0, align 4
@ff_vc1_norm6_vlc = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@VC1_NORM6_VLC_BITS = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"invalid NORM-6 VLC\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_8__*)* @bitplane_decoding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bitplane_decoding(i32* %0, i32* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 3
  store i32* %21, i32** %8, align 8
  %22 = load i32*, i32** %5, align 8
  store i32* %22, i32** %15, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %16, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = ashr i32 %30, %33
  store i32 %34, i32* %17, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %18, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = call i8* @get_bits1(i32* %39)
  %41 = ptrtoint i8* %40 to i32
  store i32 %41, i32* %14, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ff_vc1_imode_vlc, i32 0, i32 0), align 4
  %44 = load i32, i32* @VC1_IMODE_VLC_BITS, align 4
  %45 = call i32 @get_vlc2(i32* %42, i32 %43, i32 %44, i32 1)
  store i32 %45, i32* %9, align 4
  %46 = load i32*, i32** %6, align 8
  store i32 0, i32* %46, align 4
  %47 = load i32, i32* %9, align 4
  switch i32 %47, label %396 [
    i32 129, label %48
    i32 133, label %51
    i32 131, label %51
    i32 132, label %125
    i32 130, label %125
    i32 128, label %378
    i32 134, label %387
  ]

48:                                               ; preds = %3
  %49 = load i32*, i32** %6, align 8
  store i32 1, i32* %49, align 4
  %50 = load i32, i32* %14, align 4
  store i32 %50, i32* %4, align 4
  br label %533

51:                                               ; preds = %3, %3
  %52 = load i32, i32* %17, align 4
  %53 = load i32, i32* %16, align 4
  %54 = mul nsw i32 %52, %53
  %55 = and i32 %54, 1
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %51
  %58 = load i32*, i32** %8, align 8
  %59 = call i8* @get_bits1(i32* %58)
  %60 = ptrtoint i8* %59 to i32
  %61 = load i32*, i32** %15, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %15, align 8
  store i32 %60, i32* %61, align 4
  store i32 1, i32* %13, align 4
  store i32 1, i32* %11, align 4
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %16, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %57
  store i32 0, i32* %13, align 4
  %67 = load i32, i32* %18, align 4
  %68 = load i32, i32* %16, align 4
  %69 = sub nsw i32 %67, %68
  %70 = load i32*, i32** %15, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32* %72, i32** %15, align 8
  br label %73

73:                                               ; preds = %66, %57
  br label %75

74:                                               ; preds = %51
  store i32 0, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %75

75:                                               ; preds = %74, %73
  br label %76

76:                                               ; preds = %121, %75
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %17, align 4
  %79 = load i32, i32* %16, align 4
  %80 = mul nsw i32 %78, %79
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %124

82:                                               ; preds = %76
  %83 = load i32*, i32** %8, align 8
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ff_vc1_norm2_vlc, i32 0, i32 0), align 4
  %85 = load i32, i32* @VC1_NORM2_VLC_BITS, align 4
  %86 = call i32 @get_vlc2(i32* %83, i32 %84, i32 %85, i32 1)
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = and i32 %87, 1
  %89 = load i32*, i32** %15, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %15, align 8
  store i32 %88, i32* %89, align 4
  %91 = load i32, i32* %13, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %16, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %82
  store i32 0, i32* %13, align 4
  %97 = load i32, i32* %18, align 4
  %98 = load i32, i32* %16, align 4
  %99 = sub nsw i32 %97, %98
  %100 = load i32*, i32** %15, align 8
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  store i32* %102, i32** %15, align 8
  br label %103

103:                                              ; preds = %96, %82
  %104 = load i32, i32* %12, align 4
  %105 = ashr i32 %104, 1
  %106 = load i32*, i32** %15, align 8
  %107 = getelementptr inbounds i32, i32* %106, i32 1
  store i32* %107, i32** %15, align 8
  store i32 %105, i32* %106, align 4
  %108 = load i32, i32* %13, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %13, align 4
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* %16, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %120

113:                                              ; preds = %103
  store i32 0, i32* %13, align 4
  %114 = load i32, i32* %18, align 4
  %115 = load i32, i32* %16, align 4
  %116 = sub nsw i32 %114, %115
  %117 = load i32*, i32** %15, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  store i32* %119, i32** %15, align 8
  br label %120

120:                                              ; preds = %113, %103
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %11, align 4
  %123 = add nsw i32 %122, 2
  store i32 %123, i32* %11, align 4
  br label %76

124:                                              ; preds = %76
  br label %397

125:                                              ; preds = %3, %3
  %126 = load i32, i32* %17, align 4
  %127 = srem i32 %126, 3
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %243, label %129

129:                                              ; preds = %125
  %130 = load i32, i32* %16, align 4
  %131 = srem i32 %130, 3
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %243

133:                                              ; preds = %129
  store i32 0, i32* %11, align 4
  br label %134

134:                                              ; preds = %227, %133
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* %17, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %230

138:                                              ; preds = %134
  %139 = load i32, i32* %16, align 4
  %140 = and i32 %139, 1
  store i32 %140, i32* %10, align 4
  br label %141

141:                                              ; preds = %218, %138
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* %16, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %221

145:                                              ; preds = %141
  %146 = load i32*, i32** %8, align 8
  %147 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ff_vc1_norm6_vlc, i32 0, i32 0), align 4
  %148 = load i32, i32* @VC1_NORM6_VLC_BITS, align 4
  %149 = call i32 @get_vlc2(i32* %146, i32 %147, i32 %148, i32 2)
  store i32 %149, i32* %12, align 4
  %150 = load i32, i32* %12, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %145
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @AV_LOG_DEBUG, align 4
  %158 = call i32 @av_log(i32 %156, i32 %157, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %533

159:                                              ; preds = %145
  %160 = load i32, i32* %12, align 4
  %161 = ashr i32 %160, 0
  %162 = and i32 %161, 1
  %163 = load i32*, i32** %15, align 8
  %164 = load i32, i32* %10, align 4
  %165 = add nsw i32 %164, 0
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %163, i64 %166
  store i32 %162, i32* %167, align 4
  %168 = load i32, i32* %12, align 4
  %169 = ashr i32 %168, 1
  %170 = and i32 %169, 1
  %171 = load i32*, i32** %15, align 8
  %172 = load i32, i32* %10, align 4
  %173 = add nsw i32 %172, 1
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %171, i64 %174
  store i32 %170, i32* %175, align 4
  %176 = load i32, i32* %12, align 4
  %177 = ashr i32 %176, 2
  %178 = and i32 %177, 1
  %179 = load i32*, i32** %15, align 8
  %180 = load i32, i32* %10, align 4
  %181 = add nsw i32 %180, 0
  %182 = load i32, i32* %18, align 4
  %183 = add nsw i32 %181, %182
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %179, i64 %184
  store i32 %178, i32* %185, align 4
  %186 = load i32, i32* %12, align 4
  %187 = ashr i32 %186, 3
  %188 = and i32 %187, 1
  %189 = load i32*, i32** %15, align 8
  %190 = load i32, i32* %10, align 4
  %191 = add nsw i32 %190, 1
  %192 = load i32, i32* %18, align 4
  %193 = add nsw i32 %191, %192
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %189, i64 %194
  store i32 %188, i32* %195, align 4
  %196 = load i32, i32* %12, align 4
  %197 = ashr i32 %196, 4
  %198 = and i32 %197, 1
  %199 = load i32*, i32** %15, align 8
  %200 = load i32, i32* %10, align 4
  %201 = add nsw i32 %200, 0
  %202 = load i32, i32* %18, align 4
  %203 = mul nsw i32 %202, 2
  %204 = add nsw i32 %201, %203
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %199, i64 %205
  store i32 %198, i32* %206, align 4
  %207 = load i32, i32* %12, align 4
  %208 = ashr i32 %207, 5
  %209 = and i32 %208, 1
  %210 = load i32*, i32** %15, align 8
  %211 = load i32, i32* %10, align 4
  %212 = add nsw i32 %211, 1
  %213 = load i32, i32* %18, align 4
  %214 = mul nsw i32 %213, 2
  %215 = add nsw i32 %212, %214
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %210, i64 %216
  store i32 %209, i32* %217, align 4
  br label %218

218:                                              ; preds = %159
  %219 = load i32, i32* %10, align 4
  %220 = add nsw i32 %219, 2
  store i32 %220, i32* %10, align 4
  br label %141

221:                                              ; preds = %141
  %222 = load i32, i32* %18, align 4
  %223 = mul nsw i32 %222, 3
  %224 = load i32*, i32** %15, align 8
  %225 = sext i32 %223 to i64
  %226 = getelementptr inbounds i32, i32* %224, i64 %225
  store i32* %226, i32** %15, align 8
  br label %227

227:                                              ; preds = %221
  %228 = load i32, i32* %11, align 4
  %229 = add nsw i32 %228, 3
  store i32 %229, i32* %11, align 4
  br label %134

230:                                              ; preds = %134
  %231 = load i32, i32* %16, align 4
  %232 = and i32 %231, 1
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %242

234:                                              ; preds = %230
  %235 = load i32*, i32** %5, align 8
  %236 = load i32, i32* %17, align 4
  %237 = load i32, i32* %18, align 4
  %238 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 3
  %241 = call i32 @decode_colskip(i32* %235, i32 1, i32 %236, i32 %237, i32* %240)
  br label %242

242:                                              ; preds = %234, %230
  br label %377

243:                                              ; preds = %129, %125
  %244 = load i32, i32* %17, align 4
  %245 = and i32 %244, 1
  %246 = load i32, i32* %18, align 4
  %247 = mul nsw i32 %245, %246
  %248 = load i32*, i32** %15, align 8
  %249 = sext i32 %247 to i64
  %250 = getelementptr inbounds i32, i32* %248, i64 %249
  store i32* %250, i32** %15, align 8
  %251 = load i32, i32* %17, align 4
  %252 = and i32 %251, 1
  store i32 %252, i32* %11, align 4
  br label %253

253:                                              ; preds = %342, %243
  %254 = load i32, i32* %11, align 4
  %255 = load i32, i32* %17, align 4
  %256 = icmp slt i32 %254, %255
  br i1 %256, label %257, label %345

257:                                              ; preds = %253
  %258 = load i32, i32* %16, align 4
  %259 = srem i32 %258, 3
  store i32 %259, i32* %10, align 4
  br label %260

260:                                              ; preds = %333, %257
  %261 = load i32, i32* %10, align 4
  %262 = load i32, i32* %16, align 4
  %263 = icmp slt i32 %261, %262
  br i1 %263, label %264, label %336

264:                                              ; preds = %260
  %265 = load i32*, i32** %8, align 8
  %266 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ff_vc1_norm6_vlc, i32 0, i32 0), align 4
  %267 = load i32, i32* @VC1_NORM6_VLC_BITS, align 4
  %268 = call i32 @get_vlc2(i32* %265, i32 %266, i32 %267, i32 2)
  store i32 %268, i32* %12, align 4
  %269 = load i32, i32* %12, align 4
  %270 = icmp slt i32 %269, 0
  br i1 %270, label %271, label %278

271:                                              ; preds = %264
  %272 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %273, i32 0, i32 4
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* @AV_LOG_DEBUG, align 4
  %277 = call i32 @av_log(i32 %275, i32 %276, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %533

278:                                              ; preds = %264
  %279 = load i32, i32* %12, align 4
  %280 = ashr i32 %279, 0
  %281 = and i32 %280, 1
  %282 = load i32*, i32** %15, align 8
  %283 = load i32, i32* %10, align 4
  %284 = add nsw i32 %283, 0
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %282, i64 %285
  store i32 %281, i32* %286, align 4
  %287 = load i32, i32* %12, align 4
  %288 = ashr i32 %287, 1
  %289 = and i32 %288, 1
  %290 = load i32*, i32** %15, align 8
  %291 = load i32, i32* %10, align 4
  %292 = add nsw i32 %291, 1
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %290, i64 %293
  store i32 %289, i32* %294, align 4
  %295 = load i32, i32* %12, align 4
  %296 = ashr i32 %295, 2
  %297 = and i32 %296, 1
  %298 = load i32*, i32** %15, align 8
  %299 = load i32, i32* %10, align 4
  %300 = add nsw i32 %299, 2
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %298, i64 %301
  store i32 %297, i32* %302, align 4
  %303 = load i32, i32* %12, align 4
  %304 = ashr i32 %303, 3
  %305 = and i32 %304, 1
  %306 = load i32*, i32** %15, align 8
  %307 = load i32, i32* %10, align 4
  %308 = add nsw i32 %307, 0
  %309 = load i32, i32* %18, align 4
  %310 = add nsw i32 %308, %309
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32, i32* %306, i64 %311
  store i32 %305, i32* %312, align 4
  %313 = load i32, i32* %12, align 4
  %314 = ashr i32 %313, 4
  %315 = and i32 %314, 1
  %316 = load i32*, i32** %15, align 8
  %317 = load i32, i32* %10, align 4
  %318 = add nsw i32 %317, 1
  %319 = load i32, i32* %18, align 4
  %320 = add nsw i32 %318, %319
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32, i32* %316, i64 %321
  store i32 %315, i32* %322, align 4
  %323 = load i32, i32* %12, align 4
  %324 = ashr i32 %323, 5
  %325 = and i32 %324, 1
  %326 = load i32*, i32** %15, align 8
  %327 = load i32, i32* %10, align 4
  %328 = add nsw i32 %327, 2
  %329 = load i32, i32* %18, align 4
  %330 = add nsw i32 %328, %329
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32, i32* %326, i64 %331
  store i32 %325, i32* %332, align 4
  br label %333

333:                                              ; preds = %278
  %334 = load i32, i32* %10, align 4
  %335 = add nsw i32 %334, 3
  store i32 %335, i32* %10, align 4
  br label %260

336:                                              ; preds = %260
  %337 = load i32, i32* %18, align 4
  %338 = mul nsw i32 %337, 2
  %339 = load i32*, i32** %15, align 8
  %340 = sext i32 %338 to i64
  %341 = getelementptr inbounds i32, i32* %339, i64 %340
  store i32* %341, i32** %15, align 8
  br label %342

342:                                              ; preds = %336
  %343 = load i32, i32* %11, align 4
  %344 = add nsw i32 %343, 2
  store i32 %344, i32* %11, align 4
  br label %253

345:                                              ; preds = %253
  %346 = load i32, i32* %16, align 4
  %347 = srem i32 %346, 3
  store i32 %347, i32* %10, align 4
  %348 = load i32, i32* %10, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %359

350:                                              ; preds = %345
  %351 = load i32*, i32** %5, align 8
  %352 = load i32, i32* %10, align 4
  %353 = load i32, i32* %17, align 4
  %354 = load i32, i32* %18, align 4
  %355 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %356 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %355, i32 0, i32 1
  %357 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %356, i32 0, i32 3
  %358 = call i32 @decode_colskip(i32* %351, i32 %352, i32 %353, i32 %354, i32* %357)
  br label %359

359:                                              ; preds = %350, %345
  %360 = load i32, i32* %17, align 4
  %361 = and i32 %360, 1
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %376

363:                                              ; preds = %359
  %364 = load i32*, i32** %5, align 8
  %365 = load i32, i32* %10, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i32, i32* %364, i64 %366
  %368 = load i32, i32* %16, align 4
  %369 = load i32, i32* %10, align 4
  %370 = sub nsw i32 %368, %369
  %371 = load i32, i32* %18, align 4
  %372 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %373 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %372, i32 0, i32 1
  %374 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %373, i32 0, i32 3
  %375 = call i32 @decode_rowskip(i32* %367, i32 %370, i32 1, i32 %371, i32* %374)
  br label %376

376:                                              ; preds = %363, %359
  br label %377

377:                                              ; preds = %376, %242
  br label %397

378:                                              ; preds = %3
  %379 = load i32*, i32** %5, align 8
  %380 = load i32, i32* %16, align 4
  %381 = load i32, i32* %17, align 4
  %382 = load i32, i32* %18, align 4
  %383 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %384 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %383, i32 0, i32 1
  %385 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %384, i32 0, i32 3
  %386 = call i32 @decode_rowskip(i32* %379, i32 %380, i32 %381, i32 %382, i32* %385)
  br label %397

387:                                              ; preds = %3
  %388 = load i32*, i32** %5, align 8
  %389 = load i32, i32* %16, align 4
  %390 = load i32, i32* %17, align 4
  %391 = load i32, i32* %18, align 4
  %392 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %393 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %392, i32 0, i32 1
  %394 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %393, i32 0, i32 3
  %395 = call i32 @decode_colskip(i32* %388, i32 %389, i32 %390, i32 %391, i32* %394)
  br label %397

396:                                              ; preds = %3
  br label %397

397:                                              ; preds = %396, %387, %378, %377, %124
  %398 = load i32, i32* %9, align 4
  %399 = icmp eq i32 %398, 133
  br i1 %399, label %403, label %400

400:                                              ; preds = %397
  %401 = load i32, i32* %9, align 4
  %402 = icmp eq i32 %401, 132
  br i1 %402, label %403, label %499

403:                                              ; preds = %400, %397
  %404 = load i32*, i32** %5, align 8
  store i32* %404, i32** %15, align 8
  %405 = load i32, i32* %14, align 4
  %406 = load i32*, i32** %15, align 8
  %407 = getelementptr inbounds i32, i32* %406, i64 0
  %408 = load i32, i32* %407, align 4
  %409 = xor i32 %408, %405
  store i32 %409, i32* %407, align 4
  store i32 1, i32* %10, align 4
  br label %410

410:                                              ; preds = %427, %403
  %411 = load i32, i32* %10, align 4
  %412 = load i32, i32* %16, align 4
  %413 = icmp slt i32 %411, %412
  br i1 %413, label %414, label %430

414:                                              ; preds = %410
  %415 = load i32*, i32** %15, align 8
  %416 = load i32, i32* %10, align 4
  %417 = sub nsw i32 %416, 1
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i32, i32* %415, i64 %418
  %420 = load i32, i32* %419, align 4
  %421 = load i32*, i32** %15, align 8
  %422 = load i32, i32* %10, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds i32, i32* %421, i64 %423
  %425 = load i32, i32* %424, align 4
  %426 = xor i32 %425, %420
  store i32 %426, i32* %424, align 4
  br label %427

427:                                              ; preds = %414
  %428 = load i32, i32* %10, align 4
  %429 = add nsw i32 %428, 1
  store i32 %429, i32* %10, align 4
  br label %410

430:                                              ; preds = %410
  store i32 1, i32* %11, align 4
  br label %431

431:                                              ; preds = %495, %430
  %432 = load i32, i32* %11, align 4
  %433 = load i32, i32* %17, align 4
  %434 = icmp slt i32 %432, %433
  br i1 %434, label %435, label %498

435:                                              ; preds = %431
  %436 = load i32, i32* %18, align 4
  %437 = load i32*, i32** %15, align 8
  %438 = sext i32 %436 to i64
  %439 = getelementptr inbounds i32, i32* %437, i64 %438
  store i32* %439, i32** %15, align 8
  %440 = load i32*, i32** %15, align 8
  %441 = load i32, i32* %18, align 4
  %442 = sub nsw i32 0, %441
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds i32, i32* %440, i64 %443
  %445 = load i32, i32* %444, align 4
  %446 = load i32*, i32** %15, align 8
  %447 = getelementptr inbounds i32, i32* %446, i64 0
  %448 = load i32, i32* %447, align 4
  %449 = xor i32 %448, %445
  store i32 %449, i32* %447, align 4
  store i32 1, i32* %10, align 4
  br label %450

450:                                              ; preds = %491, %435
  %451 = load i32, i32* %10, align 4
  %452 = load i32, i32* %16, align 4
  %453 = icmp slt i32 %451, %452
  br i1 %453, label %454, label %494

454:                                              ; preds = %450
  %455 = load i32*, i32** %15, align 8
  %456 = load i32, i32* %10, align 4
  %457 = sub nsw i32 %456, 1
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds i32, i32* %455, i64 %458
  %460 = load i32, i32* %459, align 4
  %461 = load i32*, i32** %15, align 8
  %462 = load i32, i32* %10, align 4
  %463 = load i32, i32* %18, align 4
  %464 = sub nsw i32 %462, %463
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds i32, i32* %461, i64 %465
  %467 = load i32, i32* %466, align 4
  %468 = icmp ne i32 %460, %467
  br i1 %468, label %469, label %477

469:                                              ; preds = %454
  %470 = load i32, i32* %14, align 4
  %471 = load i32*, i32** %15, align 8
  %472 = load i32, i32* %10, align 4
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds i32, i32* %471, i64 %473
  %475 = load i32, i32* %474, align 4
  %476 = xor i32 %475, %470
  store i32 %476, i32* %474, align 4
  br label %490

477:                                              ; preds = %454
  %478 = load i32*, i32** %15, align 8
  %479 = load i32, i32* %10, align 4
  %480 = sub nsw i32 %479, 1
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds i32, i32* %478, i64 %481
  %483 = load i32, i32* %482, align 4
  %484 = load i32*, i32** %15, align 8
  %485 = load i32, i32* %10, align 4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds i32, i32* %484, i64 %486
  %488 = load i32, i32* %487, align 4
  %489 = xor i32 %488, %483
  store i32 %489, i32* %487, align 4
  br label %490

490:                                              ; preds = %477, %469
  br label %491

491:                                              ; preds = %490
  %492 = load i32, i32* %10, align 4
  %493 = add nsw i32 %492, 1
  store i32 %493, i32* %10, align 4
  br label %450

494:                                              ; preds = %450
  br label %495

495:                                              ; preds = %494
  %496 = load i32, i32* %11, align 4
  %497 = add nsw i32 %496, 1
  store i32 %497, i32* %11, align 4
  br label %431

498:                                              ; preds = %431
  br label %528

499:                                              ; preds = %400
  %500 = load i32, i32* %14, align 4
  %501 = icmp ne i32 %500, 0
  br i1 %501, label %502, label %527

502:                                              ; preds = %499
  %503 = load i32*, i32** %5, align 8
  store i32* %503, i32** %15, align 8
  store i32 0, i32* %10, align 4
  br label %504

504:                                              ; preds = %523, %502
  %505 = load i32, i32* %10, align 4
  %506 = load i32, i32* %18, align 4
  %507 = load i32, i32* %17, align 4
  %508 = mul nsw i32 %506, %507
  %509 = icmp slt i32 %505, %508
  br i1 %509, label %510, label %526

510:                                              ; preds = %504
  %511 = load i32*, i32** %15, align 8
  %512 = load i32, i32* %10, align 4
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds i32, i32* %511, i64 %513
  %515 = load i32, i32* %514, align 4
  %516 = icmp ne i32 %515, 0
  %517 = xor i1 %516, true
  %518 = zext i1 %517 to i32
  %519 = load i32*, i32** %15, align 8
  %520 = load i32, i32* %10, align 4
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds i32, i32* %519, i64 %521
  store i32 %518, i32* %522, align 4
  br label %523

523:                                              ; preds = %510
  %524 = load i32, i32* %10, align 4
  %525 = add nsw i32 %524, 1
  store i32 %525, i32* %10, align 4
  br label %504

526:                                              ; preds = %504
  br label %527

527:                                              ; preds = %526, %499
  br label %528

528:                                              ; preds = %527, %498
  %529 = load i32, i32* %9, align 4
  %530 = shl i32 %529, 1
  %531 = load i32, i32* %14, align 4
  %532 = add nsw i32 %530, %531
  store i32 %532, i32* %4, align 4
  br label %533

533:                                              ; preds = %528, %271, %152, %48
  %534 = load i32, i32* %4, align 4
  ret i32 %534
}

declare dso_local i8* @get_bits1(i32*) #1

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local i32 @decode_colskip(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @decode_rowskip(i32*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

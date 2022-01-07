; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmaprodec.c_decode_scale_factors.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmaprodec.c_decode_scale_factors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32*, i32, i64, %struct.TYPE_6__*, i32, i32, i32*** }
%struct.TYPE_6__ = type { i32*, i32**, i64, i32, i64, i32, i32, i32 }

@sf_vlc = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@SCALEVLCBITS = common dso_local global i32 0, align 4
@SCALEMAXDEPTH = common dso_local global i32 0, align 4
@sf_rl_vlc = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@VLCBITS = common dso_local global i32 0, align 4
@SCALERLMAXDEPTH = common dso_local global i32 0, align 4
@scale_rl_run = common dso_local global i32* null, align 8
@scale_rl_level = common dso_local global i32* null, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"invalid scale factor coding\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @decode_scale_factors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_scale_factors(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %401, %1
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %404

23:                                               ; preds = %17
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %5, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32**, i32*** %37, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32*, i32** %38, i64 %50
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i32* %52, i32** %59, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %67, i64 %71
  store i32* %72, i32** %7, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 4
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %147

82:                                               ; preds = %23
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 7
  %85 = load i32***, i32**** %84, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds i32**, i32*** %85, i64 %88
  %90 = load i32**, i32*** %89, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 4
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds i32*, i32** %90, i64 %98
  %100 = load i32*, i32** %99, align 8
  store i32* %100, i32** %8, align 8
  store i32 0, i32* %9, align 4
  br label %101

101:                                              ; preds = %143, %82
  %102 = load i32, i32* %9, align 4
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = icmp slt i32 %102, %105
  br i1 %106, label %107, label %146

107:                                              ; preds = %101
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 4
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load i32**, i32*** %114, align 8
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 4
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = load i32, i32* %5, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds i32*, i32** %115, i64 %123
  %125 = load i32*, i32** %124, align 8
  %126 = load i32*, i32** %8, align 8
  %127 = getelementptr inbounds i32, i32* %126, i32 1
  store i32* %127, i32** %8, align 8
  %128 = load i32, i32* %126, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %125, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 4
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = load i32, i32* %5, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %9, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  store i32 %131, i32* %142, align 4
  br label %143

143:                                              ; preds = %107
  %144 = load i32, i32* %9, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %9, align 4
  br label %101

146:                                              ; preds = %101
  br label %147

147:                                              ; preds = %146, %23
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 4
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = load i32, i32* %5, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 7
  %155 = load i32, i32* %154, align 8
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %147
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 6
  %160 = call i32 @get_bits1(i32* %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %347

162:                                              ; preds = %157, %147
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 4
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %164, align 8
  %166 = load i32, i32* %5, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %222, label %172

172:                                              ; preds = %162
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 6
  %175 = call i8* @get_bits(i32* %174, i32 2)
  %176 = getelementptr i8, i8* %175, i64 1
  %177 = ptrtoint i8* %176 to i32
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 4
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %179, align 8
  %181 = load i32, i32* %5, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 5
  store i32 %177, i32* %184, align 8
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 4
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %186, align 8
  %188 = load i32, i32* %5, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 5
  %192 = load i32, i32* %191, align 8
  %193 = sdiv i32 45, %192
  store i32 %193, i32* %10, align 4
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 4
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %195, align 8
  %197 = load i32, i32* %5, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  %201 = load i32*, i32** %200, align 8
  store i32* %201, i32** %6, align 8
  br label %202

202:                                              ; preds = %218, %172
  %203 = load i32*, i32** %6, align 8
  %204 = load i32*, i32** %7, align 8
  %205 = icmp ult i32* %203, %204
  br i1 %205, label %206, label %221

206:                                              ; preds = %202
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 6
  %209 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sf_vlc, i32 0, i32 0), align 4
  %210 = load i32, i32* @SCALEVLCBITS, align 4
  %211 = load i32, i32* @SCALEMAXDEPTH, align 4
  %212 = call i32 @get_vlc2(i32* %208, i32 %209, i32 %210, i32 %211)
  %213 = sub nsw i32 %212, 60
  %214 = load i32, i32* %10, align 4
  %215 = add nsw i32 %214, %213
  store i32 %215, i32* %10, align 4
  %216 = load i32, i32* %10, align 4
  %217 = load i32*, i32** %6, align 8
  store i32 %216, i32* %217, align 4
  br label %218

218:                                              ; preds = %206
  %219 = load i32*, i32** %6, align 8
  %220 = getelementptr inbounds i32, i32* %219, i32 1
  store i32* %220, i32** %6, align 8
  br label %202

221:                                              ; preds = %202
  br label %310

222:                                              ; preds = %162
  store i32 0, i32* %11, align 4
  br label %223

223:                                              ; preds = %306, %222
  %224 = load i32, i32* %11, align 4
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = icmp slt i32 %224, %227
  br i1 %228, label %229, label %309

229:                                              ; preds = %223
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 6
  %232 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sf_rl_vlc, i32 0, i32 0), align 4
  %233 = load i32, i32* @VLCBITS, align 4
  %234 = load i32, i32* @SCALERLMAXDEPTH, align 4
  %235 = call i32 @get_vlc2(i32* %231, i32 %232, i32 %233, i32 %234)
  store i32 %235, i32* %12, align 4
  %236 = load i32, i32* %12, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %251, label %238

238:                                              ; preds = %229
  %239 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 6
  %241 = call i8* @get_bits(i32* %240, i32 14)
  %242 = ptrtoint i8* %241 to i32
  store i32 %242, i32* %16, align 4
  %243 = load i32, i32* %16, align 4
  %244 = ashr i32 %243, 6
  store i32 %244, i32* %14, align 4
  %245 = load i32, i32* %16, align 4
  %246 = and i32 %245, 1
  %247 = sub nsw i32 %246, 1
  store i32 %247, i32* %15, align 4
  %248 = load i32, i32* %16, align 4
  %249 = and i32 %248, 63
  %250 = ashr i32 %249, 1
  store i32 %250, i32* %13, align 4
  br label %271

251:                                              ; preds = %229
  %252 = load i32, i32* %12, align 4
  %253 = icmp eq i32 %252, 1
  br i1 %253, label %254, label %255

254:                                              ; preds = %251
  br label %309

255:                                              ; preds = %251
  %256 = load i32*, i32** @scale_rl_run, align 8
  %257 = load i32, i32* %12, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %256, i64 %258
  %260 = load i32, i32* %259, align 4
  store i32 %260, i32* %13, align 4
  %261 = load i32*, i32** @scale_rl_level, align 8
  %262 = load i32, i32* %12, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %261, i64 %263
  %265 = load i32, i32* %264, align 4
  store i32 %265, i32* %14, align 4
  %266 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %266, i32 0, i32 6
  %268 = call i32 @get_bits1(i32* %267)
  %269 = sub nsw i32 %268, 1
  store i32 %269, i32* %15, align 4
  br label %270

270:                                              ; preds = %255
  br label %271

271:                                              ; preds = %270, %238
  %272 = load i32, i32* %13, align 4
  %273 = load i32, i32* %11, align 4
  %274 = add nsw i32 %273, %272
  store i32 %274, i32* %11, align 4
  %275 = load i32, i32* %11, align 4
  %276 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %277 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 8
  %279 = icmp sge i32 %275, %278
  br i1 %279, label %280, label %287

280:                                              ; preds = %271
  %281 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %282 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %281, i32 0, i32 5
  %283 = load i32, i32* %282, align 8
  %284 = load i32, i32* @AV_LOG_ERROR, align 4
  %285 = call i32 @av_log(i32 %283, i32 %284, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %286 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %286, i32* %2, align 4
  br label %405

287:                                              ; preds = %271
  %288 = load i32, i32* %14, align 4
  %289 = load i32, i32* %15, align 4
  %290 = xor i32 %288, %289
  %291 = load i32, i32* %15, align 4
  %292 = sub nsw i32 %290, %291
  %293 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %294 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %293, i32 0, i32 4
  %295 = load %struct.TYPE_6__*, %struct.TYPE_6__** %294, align 8
  %296 = load i32, i32* %5, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %295, i64 %297
  %299 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %298, i32 0, i32 0
  %300 = load i32*, i32** %299, align 8
  %301 = load i32, i32* %11, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %300, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = add nsw i32 %304, %292
  store i32 %305, i32* %303, align 4
  br label %306

306:                                              ; preds = %287
  %307 = load i32, i32* %11, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %11, align 4
  br label %223

309:                                              ; preds = %254, %223
  br label %310

310:                                              ; preds = %309, %221
  %311 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %312 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %311, i32 0, i32 4
  %313 = load %struct.TYPE_6__*, %struct.TYPE_6__** %312, align 8
  %314 = load i32, i32* %5, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %313, i64 %315
  %317 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %316, i32 0, i32 2
  %318 = load i64, i64* %317, align 8
  %319 = icmp ne i64 %318, 0
  %320 = xor i1 %319, true
  %321 = zext i1 %320 to i32
  %322 = sext i32 %321 to i64
  %323 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %324 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %323, i32 0, i32 4
  %325 = load %struct.TYPE_6__*, %struct.TYPE_6__** %324, align 8
  %326 = load i32, i32* %5, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %325, i64 %327
  %329 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %328, i32 0, i32 2
  store i64 %322, i64* %329, align 8
  %330 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %331 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %330, i32 0, i32 3
  %332 = load i64, i64* %331, align 8
  %333 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %334 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %333, i32 0, i32 4
  %335 = load %struct.TYPE_6__*, %struct.TYPE_6__** %334, align 8
  %336 = load i32, i32* %5, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %335, i64 %337
  %339 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %338, i32 0, i32 4
  store i64 %332, i64* %339, align 8
  %340 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %341 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %340, i32 0, i32 4
  %342 = load %struct.TYPE_6__*, %struct.TYPE_6__** %341, align 8
  %343 = load i32, i32* %5, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %342, i64 %344
  %346 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %345, i32 0, i32 3
  store i32 1, i32* %346, align 8
  br label %347

347:                                              ; preds = %310, %157
  %348 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %349 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %348, i32 0, i32 4
  %350 = load %struct.TYPE_6__*, %struct.TYPE_6__** %349, align 8
  %351 = load i32, i32* %5, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %350, i64 %352
  %354 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %353, i32 0, i32 0
  %355 = load i32*, i32** %354, align 8
  %356 = getelementptr inbounds i32, i32* %355, i64 0
  %357 = load i32, i32* %356, align 4
  %358 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %359 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %358, i32 0, i32 4
  %360 = load %struct.TYPE_6__*, %struct.TYPE_6__** %359, align 8
  %361 = load i32, i32* %5, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %360, i64 %362
  %364 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %363, i32 0, i32 6
  store i32 %357, i32* %364, align 4
  %365 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %366 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %365, i32 0, i32 4
  %367 = load %struct.TYPE_6__*, %struct.TYPE_6__** %366, align 8
  %368 = load i32, i32* %5, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %367, i64 %369
  %371 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %370, i32 0, i32 0
  %372 = load i32*, i32** %371, align 8
  %373 = getelementptr inbounds i32, i32* %372, i64 1
  store i32* %373, i32** %6, align 8
  br label %374

374:                                              ; preds = %397, %347
  %375 = load i32*, i32** %6, align 8
  %376 = load i32*, i32** %7, align 8
  %377 = icmp ult i32* %375, %376
  br i1 %377, label %378, label %400

378:                                              ; preds = %374
  %379 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %380 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %379, i32 0, i32 4
  %381 = load %struct.TYPE_6__*, %struct.TYPE_6__** %380, align 8
  %382 = load i32, i32* %5, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %381, i64 %383
  %385 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %384, i32 0, i32 6
  %386 = load i32, i32* %385, align 4
  %387 = load i32*, i32** %6, align 8
  %388 = load i32, i32* %387, align 4
  %389 = call i32 @FFMAX(i32 %386, i32 %388)
  %390 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %391 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %390, i32 0, i32 4
  %392 = load %struct.TYPE_6__*, %struct.TYPE_6__** %391, align 8
  %393 = load i32, i32* %5, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %392, i64 %394
  %396 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %395, i32 0, i32 6
  store i32 %389, i32* %396, align 4
  br label %397

397:                                              ; preds = %378
  %398 = load i32*, i32** %6, align 8
  %399 = getelementptr inbounds i32, i32* %398, i32 1
  store i32* %399, i32** %6, align 8
  br label %374

400:                                              ; preds = %374
  br label %401

401:                                              ; preds = %400
  %402 = load i32, i32* %4, align 4
  %403 = add nsw i32 %402, 1
  store i32 %403, i32* %4, align 4
  br label %17

404:                                              ; preds = %17
  store i32 0, i32* %2, align 4
  br label %405

405:                                              ; preds = %404, %280
  %406 = load i32, i32* %2, align 4
  ret i32 %406
}

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i8* @get_bits(i32*, i32) #1

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local i32 @FFMAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

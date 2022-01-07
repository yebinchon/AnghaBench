; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg4video.c_ff_mpeg4_set_direct_mv.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg4video.c_ff_mpeg4_set_direct_mv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32**, i32, i32, i32***, i32****, i8*, i32, %struct.TYPE_6__*, i64, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32*, i32** }

@MV_TYPE_8X8 = common dso_local global i8* null, align 8
@MB_TYPE_DIRECT2 = common dso_local global i32 0, align 4
@MB_TYPE_8x8 = common dso_local global i32 0, align 4
@MB_TYPE_L0L1 = common dso_local global i32 0, align 4
@MV_TYPE_FIELD = common dso_local global i8* null, align 8
@MB_TYPE_16x8 = common dso_local global i32 0, align 4
@MB_TYPE_INTERLACED = common dso_local global i32 0, align 4
@FF_BUG_DIRECT_BLOCKSIZE = common dso_local global i32 0, align 4
@MV_TYPE_16X16 = common dso_local global i8* null, align 8
@MB_TYPE_16x16 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_mpeg4_set_direct_mv(%struct.TYPE_8__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = mul nsw i32 %19, %22
  %24 = add nsw i32 %16, %23
  store i32 %24, i32* %8, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 12
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i64 @IS_8X8(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %58

36:                                               ; preds = %3
  %37 = load i8*, i8** @MV_TYPE_8X8, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 8
  store i8* %37, i8** %39, align 8
  store i32 0, i32* %12, align 4
  br label %40

40:                                               ; preds = %49, %36
  %41 = load i32, i32* %12, align 4
  %42 = icmp slt i32 %41, 4
  br i1 %42, label %43, label %52

43:                                               ; preds = %40
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @ff_mpeg4_set_one_direct_mv(%struct.TYPE_8__* %44, i32 %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %43
  %50 = load i32, i32* %12, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %12, align 4
  br label %40

52:                                               ; preds = %40
  %53 = load i32, i32* @MB_TYPE_DIRECT2, align 4
  %54 = load i32, i32* @MB_TYPE_8x8, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @MB_TYPE_L0L1, align 4
  %57 = or i32 %55, %56
  store i32 %57, i32* %4, align 4
  br label %502

58:                                               ; preds = %3
  %59 = load i32, i32* %9, align 4
  %60 = call i64 @IS_INTERLACED(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %338

62:                                               ; preds = %58
  %63 = load i8*, i8** @MV_TYPE_FIELD, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 8
  store i8* %63, i8** %65, align 8
  store i32 0, i32* %12, align 4
  br label %66

66:                                               ; preds = %327, %62
  %67 = load i32, i32* %12, align 4
  %68 = icmp slt i32 %67, 2
  br i1 %68, label %69, label %330

69:                                               ; preds = %66
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 12
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load i32**, i32*** %72, align 8
  %74 = getelementptr inbounds i32*, i32** %73, i64 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = mul nsw i32 4, %76
  %78 = load i32, i32* %12, align 4
  %79 = mul nsw i32 2, %78
  %80 = add nsw i32 %77, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %75, i64 %81
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %13, align 4
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 3
  %87 = load i32**, i32*** %86, align 8
  %88 = getelementptr inbounds i32*, i32** %87, i64 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 %84, i32* %92, align 4
  %93 = load i32, i32* %12, align 4
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 3
  %96 = load i32**, i32*** %95, align 8
  %97 = getelementptr inbounds i32*, i32** %96, i64 1
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  store i32 %93, i32* %101, align 4
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 11
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %121

106:                                              ; preds = %69
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %13, align 4
  %111 = sub nsw i32 %109, %110
  %112 = load i32, i32* %12, align 4
  %113 = add nsw i32 %111, %112
  store i32 %113, i32* %10, align 4
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %13, align 4
  %118 = sub nsw i32 %116, %117
  %119 = load i32, i32* %12, align 4
  %120 = add nsw i32 %118, %119
  store i32 %120, i32* %11, align 4
  br label %136

121:                                              ; preds = %69
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %13, align 4
  %126 = add nsw i32 %124, %125
  %127 = load i32, i32* %12, align 4
  %128 = sub nsw i32 %126, %127
  store i32 %128, i32* %10, align 4
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %13, align 4
  %133 = add nsw i32 %131, %132
  %134 = load i32, i32* %12, align 4
  %135 = sub nsw i32 %133, %134
  store i32 %135, i32* %11, align 4
  br label %136

136:                                              ; preds = %121, %106
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 7
  %139 = load i32****, i32***** %138, align 8
  %140 = load i32, i32* %12, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32***, i32**** %139, i64 %141
  %143 = load i32***, i32**** %142, align 8
  %144 = getelementptr inbounds i32**, i32*** %143, i64 0
  %145 = load i32**, i32*** %144, align 8
  %146 = load i32, i32* %8, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32*, i32** %145, i64 %147
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %11, align 4
  %153 = mul nsw i32 %151, %152
  %154 = load i32, i32* %10, align 4
  %155 = sdiv i32 %153, %154
  %156 = load i32, i32* %6, align 4
  %157 = add nsw i32 %155, %156
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 6
  %160 = load i32***, i32**** %159, align 8
  %161 = getelementptr inbounds i32**, i32*** %160, i64 0
  %162 = load i32**, i32*** %161, align 8
  %163 = load i32, i32* %12, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32*, i32** %162, i64 %164
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  store i32 %157, i32* %167, align 4
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 7
  %170 = load i32****, i32***** %169, align 8
  %171 = load i32, i32* %12, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32***, i32**** %170, i64 %172
  %174 = load i32***, i32**** %173, align 8
  %175 = getelementptr inbounds i32**, i32*** %174, i64 0
  %176 = load i32**, i32*** %175, align 8
  %177 = load i32, i32* %8, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32*, i32** %176, i64 %178
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 1
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* %11, align 4
  %184 = mul nsw i32 %182, %183
  %185 = load i32, i32* %10, align 4
  %186 = sdiv i32 %184, %185
  %187 = load i32, i32* %7, align 4
  %188 = add nsw i32 %186, %187
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 6
  %191 = load i32***, i32**** %190, align 8
  %192 = getelementptr inbounds i32**, i32*** %191, i64 0
  %193 = load i32**, i32*** %192, align 8
  %194 = load i32, i32* %12, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32*, i32** %193, i64 %195
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 1
  store i32 %188, i32* %198, align 4
  %199 = load i32, i32* %6, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %229

201:                                              ; preds = %136
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 6
  %204 = load i32***, i32**** %203, align 8
  %205 = getelementptr inbounds i32**, i32*** %204, i64 0
  %206 = load i32**, i32*** %205, align 8
  %207 = load i32, i32* %12, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32*, i32** %206, i64 %208
  %210 = load i32*, i32** %209, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 0
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 7
  %215 = load i32****, i32***** %214, align 8
  %216 = load i32, i32* %12, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32***, i32**** %215, i64 %217
  %219 = load i32***, i32**** %218, align 8
  %220 = getelementptr inbounds i32**, i32*** %219, i64 0
  %221 = load i32**, i32*** %220, align 8
  %222 = load i32, i32* %8, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32*, i32** %221, i64 %223
  %225 = load i32*, i32** %224, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 0
  %227 = load i32, i32* %226, align 4
  %228 = sub nsw i32 %212, %227
  br label %251

229:                                              ; preds = %136
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 7
  %232 = load i32****, i32***** %231, align 8
  %233 = load i32, i32* %12, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32***, i32**** %232, i64 %234
  %236 = load i32***, i32**** %235, align 8
  %237 = getelementptr inbounds i32**, i32*** %236, i64 0
  %238 = load i32**, i32*** %237, align 8
  %239 = load i32, i32* %8, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32*, i32** %238, i64 %240
  %242 = load i32*, i32** %241, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 0
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* %11, align 4
  %246 = load i32, i32* %10, align 4
  %247 = sub nsw i32 %245, %246
  %248 = mul nsw i32 %244, %247
  %249 = load i32, i32* %10, align 4
  %250 = sdiv i32 %248, %249
  br label %251

251:                                              ; preds = %229, %201
  %252 = phi i32 [ %228, %201 ], [ %250, %229 ]
  %253 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 6
  %255 = load i32***, i32**** %254, align 8
  %256 = getelementptr inbounds i32**, i32*** %255, i64 1
  %257 = load i32**, i32*** %256, align 8
  %258 = load i32, i32* %12, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32*, i32** %257, i64 %259
  %261 = load i32*, i32** %260, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 0
  store i32 %252, i32* %262, align 4
  %263 = load i32, i32* %7, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %293

265:                                              ; preds = %251
  %266 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 6
  %268 = load i32***, i32**** %267, align 8
  %269 = getelementptr inbounds i32**, i32*** %268, i64 0
  %270 = load i32**, i32*** %269, align 8
  %271 = load i32, i32* %12, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32*, i32** %270, i64 %272
  %274 = load i32*, i32** %273, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 1
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %277, i32 0, i32 7
  %279 = load i32****, i32***** %278, align 8
  %280 = load i32, i32* %12, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32***, i32**** %279, i64 %281
  %283 = load i32***, i32**** %282, align 8
  %284 = getelementptr inbounds i32**, i32*** %283, i64 0
  %285 = load i32**, i32*** %284, align 8
  %286 = load i32, i32* %8, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32*, i32** %285, i64 %287
  %289 = load i32*, i32** %288, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 1
  %291 = load i32, i32* %290, align 4
  %292 = sub nsw i32 %276, %291
  br label %315

293:                                              ; preds = %251
  %294 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %295 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %294, i32 0, i32 7
  %296 = load i32****, i32***** %295, align 8
  %297 = load i32, i32* %12, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i32***, i32**** %296, i64 %298
  %300 = load i32***, i32**** %299, align 8
  %301 = getelementptr inbounds i32**, i32*** %300, i64 0
  %302 = load i32**, i32*** %301, align 8
  %303 = load i32, i32* %8, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32*, i32** %302, i64 %304
  %306 = load i32*, i32** %305, align 8
  %307 = getelementptr inbounds i32, i32* %306, i64 1
  %308 = load i32, i32* %307, align 4
  %309 = load i32, i32* %11, align 4
  %310 = load i32, i32* %10, align 4
  %311 = sub nsw i32 %309, %310
  %312 = mul nsw i32 %308, %311
  %313 = load i32, i32* %10, align 4
  %314 = sdiv i32 %312, %313
  br label %315

315:                                              ; preds = %293, %265
  %316 = phi i32 [ %292, %265 ], [ %314, %293 ]
  %317 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %318 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %317, i32 0, i32 6
  %319 = load i32***, i32**** %318, align 8
  %320 = getelementptr inbounds i32**, i32*** %319, i64 1
  %321 = load i32**, i32*** %320, align 8
  %322 = load i32, i32* %12, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32*, i32** %321, i64 %323
  %325 = load i32*, i32** %324, align 8
  %326 = getelementptr inbounds i32, i32* %325, i64 1
  store i32 %316, i32* %326, align 4
  br label %327

327:                                              ; preds = %315
  %328 = load i32, i32* %12, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %12, align 4
  br label %66

330:                                              ; preds = %66
  %331 = load i32, i32* @MB_TYPE_DIRECT2, align 4
  %332 = load i32, i32* @MB_TYPE_16x8, align 4
  %333 = or i32 %331, %332
  %334 = load i32, i32* @MB_TYPE_L0L1, align 4
  %335 = or i32 %333, %334
  %336 = load i32, i32* @MB_TYPE_INTERLACED, align 4
  %337 = or i32 %335, %336
  store i32 %337, i32* %4, align 4
  br label %502

338:                                              ; preds = %58
  %339 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %340 = load i32, i32* %6, align 4
  %341 = load i32, i32* %7, align 4
  %342 = call i32 @ff_mpeg4_set_one_direct_mv(%struct.TYPE_8__* %339, i32 %340, i32 %341, i32 0)
  %343 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %344 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %343, i32 0, i32 6
  %345 = load i32***, i32**** %344, align 8
  %346 = getelementptr inbounds i32**, i32*** %345, i64 0
  %347 = load i32**, i32*** %346, align 8
  %348 = getelementptr inbounds i32*, i32** %347, i64 0
  %349 = load i32*, i32** %348, align 8
  %350 = getelementptr inbounds i32, i32* %349, i64 0
  %351 = load i32, i32* %350, align 4
  %352 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %353 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %352, i32 0, i32 6
  %354 = load i32***, i32**** %353, align 8
  %355 = getelementptr inbounds i32**, i32*** %354, i64 0
  %356 = load i32**, i32*** %355, align 8
  %357 = getelementptr inbounds i32*, i32** %356, i64 3
  %358 = load i32*, i32** %357, align 8
  %359 = getelementptr inbounds i32, i32* %358, i64 0
  store i32 %351, i32* %359, align 4
  %360 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %361 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %360, i32 0, i32 6
  %362 = load i32***, i32**** %361, align 8
  %363 = getelementptr inbounds i32**, i32*** %362, i64 0
  %364 = load i32**, i32*** %363, align 8
  %365 = getelementptr inbounds i32*, i32** %364, i64 2
  %366 = load i32*, i32** %365, align 8
  %367 = getelementptr inbounds i32, i32* %366, i64 0
  store i32 %351, i32* %367, align 4
  %368 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %369 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %368, i32 0, i32 6
  %370 = load i32***, i32**** %369, align 8
  %371 = getelementptr inbounds i32**, i32*** %370, i64 0
  %372 = load i32**, i32*** %371, align 8
  %373 = getelementptr inbounds i32*, i32** %372, i64 1
  %374 = load i32*, i32** %373, align 8
  %375 = getelementptr inbounds i32, i32* %374, i64 0
  store i32 %351, i32* %375, align 4
  %376 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %377 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %376, i32 0, i32 6
  %378 = load i32***, i32**** %377, align 8
  %379 = getelementptr inbounds i32**, i32*** %378, i64 0
  %380 = load i32**, i32*** %379, align 8
  %381 = getelementptr inbounds i32*, i32** %380, i64 0
  %382 = load i32*, i32** %381, align 8
  %383 = getelementptr inbounds i32, i32* %382, i64 1
  %384 = load i32, i32* %383, align 4
  %385 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %386 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %385, i32 0, i32 6
  %387 = load i32***, i32**** %386, align 8
  %388 = getelementptr inbounds i32**, i32*** %387, i64 0
  %389 = load i32**, i32*** %388, align 8
  %390 = getelementptr inbounds i32*, i32** %389, i64 3
  %391 = load i32*, i32** %390, align 8
  %392 = getelementptr inbounds i32, i32* %391, i64 1
  store i32 %384, i32* %392, align 4
  %393 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %394 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %393, i32 0, i32 6
  %395 = load i32***, i32**** %394, align 8
  %396 = getelementptr inbounds i32**, i32*** %395, i64 0
  %397 = load i32**, i32*** %396, align 8
  %398 = getelementptr inbounds i32*, i32** %397, i64 2
  %399 = load i32*, i32** %398, align 8
  %400 = getelementptr inbounds i32, i32* %399, i64 1
  store i32 %384, i32* %400, align 4
  %401 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %402 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %401, i32 0, i32 6
  %403 = load i32***, i32**** %402, align 8
  %404 = getelementptr inbounds i32**, i32*** %403, i64 0
  %405 = load i32**, i32*** %404, align 8
  %406 = getelementptr inbounds i32*, i32** %405, i64 1
  %407 = load i32*, i32** %406, align 8
  %408 = getelementptr inbounds i32, i32* %407, i64 1
  store i32 %384, i32* %408, align 4
  %409 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %410 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %409, i32 0, i32 6
  %411 = load i32***, i32**** %410, align 8
  %412 = getelementptr inbounds i32**, i32*** %411, i64 1
  %413 = load i32**, i32*** %412, align 8
  %414 = getelementptr inbounds i32*, i32** %413, i64 0
  %415 = load i32*, i32** %414, align 8
  %416 = getelementptr inbounds i32, i32* %415, i64 0
  %417 = load i32, i32* %416, align 4
  %418 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %419 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %418, i32 0, i32 6
  %420 = load i32***, i32**** %419, align 8
  %421 = getelementptr inbounds i32**, i32*** %420, i64 1
  %422 = load i32**, i32*** %421, align 8
  %423 = getelementptr inbounds i32*, i32** %422, i64 3
  %424 = load i32*, i32** %423, align 8
  %425 = getelementptr inbounds i32, i32* %424, i64 0
  store i32 %417, i32* %425, align 4
  %426 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %427 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %426, i32 0, i32 6
  %428 = load i32***, i32**** %427, align 8
  %429 = getelementptr inbounds i32**, i32*** %428, i64 1
  %430 = load i32**, i32*** %429, align 8
  %431 = getelementptr inbounds i32*, i32** %430, i64 2
  %432 = load i32*, i32** %431, align 8
  %433 = getelementptr inbounds i32, i32* %432, i64 0
  store i32 %417, i32* %433, align 4
  %434 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %435 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %434, i32 0, i32 6
  %436 = load i32***, i32**** %435, align 8
  %437 = getelementptr inbounds i32**, i32*** %436, i64 1
  %438 = load i32**, i32*** %437, align 8
  %439 = getelementptr inbounds i32*, i32** %438, i64 1
  %440 = load i32*, i32** %439, align 8
  %441 = getelementptr inbounds i32, i32* %440, i64 0
  store i32 %417, i32* %441, align 4
  %442 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %443 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %442, i32 0, i32 6
  %444 = load i32***, i32**** %443, align 8
  %445 = getelementptr inbounds i32**, i32*** %444, i64 1
  %446 = load i32**, i32*** %445, align 8
  %447 = getelementptr inbounds i32*, i32** %446, i64 0
  %448 = load i32*, i32** %447, align 8
  %449 = getelementptr inbounds i32, i32* %448, i64 1
  %450 = load i32, i32* %449, align 4
  %451 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %452 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %451, i32 0, i32 6
  %453 = load i32***, i32**** %452, align 8
  %454 = getelementptr inbounds i32**, i32*** %453, i64 1
  %455 = load i32**, i32*** %454, align 8
  %456 = getelementptr inbounds i32*, i32** %455, i64 3
  %457 = load i32*, i32** %456, align 8
  %458 = getelementptr inbounds i32, i32* %457, i64 1
  store i32 %450, i32* %458, align 4
  %459 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %460 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %459, i32 0, i32 6
  %461 = load i32***, i32**** %460, align 8
  %462 = getelementptr inbounds i32**, i32*** %461, i64 1
  %463 = load i32**, i32*** %462, align 8
  %464 = getelementptr inbounds i32*, i32** %463, i64 2
  %465 = load i32*, i32** %464, align 8
  %466 = getelementptr inbounds i32, i32* %465, i64 1
  store i32 %450, i32* %466, align 4
  %467 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %468 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %467, i32 0, i32 6
  %469 = load i32***, i32**** %468, align 8
  %470 = getelementptr inbounds i32**, i32*** %469, i64 1
  %471 = load i32**, i32*** %470, align 8
  %472 = getelementptr inbounds i32*, i32** %471, i64 1
  %473 = load i32*, i32** %472, align 8
  %474 = getelementptr inbounds i32, i32* %473, i64 1
  store i32 %450, i32* %474, align 4
  %475 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %476 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %475, i32 0, i32 10
  %477 = load %struct.TYPE_6__*, %struct.TYPE_6__** %476, align 8
  %478 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %477, i32 0, i32 0
  %479 = load i32, i32* %478, align 4
  %480 = load i32, i32* @FF_BUG_DIRECT_BLOCKSIZE, align 4
  %481 = and i32 %479, %480
  %482 = icmp ne i32 %481, 0
  br i1 %482, label %488, label %483

483:                                              ; preds = %338
  %484 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %485 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %484, i32 0, i32 9
  %486 = load i32, i32* %485, align 8
  %487 = icmp ne i32 %486, 0
  br i1 %487, label %492, label %488

488:                                              ; preds = %483, %338
  %489 = load i8*, i8** @MV_TYPE_16X16, align 8
  %490 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %491 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %490, i32 0, i32 8
  store i8* %489, i8** %491, align 8
  br label %496

492:                                              ; preds = %483
  %493 = load i8*, i8** @MV_TYPE_8X8, align 8
  %494 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %495 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %494, i32 0, i32 8
  store i8* %493, i8** %495, align 8
  br label %496

496:                                              ; preds = %492, %488
  %497 = load i32, i32* @MB_TYPE_DIRECT2, align 4
  %498 = load i32, i32* @MB_TYPE_16x16, align 4
  %499 = or i32 %497, %498
  %500 = load i32, i32* @MB_TYPE_L0L1, align 4
  %501 = or i32 %499, %500
  store i32 %501, i32* %4, align 4
  br label %502

502:                                              ; preds = %496, %330, %52
  %503 = load i32, i32* %4, align 4
  ret i32 %503
}

declare dso_local i64 @IS_8X8(i32) #1

declare dso_local i32 @ff_mpeg4_set_one_direct_mv(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i64 @IS_INTERLACED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

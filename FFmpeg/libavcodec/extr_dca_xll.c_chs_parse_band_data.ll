; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_xll.c_chs_parse_band_data.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_xll.c_chs_parse_band_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32*, i32, i32*, i32*, i32*, i32**, i8**, i8*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32*, i32, i32**, i32, i64*, i64* }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Invalid isolated sample location\0A\00", align 1
@DCA_XLL_DECI_HISTORY_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Read past end of XLL band data\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_7__*, i32, i32, i32)* @chs_parse_band_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chs_parse_band_data(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 9
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i64 %26
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %12, align 8
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %5
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 3
  %33 = call i8* @get_bits1(i32* %32)
  %34 = icmp ne i8* %33, null
  br i1 %34, label %243, label %35

35:                                               ; preds = %30, %5
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 3
  %38 = call i8* @get_bits1(i32* %37)
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 8
  store i8* %38, i8** %40, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 8
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  br label %50

46:                                               ; preds = %35
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  br label %50

50:                                               ; preds = %46, %45
  %51 = phi i32 [ 1, %45 ], [ %49, %46 ]
  store i32 %51, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %52

52:                                               ; preds = %106, %50
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %15, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %109

56:                                               ; preds = %52
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 3
  %59 = call i8* @get_bits1(i32* %58)
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 7
  %62 = load i8**, i8*** %61, align 8
  %63 = load i32, i32* %13, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  store i8* %59, i8** %65, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 8
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %98, label %70

70:                                               ; preds = %56
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 7
  %73 = load i8**, i8*** %72, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  %77 = load i8*, i8** %76, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %98

79:                                               ; preds = %70
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 3
  %82 = call i8* @get_bits1(i32* %81)
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %98

84:                                               ; preds = %79
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 3
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @get_bits(i32* %86, i32 %89)
  %91 = add nsw i32 %90, 1
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %13, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32 %91, i32* %97, align 4
  br label %105

98:                                               ; preds = %79, %70, %56
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  store i32 0, i32* %104, align 4
  br label %105

105:                                              ; preds = %98, %84
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %13, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %13, align 4
  br label %52

109:                                              ; preds = %52
  store i32 0, i32* %13, align 4
  br label %110

110:                                              ; preds = %239, %109
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %15, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %242

114:                                              ; preds = %110
  %115 = load i32, i32* %10, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %186

117:                                              ; preds = %114
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 3
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @get_bits(i32* %119, i32 %122)
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 3
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %13, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  store i32 %123, i32* %129, align 4
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 7
  %132 = load i8**, i8*** %131, align 8
  %133 = load i32, i32* %13, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8*, i8** %132, i64 %134
  %136 = load i8*, i8** %135, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %156, label %138

138:                                              ; preds = %117
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 3
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %13, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %156

147:                                              ; preds = %138
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 3
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %13, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %153, align 4
  br label %156

156:                                              ; preds = %147, %138, %117
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 8
  %159 = load i8*, i8** %158, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %175, label %161

161:                                              ; preds = %156
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %13, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 4
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %13, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  store i32 %168, i32* %174, align 4
  br label %185

175:                                              ; preds = %156
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 4
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* %13, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  store i32 %178, i32* %184, align 4
  br label %185

185:                                              ; preds = %175, %161
  br label %199

186:                                              ; preds = %114
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 3
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %13, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  store i32 0, i32* %192, align 4
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 4
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* %13, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  store i32 0, i32* %198, align 4
  br label %199

199:                                              ; preds = %186, %185
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 3
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @get_bits(i32* %201, i32 %204)
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 5
  %208 = load i32*, i32** %207, align 8
  %209 = load i32, i32* %13, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  store i32 %205, i32* %211, align 4
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 7
  %214 = load i8**, i8*** %213, align 8
  %215 = load i32, i32* %13, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8*, i8** %214, i64 %216
  %218 = load i8*, i8** %217, align 8
  %219 = icmp ne i8* %218, null
  br i1 %219, label %238, label %220

220:                                              ; preds = %199
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 5
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* %13, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %238

229:                                              ; preds = %220
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 5
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %13, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %235, align 4
  br label %238

238:                                              ; preds = %229, %220, %199
  br label %239

239:                                              ; preds = %238
  %240 = load i32, i32* %13, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %13, align 4
  br label %110

242:                                              ; preds = %110
  br label %243

243:                                              ; preds = %242, %30
  store i32 0, i32* %13, align 4
  br label %244

244:                                              ; preds = %472, %243
  %245 = load i32, i32* %13, align 4
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = icmp slt i32 %245, %248
  br i1 %249, label %250, label %475

250:                                              ; preds = %244
  %251 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %252 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %251, i32 0, i32 8
  %253 = load i8*, i8** %252, align 8
  %254 = icmp ne i8* %253, null
  br i1 %254, label %255, label %256

255:                                              ; preds = %250
  br label %258

256:                                              ; preds = %250
  %257 = load i32, i32* %13, align 4
  br label %258

258:                                              ; preds = %256, %255
  %259 = phi i32 [ 0, %255 ], [ %257, %256 ]
  store i32 %259, i32* %15, align 4
  %260 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 2
  %262 = load i32**, i32*** %261, align 8
  %263 = load i32, i32* %13, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32*, i32** %262, i64 %264
  %266 = load i32*, i32** %265, align 8
  %267 = load i32, i32* %10, align 4
  %268 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = mul nsw i32 %267, %270
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %266, i64 %272
  store i32* %273, i32** %16, align 8
  %274 = load i32*, i32** %16, align 8
  %275 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %276 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %275, i32 0, i32 4
  %277 = load i32*, i32** %276, align 8
  %278 = load i32, i32* %15, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %277, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %274, i64 %282
  store i32* %283, i32** %17, align 8
  %284 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %288 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %287, i32 0, i32 4
  %289 = load i32*, i32** %288, align 8
  %290 = load i32, i32* %15, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %289, i64 %291
  %293 = load i32, i32* %292, align 4
  %294 = sub nsw i32 %286, %293
  store i32 %294, i32* %18, align 4
  %295 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %296 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %295, i32 0, i32 3
  %297 = call i64 @get_bits_left(i32* %296)
  %298 = icmp slt i64 %297, 0
  br i1 %298, label %299, label %301

299:                                              ; preds = %258
  %300 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %300, i32* %6, align 4
  br label %606

301:                                              ; preds = %258
  %302 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %303 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %302, i32 0, i32 7
  %304 = load i8**, i8*** %303, align 8
  %305 = load i32, i32* %15, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i8*, i8** %304, i64 %306
  %308 = load i8*, i8** %307, align 8
  %309 = icmp ne i8* %308, null
  br i1 %309, label %341, label %310

310:                                              ; preds = %301
  %311 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %312 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %311, i32 0, i32 3
  %313 = load i32*, i32** %16, align 8
  %314 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %315 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %314, i32 0, i32 4
  %316 = load i32*, i32** %315, align 8
  %317 = load i32, i32* %15, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %316, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %322 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %321, i32 0, i32 3
  %323 = load i32*, i32** %322, align 8
  %324 = load i32, i32* %15, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32* %323, i64 %325
  %327 = load i32, i32* %326, align 4
  %328 = call i32 @get_linear_array(i32* %312, i32* %313, i32 %320, i32 %327)
  %329 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %330 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %329, i32 0, i32 3
  %331 = load i32*, i32** %17, align 8
  %332 = load i32, i32* %18, align 4
  %333 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %334 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %333, i32 0, i32 5
  %335 = load i32*, i32** %334, align 8
  %336 = load i32, i32* %15, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i32, i32* %335, i64 %337
  %339 = load i32, i32* %338, align 4
  %340 = call i32 @get_linear_array(i32* %330, i32* %331, i32 %332, i32 %339)
  br label %471

341:                                              ; preds = %301
  %342 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %343 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %342, i32 0, i32 3
  %344 = load i32*, i32** %16, align 8
  %345 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %346 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %345, i32 0, i32 4
  %347 = load i32*, i32** %346, align 8
  %348 = load i32, i32* %15, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %347, i64 %349
  %351 = load i32, i32* %350, align 4
  %352 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %353 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %352, i32 0, i32 3
  %354 = load i32*, i32** %353, align 8
  %355 = load i32, i32* %15, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i32, i32* %354, i64 %356
  %358 = load i32, i32* %357, align 4
  %359 = call i32 @get_rice_array(i32* %343, i32* %344, i32 %351, i32 %358)
  %360 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %361 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %360, i32 0, i32 1
  %362 = load i32*, i32** %361, align 8
  %363 = load i32, i32* %15, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i32, i32* %362, i64 %364
  %366 = load i32, i32* %365, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %457

368:                                              ; preds = %341
  %369 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %370 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %369, i32 0, i32 3
  %371 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %372 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %371, i32 0, i32 1
  %373 = load i32, i32* %372, align 4
  %374 = call i32 @get_bits(i32* %370, i32 %373)
  store i32 %374, i32* %19, align 4
  %375 = load i32*, i32** %17, align 8
  %376 = load i32, i32* %18, align 4
  %377 = sext i32 %376 to i64
  %378 = mul i64 4, %377
  %379 = trunc i64 %378 to i32
  %380 = call i32 @memset(i32* %375, i32 0, i32 %379)
  store i32 0, i32* %14, align 4
  br label %381

381:                                              ; preds = %407, %368
  %382 = load i32, i32* %14, align 4
  %383 = load i32, i32* %19, align 4
  %384 = icmp slt i32 %382, %383
  br i1 %384, label %385, label %410

385:                                              ; preds = %381
  %386 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %387 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %386, i32 0, i32 3
  %388 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %389 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %388, i32 0, i32 1
  %390 = load i32, i32* %389, align 4
  %391 = call i32 @get_bits(i32* %387, i32 %390)
  store i32 %391, i32* %20, align 4
  %392 = load i32, i32* %20, align 4
  %393 = load i32, i32* %18, align 4
  %394 = icmp sge i32 %392, %393
  br i1 %394, label %395, label %402

395:                                              ; preds = %385
  %396 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %397 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %396, i32 0, i32 2
  %398 = load i32, i32* %397, align 4
  %399 = load i32, i32* @AV_LOG_ERROR, align 4
  %400 = call i32 @av_log(i32 %398, i32 %399, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %401 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %401, i32* %6, align 4
  br label %606

402:                                              ; preds = %385
  %403 = load i32*, i32** %17, align 8
  %404 = load i32, i32* %20, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i32, i32* %403, i64 %405
  store i32 -1, i32* %406, align 4
  br label %407

407:                                              ; preds = %402
  %408 = load i32, i32* %14, align 4
  %409 = add nsw i32 %408, 1
  store i32 %409, i32* %14, align 4
  br label %381

410:                                              ; preds = %381
  store i32 0, i32* %14, align 4
  br label %411

411:                                              ; preds = %453, %410
  %412 = load i32, i32* %14, align 4
  %413 = load i32, i32* %18, align 4
  %414 = icmp slt i32 %412, %413
  br i1 %414, label %415, label %456

415:                                              ; preds = %411
  %416 = load i32*, i32** %17, align 8
  %417 = load i32, i32* %14, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i32, i32* %416, i64 %418
  %420 = load i32, i32* %419, align 4
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %437

422:                                              ; preds = %415
  %423 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %424 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %423, i32 0, i32 3
  %425 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %426 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %425, i32 0, i32 1
  %427 = load i32*, i32** %426, align 8
  %428 = load i32, i32* %15, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds i32, i32* %427, i64 %429
  %431 = load i32, i32* %430, align 4
  %432 = call i32 @get_linear(i32* %424, i32 %431)
  %433 = load i32*, i32** %17, align 8
  %434 = load i32, i32* %14, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds i32, i32* %433, i64 %435
  store i32 %432, i32* %436, align 4
  br label %452

437:                                              ; preds = %415
  %438 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %439 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %438, i32 0, i32 3
  %440 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %441 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %440, i32 0, i32 5
  %442 = load i32*, i32** %441, align 8
  %443 = load i32, i32* %15, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds i32, i32* %442, i64 %444
  %446 = load i32, i32* %445, align 4
  %447 = call i32 @get_rice(i32* %439, i32 %446)
  %448 = load i32*, i32** %17, align 8
  %449 = load i32, i32* %14, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds i32, i32* %448, i64 %450
  store i32 %447, i32* %451, align 4
  br label %452

452:                                              ; preds = %437, %422
  br label %453

453:                                              ; preds = %452
  %454 = load i32, i32* %14, align 4
  %455 = add nsw i32 %454, 1
  store i32 %455, i32* %14, align 4
  br label %411

456:                                              ; preds = %411
  br label %470

457:                                              ; preds = %341
  %458 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %459 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %458, i32 0, i32 3
  %460 = load i32*, i32** %17, align 8
  %461 = load i32, i32* %18, align 4
  %462 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %463 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %462, i32 0, i32 5
  %464 = load i32*, i32** %463, align 8
  %465 = load i32, i32* %15, align 4
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds i32, i32* %464, i64 %466
  %468 = load i32, i32* %467, align 4
  %469 = call i32 @get_rice_array(i32* %459, i32* %460, i32 %461, i32 %468)
  br label %470

470:                                              ; preds = %457, %456
  br label %471

471:                                              ; preds = %470, %310
  br label %472

472:                                              ; preds = %471
  %473 = load i32, i32* %13, align 4
  %474 = add nsw i32 %473, 1
  store i32 %474, i32* %13, align 4
  br label %244

475:                                              ; preds = %244
  %476 = load i32, i32* %10, align 4
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %478, label %520

478:                                              ; preds = %475
  %479 = load i32, i32* %9, align 4
  %480 = icmp eq i32 %479, 1
  br i1 %480, label %481, label %520

481:                                              ; preds = %478
  %482 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %483 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %482, i32 0, i32 3
  %484 = call i32 @get_bits(i32* %483, i32 5)
  %485 = add nsw i32 %484, 1
  store i32 %485, i32* %21, align 4
  store i32 0, i32* %13, align 4
  br label %486

486:                                              ; preds = %516, %481
  %487 = load i32, i32* %13, align 4
  %488 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %489 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %488, i32 0, i32 0
  %490 = load i32, i32* %489, align 8
  %491 = icmp slt i32 %487, %490
  br i1 %491, label %492, label %519

492:                                              ; preds = %486
  store i32 1, i32* %14, align 4
  br label %493

493:                                              ; preds = %512, %492
  %494 = load i32, i32* %14, align 4
  %495 = load i32, i32* @DCA_XLL_DECI_HISTORY_MAX, align 4
  %496 = icmp slt i32 %494, %495
  br i1 %496, label %497, label %515

497:                                              ; preds = %493
  %498 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %499 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %498, i32 0, i32 3
  %500 = load i32, i32* %21, align 4
  %501 = call i32 @get_sbits_long(i32* %499, i32 %500)
  %502 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %503 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %502, i32 0, i32 6
  %504 = load i32**, i32*** %503, align 8
  %505 = load i32, i32* %13, align 4
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds i32*, i32** %504, i64 %506
  %508 = load i32*, i32** %507, align 8
  %509 = load i32, i32* %14, align 4
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds i32, i32* %508, i64 %510
  store i32 %501, i32* %511, align 4
  br label %512

512:                                              ; preds = %497
  %513 = load i32, i32* %14, align 4
  %514 = add nsw i32 %513, 1
  store i32 %514, i32* %14, align 4
  br label %493

515:                                              ; preds = %493
  br label %516

516:                                              ; preds = %515
  %517 = load i32, i32* %13, align 4
  %518 = add nsw i32 %517, 1
  store i32 %518, i32* %13, align 4
  br label %486

519:                                              ; preds = %486
  br label %520

520:                                              ; preds = %519, %478, %475
  %521 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %522 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %521, i32 0, i32 3
  %523 = load i32, i32* %522, align 8
  %524 = icmp ne i32 %523, 0
  br i1 %524, label %525, label %592

525:                                              ; preds = %520
  %526 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %527 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %526, i32 0, i32 3
  %528 = load i32, i32* %11, align 4
  %529 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %530 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %529, i32 0, i32 3
  %531 = load i32, i32* %530, align 8
  %532 = mul nsw i32 %531, 8
  %533 = sub nsw i32 %528, %532
  %534 = call i64 @ff_dca_seek_bits(i32* %527, i32 %533)
  %535 = icmp ne i64 %534, 0
  br i1 %535, label %536, label %543

536:                                              ; preds = %525
  %537 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %538 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %537, i32 0, i32 2
  %539 = load i32, i32* %538, align 4
  %540 = load i32, i32* @AV_LOG_ERROR, align 4
  %541 = call i32 @av_log(i32 %539, i32 %540, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %542 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %542, i32* %6, align 4
  br label %606

543:                                              ; preds = %525
  store i32 0, i32* %13, align 4
  br label %544

544:                                              ; preds = %588, %543
  %545 = load i32, i32* %13, align 4
  %546 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %547 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %546, i32 0, i32 0
  %548 = load i32, i32* %547, align 8
  %549 = icmp slt i32 %545, %548
  br i1 %549, label %550, label %591

550:                                              ; preds = %544
  %551 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %552 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %551, i32 0, i32 4
  %553 = load i64*, i64** %552, align 8
  %554 = load i32, i32* %13, align 4
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds i64, i64* %553, i64 %555
  %557 = load i64, i64* %556, align 8
  %558 = icmp ne i64 %557, 0
  br i1 %558, label %559, label %587

559:                                              ; preds = %550
  %560 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %561 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %560, i32 0, i32 3
  %562 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %563 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %562, i32 0, i32 5
  %564 = load i64*, i64** %563, align 8
  %565 = load i32, i32* %13, align 4
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds i64, i64* %564, i64 %566
  %568 = load i64, i64* %567, align 8
  %569 = load i32, i32* %10, align 4
  %570 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %571 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %570, i32 0, i32 0
  %572 = load i32, i32* %571, align 4
  %573 = mul nsw i32 %569, %572
  %574 = sext i32 %573 to i64
  %575 = add nsw i64 %568, %574
  %576 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %577 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %576, i32 0, i32 0
  %578 = load i32, i32* %577, align 4
  %579 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %580 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %579, i32 0, i32 4
  %581 = load i64*, i64** %580, align 8
  %582 = load i32, i32* %13, align 4
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds i64, i64* %581, i64 %583
  %585 = load i64, i64* %584, align 8
  %586 = call i32 @get_array(i32* %561, i64 %575, i32 %578, i64 %585)
  br label %587

587:                                              ; preds = %559, %550
  br label %588

588:                                              ; preds = %587
  %589 = load i32, i32* %13, align 4
  %590 = add nsw i32 %589, 1
  store i32 %590, i32* %13, align 4
  br label %544

591:                                              ; preds = %544
  br label %592

592:                                              ; preds = %591, %520
  %593 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %594 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %593, i32 0, i32 3
  %595 = load i32, i32* %11, align 4
  %596 = call i64 @ff_dca_seek_bits(i32* %594, i32 %595)
  %597 = icmp ne i64 %596, 0
  br i1 %597, label %598, label %605

598:                                              ; preds = %592
  %599 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %600 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %599, i32 0, i32 2
  %601 = load i32, i32* %600, align 4
  %602 = load i32, i32* @AV_LOG_ERROR, align 4
  %603 = call i32 @av_log(i32 %601, i32 %602, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %604 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %604, i32* %6, align 4
  br label %606

605:                                              ; preds = %592
  store i32 0, i32* %6, align 4
  br label %606

606:                                              ; preds = %605, %598, %536, %395, %299
  %607 = load i32, i32* %6, align 4
  ret i32 %607
}

declare dso_local i8* @get_bits1(i32*) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i64 @get_bits_left(i32*) #1

declare dso_local i32 @get_linear_array(i32*, i32*, i32, i32) #1

declare dso_local i32 @get_rice_array(i32*, i32*, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local i32 @get_linear(i32*, i32) #1

declare dso_local i32 @get_rice(i32*, i32) #1

declare dso_local i32 @get_sbits_long(i32*, i32) #1

declare dso_local i64 @ff_dca_seek_bits(i32*, i32) #1

declare dso_local i32 @get_array(i32*, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

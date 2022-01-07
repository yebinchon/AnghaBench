; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_rotate.c_filter_slice.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_rotate.c_filter_slice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_7__, i32* (i32*, i32*, i32, i32, i32, i32, i32, i32)*, i64, i64 }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32*, i32** }

@FIXP = common dso_local global i32 0, align 4
@FLT_EPSILON = common dso_local global i64 0, align 8
@M_PI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i8*, i32, i32)* @filter_slice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_slice(%struct.TYPE_11__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca [4 x i32], align 16
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %38 = load i8*, i8** %6, align 8
  %39 = bitcast i8* %38 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %39, %struct.TYPE_8__** %9, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 12
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  store %struct.TYPE_10__* %42, %struct.TYPE_10__** %10, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 11
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  store %struct.TYPE_10__* %45, %struct.TYPE_10__** %11, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  store %struct.TYPE_9__* %48, %struct.TYPE_9__** %12, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %13, align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %14, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %15, align 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %16, align 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %17, align 4
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %18, align 4
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %19, align 4
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %20, align 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 8
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %21, align 4
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* %7, align 4
  %78 = mul nsw i32 %76, %77
  %79 = load i32, i32* %8, align 4
  %80 = sdiv i32 %78, %79
  store i32 %80, i32* %22, align 4
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  %84 = mul nsw i32 %81, %83
  %85 = load i32, i32* %8, align 4
  %86 = sdiv i32 %84, %85
  store i32 %86, i32* %23, align 4
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 9
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %22, align 4
  %91 = load i32, i32* %21, align 4
  %92 = mul nsw i32 %90, %91
  %93 = add nsw i32 %89, %92
  store i32 %93, i32* %24, align 4
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 10
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %22, align 4
  %98 = load i32, i32* %20, align 4
  %99 = mul nsw i32 %97, %98
  %100 = add nsw i32 %96, %99
  store i32 %100, i32* %25, align 4
  %101 = load i32, i32* %22, align 4
  store i32 %101, i32* %27, align 4
  br label %102

102:                                              ; preds = %615, %4
  %103 = load i32, i32* %27, align 4
  %104 = load i32, i32* %23, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %618

106:                                              ; preds = %102
  %107 = load i32, i32* %24, align 4
  %108 = load i32, i32* %18, align 4
  %109 = add nsw i32 %107, %108
  %110 = load i32, i32* @FIXP, align 4
  %111 = load i32, i32* %15, align 4
  %112 = sub nsw i32 %111, 1
  %113 = mul nsw i32 %110, %112
  %114 = sdiv i32 %113, 2
  %115 = add nsw i32 %109, %114
  store i32 %115, i32* %28, align 4
  %116 = load i32, i32* %25, align 4
  %117 = load i32, i32* %19, align 4
  %118 = add nsw i32 %116, %117
  %119 = load i32, i32* @FIXP, align 4
  %120 = load i32, i32* %16, align 4
  %121 = sub nsw i32 %120, 1
  %122 = mul nsw i32 %119, %121
  %123 = sdiv i32 %122, 2
  %124 = add nsw i32 %118, %123
  store i32 %124, i32* %29, align 4
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = sub nsw i64 %127, 0
  %129 = call i64 @fabs(i64 %128)
  %130 = load i64, i64* @FLT_EPSILON, align 8
  %131 = icmp slt i64 %129, %130
  br i1 %131, label %132, label %194

132:                                              ; preds = %106
  %133 = load i32, i32* %13, align 4
  %134 = load i32, i32* %15, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %194

136:                                              ; preds = %132
  %137 = load i32, i32* %14, align 4
  %138 = load i32, i32* %16, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %194

140:                                              ; preds = %136
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 1
  %143 = load i32**, i32*** %142, align 8
  %144 = load i32, i32* %17, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32*, i32** %143, i64 %145
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %27, align 4
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %17, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = mul nsw i32 %148, %155
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %147, i64 %157
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 1
  %161 = load i32**, i32*** %160, align 8
  %162 = load i32, i32* %17, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32*, i32** %161, i64 %163
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %27, align 4
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %17, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = mul nsw i32 %166, %173
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %165, i64 %175
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %17, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* %17, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %13, align 4
  %193 = call i32 @simple_rotate(i32* %158, i32* %176, i32 %183, i32 0, i32 %191, i32 %192)
  br label %608

194:                                              ; preds = %136, %132, %106
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 3
  %197 = load i64, i64* %196, align 8
  %198 = load i32, i32* @M_PI, align 4
  %199 = sdiv i32 %198, 2
  %200 = sext i32 %199 to i64
  %201 = sub nsw i64 %197, %200
  %202 = call i64 @fabs(i64 %201)
  %203 = load i64, i64* @FLT_EPSILON, align 8
  %204 = icmp slt i64 %202, %203
  br i1 %204, label %205, label %268

205:                                              ; preds = %194
  %206 = load i32, i32* %13, align 4
  %207 = load i32, i32* %16, align 4
  %208 = icmp eq i32 %206, %207
  br i1 %208, label %209, label %268

209:                                              ; preds = %205
  %210 = load i32, i32* %14, align 4
  %211 = load i32, i32* %15, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %213, label %268

213:                                              ; preds = %209
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 1
  %216 = load i32**, i32*** %215, align 8
  %217 = load i32, i32* %17, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32*, i32** %216, i64 %218
  %220 = load i32*, i32** %219, align 8
  %221 = load i32, i32* %27, align 4
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 0
  %224 = load i32*, i32** %223, align 8
  %225 = load i32, i32* %17, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = mul nsw i32 %221, %228
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %220, i64 %230
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 1
  %234 = load i32**, i32*** %233, align 8
  %235 = load i32, i32* %17, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32*, i32** %234, i64 %236
  %238 = load i32*, i32** %237, align 8
  %239 = load i32, i32* %27, align 4
  %240 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 0, i32 0
  %243 = load i32*, i32** %242, align 8
  %244 = load i32, i32* %17, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = mul nsw i32 %239, %247
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %238, i64 %249
  %251 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i32 0, i32 0
  %253 = load i32*, i32** %252, align 8
  %254 = load i32, i32* %17, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %253, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i32 0, i32 0
  %261 = load i32*, i32** %260, align 8
  %262 = load i32, i32* %17, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %261, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* %13, align 4
  %267 = call i32 @simple_rotate(i32* %231, i32* %250, i32 %257, i32 1, i32 %265, i32 %266)
  br label %607

268:                                              ; preds = %209, %205, %194
  %269 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %270 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %269, i32 0, i32 3
  %271 = load i64, i64* %270, align 8
  %272 = load i32, i32* @M_PI, align 4
  %273 = sext i32 %272 to i64
  %274 = sub nsw i64 %271, %273
  %275 = call i64 @fabs(i64 %274)
  %276 = load i64, i64* @FLT_EPSILON, align 8
  %277 = icmp slt i64 %275, %276
  br i1 %277, label %278, label %343

278:                                              ; preds = %268
  %279 = load i32, i32* %13, align 4
  %280 = load i32, i32* %15, align 4
  %281 = icmp eq i32 %279, %280
  br i1 %281, label %282, label %343

282:                                              ; preds = %278
  %283 = load i32, i32* %14, align 4
  %284 = load i32, i32* %16, align 4
  %285 = icmp eq i32 %283, %284
  br i1 %285, label %286, label %343

286:                                              ; preds = %282
  %287 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %287, i32 0, i32 1
  %289 = load i32**, i32*** %288, align 8
  %290 = load i32, i32* %17, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32*, i32** %289, i64 %291
  %293 = load i32*, i32** %292, align 8
  %294 = load i32, i32* %27, align 4
  %295 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %296 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %295, i32 0, i32 0
  %297 = load i32*, i32** %296, align 8
  %298 = load i32, i32* %17, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i32, i32* %297, i64 %299
  %301 = load i32, i32* %300, align 4
  %302 = mul nsw i32 %294, %301
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i32, i32* %293, i64 %303
  %305 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %306 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %305, i32 0, i32 1
  %307 = load i32**, i32*** %306, align 8
  %308 = load i32, i32* %17, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32*, i32** %307, i64 %309
  %311 = load i32*, i32** %310, align 8
  %312 = load i32, i32* %14, align 4
  %313 = load i32, i32* %27, align 4
  %314 = sub nsw i32 %312, %313
  %315 = sub nsw i32 %314, 1
  %316 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %317 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %316, i32 0, i32 0
  %318 = load i32*, i32** %317, align 8
  %319 = load i32, i32* %17, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %318, i64 %320
  %322 = load i32, i32* %321, align 4
  %323 = mul nsw i32 %315, %322
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i32, i32* %311, i64 %324
  %326 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %327 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %326, i32 0, i32 0
  %328 = load i32*, i32** %327, align 8
  %329 = load i32, i32* %17, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i32, i32* %328, i64 %330
  %332 = load i32, i32* %331, align 4
  %333 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %334 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %334, i32 0, i32 0
  %336 = load i32*, i32** %335, align 8
  %337 = load i32, i32* %17, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i32, i32* %336, i64 %338
  %340 = load i32, i32* %339, align 4
  %341 = load i32, i32* %13, align 4
  %342 = call i32 @simple_rotate(i32* %304, i32* %325, i32 %332, i32 2, i32 %340, i32 %341)
  br label %606

343:                                              ; preds = %282, %278, %268
  %344 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %345 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %344, i32 0, i32 3
  %346 = load i64, i64* %345, align 8
  %347 = load i32, i32* @M_PI, align 4
  %348 = mul nsw i32 3, %347
  %349 = sdiv i32 %348, 2
  %350 = sext i32 %349 to i64
  %351 = sub nsw i64 %346, %350
  %352 = call i64 @fabs(i64 %351)
  %353 = load i64, i64* @FLT_EPSILON, align 8
  %354 = icmp slt i64 %352, %353
  br i1 %354, label %355, label %421

355:                                              ; preds = %343
  %356 = load i32, i32* %13, align 4
  %357 = load i32, i32* %16, align 4
  %358 = icmp eq i32 %356, %357
  br i1 %358, label %359, label %421

359:                                              ; preds = %355
  %360 = load i32, i32* %14, align 4
  %361 = load i32, i32* %15, align 4
  %362 = icmp eq i32 %360, %361
  br i1 %362, label %363, label %421

363:                                              ; preds = %359
  %364 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %365 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %364, i32 0, i32 1
  %366 = load i32**, i32*** %365, align 8
  %367 = load i32, i32* %17, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i32*, i32** %366, i64 %368
  %370 = load i32*, i32** %369, align 8
  %371 = load i32, i32* %27, align 4
  %372 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %373 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %372, i32 0, i32 0
  %374 = load i32*, i32** %373, align 8
  %375 = load i32, i32* %17, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i32, i32* %374, i64 %376
  %378 = load i32, i32* %377, align 4
  %379 = mul nsw i32 %371, %378
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i32, i32* %370, i64 %380
  %382 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %383 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %382, i32 0, i32 1
  %384 = load i32**, i32*** %383, align 8
  %385 = load i32, i32* %17, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i32*, i32** %384, i64 %386
  %388 = load i32*, i32** %387, align 8
  %389 = load i32, i32* %14, align 4
  %390 = load i32, i32* %27, align 4
  %391 = sub nsw i32 %389, %390
  %392 = sub nsw i32 %391, 1
  %393 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %394 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %393, i32 0, i32 0
  %395 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %394, i32 0, i32 0
  %396 = load i32*, i32** %395, align 8
  %397 = load i32, i32* %17, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i32, i32* %396, i64 %398
  %400 = load i32, i32* %399, align 4
  %401 = mul nsw i32 %392, %400
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i32, i32* %388, i64 %402
  %404 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %405 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %404, i32 0, i32 0
  %406 = load i32*, i32** %405, align 8
  %407 = load i32, i32* %17, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i32, i32* %406, i64 %408
  %410 = load i32, i32* %409, align 4
  %411 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %412 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %411, i32 0, i32 0
  %413 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %412, i32 0, i32 0
  %414 = load i32*, i32** %413, align 8
  %415 = load i32, i32* %17, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds i32, i32* %414, i64 %416
  %418 = load i32, i32* %417, align 4
  %419 = load i32, i32* %13, align 4
  %420 = call i32 @simple_rotate(i32* %381, i32* %403, i32 %410, i32 3, i32 %418, i32 %419)
  br label %605

421:                                              ; preds = %359, %355, %343
  store i32 0, i32* %26, align 4
  br label %422

422:                                              ; preds = %601, %421
  %423 = load i32, i32* %26, align 4
  %424 = load i32, i32* %13, align 4
  %425 = icmp slt i32 %423, %424
  br i1 %425, label %426, label %604

426:                                              ; preds = %422
  %427 = load i32, i32* %28, align 4
  %428 = ashr i32 %427, 16
  store i32 %428, i32* %31, align 4
  %429 = load i32, i32* %29, align 4
  %430 = ashr i32 %429, 16
  store i32 %430, i32* %32, align 4
  %431 = load i32, i32* %31, align 4
  %432 = icmp sge i32 %431, -1
  br i1 %432, label %433, label %594

433:                                              ; preds = %426
  %434 = load i32, i32* %31, align 4
  %435 = load i32, i32* %15, align 4
  %436 = icmp sle i32 %434, %435
  br i1 %436, label %437, label %594

437:                                              ; preds = %433
  %438 = load i32, i32* %32, align 4
  %439 = icmp sge i32 %438, -1
  br i1 %439, label %440, label %594

440:                                              ; preds = %437
  %441 = load i32, i32* %32, align 4
  %442 = load i32, i32* %16, align 4
  %443 = icmp sle i32 %441, %442
  br i1 %443, label %444, label %594

444:                                              ; preds = %440
  %445 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %446 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %445, i32 0, i32 1
  %447 = load i32**, i32*** %446, align 8
  %448 = load i32, i32* %17, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds i32*, i32** %447, i64 %449
  %451 = load i32*, i32** %450, align 8
  %452 = load i32, i32* %27, align 4
  %453 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %454 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %453, i32 0, i32 0
  %455 = load i32*, i32** %454, align 8
  %456 = load i32, i32* %17, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds i32, i32* %455, i64 %457
  %459 = load i32, i32* %458, align 4
  %460 = mul nsw i32 %452, %459
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds i32, i32* %451, i64 %461
  %463 = load i32, i32* %26, align 4
  %464 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %465 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %464, i32 0, i32 0
  %466 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %465, i32 0, i32 0
  %467 = load i32*, i32** %466, align 8
  %468 = load i32, i32* %17, align 4
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds i32, i32* %467, i64 %469
  %471 = load i32, i32* %470, align 4
  %472 = mul nsw i32 %463, %471
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds i32, i32* %462, i64 %473
  store i32* %474, i32** %34, align 8
  %475 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %476 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %475, i32 0, i32 2
  %477 = load i64, i64* %476, align 8
  %478 = icmp ne i64 %477, 0
  br i1 %478, label %479, label %513

479:                                              ; preds = %444
  %480 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %481 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %480, i32 0, i32 1
  %482 = load i32* (i32*, i32*, i32, i32, i32, i32, i32, i32)*, i32* (i32*, i32*, i32, i32, i32, i32, i32, i32)** %481, align 8
  %483 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i64 0, i64 0
  %484 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %485 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %484, i32 0, i32 1
  %486 = load i32**, i32*** %485, align 8
  %487 = load i32, i32* %17, align 4
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds i32*, i32** %486, i64 %488
  %490 = load i32*, i32** %489, align 8
  %491 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %492 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %491, i32 0, i32 0
  %493 = load i32*, i32** %492, align 8
  %494 = load i32, i32* %17, align 4
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds i32, i32* %493, i64 %495
  %497 = load i32, i32* %496, align 4
  %498 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %499 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %498, i32 0, i32 0
  %500 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %499, i32 0, i32 0
  %501 = load i32*, i32** %500, align 8
  %502 = load i32, i32* %17, align 4
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds i32, i32* %501, i64 %503
  %505 = load i32, i32* %504, align 4
  %506 = load i32, i32* %28, align 4
  %507 = load i32, i32* %29, align 4
  %508 = load i32, i32* %15, align 4
  %509 = sub nsw i32 %508, 1
  %510 = load i32, i32* %16, align 4
  %511 = sub nsw i32 %510, 1
  %512 = call i32* %482(i32* %483, i32* %490, i32 %497, i32 %505, i32 %506, i32 %507, i32 %509, i32 %511)
  store i32* %512, i32** %33, align 8
  br label %552

513:                                              ; preds = %444
  %514 = load i32, i32* %31, align 4
  %515 = load i32, i32* %15, align 4
  %516 = sub nsw i32 %515, 1
  %517 = call i32 @av_clip(i32 %514, i32 0, i32 %516)
  store i32 %517, i32* %36, align 4
  %518 = load i32, i32* %32, align 4
  %519 = load i32, i32* %16, align 4
  %520 = sub nsw i32 %519, 1
  %521 = call i32 @av_clip(i32 %518, i32 0, i32 %520)
  store i32 %521, i32* %37, align 4
  %522 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %523 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %522, i32 0, i32 1
  %524 = load i32**, i32*** %523, align 8
  %525 = load i32, i32* %17, align 4
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds i32*, i32** %524, i64 %526
  %528 = load i32*, i32** %527, align 8
  %529 = load i32, i32* %37, align 4
  %530 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %531 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %530, i32 0, i32 0
  %532 = load i32*, i32** %531, align 8
  %533 = load i32, i32* %17, align 4
  %534 = sext i32 %533 to i64
  %535 = getelementptr inbounds i32, i32* %532, i64 %534
  %536 = load i32, i32* %535, align 4
  %537 = mul nsw i32 %529, %536
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds i32, i32* %528, i64 %538
  %540 = load i32, i32* %36, align 4
  %541 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %542 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %541, i32 0, i32 0
  %543 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %542, i32 0, i32 0
  %544 = load i32*, i32** %543, align 8
  %545 = load i32, i32* %17, align 4
  %546 = sext i32 %545 to i64
  %547 = getelementptr inbounds i32, i32* %544, i64 %546
  %548 = load i32, i32* %547, align 4
  %549 = mul nsw i32 %540, %548
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds i32, i32* %539, i64 %550
  store i32* %551, i32** %33, align 8
  br label %552

552:                                              ; preds = %513, %479
  %553 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %554 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %553, i32 0, i32 0
  %555 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %554, i32 0, i32 0
  %556 = load i32*, i32** %555, align 8
  %557 = load i32, i32* %17, align 4
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds i32, i32* %556, i64 %558
  %560 = load i32, i32* %559, align 4
  switch i32 %560, label %581 [
    i32 1, label %561
    i32 2, label %565
    i32 3, label %571
    i32 4, label %577
  ]

561:                                              ; preds = %552
  %562 = load i32*, i32** %33, align 8
  %563 = load i32, i32* %562, align 4
  %564 = load i32*, i32** %34, align 8
  store i32 %563, i32* %564, align 4
  br label %593

565:                                              ; preds = %552
  %566 = load i32*, i32** %33, align 8
  %567 = call i32 @AV_RL16(i32* %566)
  store i32 %567, i32* %30, align 4
  %568 = load i32*, i32** %34, align 8
  %569 = load i32, i32* %30, align 4
  %570 = call i32 @AV_WL16(i32* %568, i32 %569)
  br label %593

571:                                              ; preds = %552
  %572 = load i32*, i32** %33, align 8
  %573 = call i32 @AV_RB24(i32* %572)
  store i32 %573, i32* %30, align 4
  %574 = load i32*, i32** %34, align 8
  %575 = load i32, i32* %30, align 4
  %576 = call i32 @AV_WB24(i32* %574, i32 %575)
  br label %593

577:                                              ; preds = %552
  %578 = load i32*, i32** %33, align 8
  %579 = load i32, i32* %578, align 4
  %580 = load i32*, i32** %34, align 8
  store i32 %579, i32* %580, align 4
  br label %593

581:                                              ; preds = %552
  %582 = load i32*, i32** %34, align 8
  %583 = load i32*, i32** %33, align 8
  %584 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %585 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %584, i32 0, i32 0
  %586 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %585, i32 0, i32 0
  %587 = load i32*, i32** %586, align 8
  %588 = load i32, i32* %17, align 4
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds i32, i32* %587, i64 %589
  %591 = load i32, i32* %590, align 4
  %592 = call i32 @memcpy(i32* %582, i32* %583, i32 %591)
  br label %593

593:                                              ; preds = %581, %577, %571, %565, %561
  br label %594

594:                                              ; preds = %593, %440, %437, %433, %426
  %595 = load i32, i32* %20, align 4
  %596 = load i32, i32* %28, align 4
  %597 = add nsw i32 %596, %595
  store i32 %597, i32* %28, align 4
  %598 = load i32, i32* %21, align 4
  %599 = load i32, i32* %29, align 4
  %600 = sub nsw i32 %599, %598
  store i32 %600, i32* %29, align 4
  br label %601

601:                                              ; preds = %594
  %602 = load i32, i32* %26, align 4
  %603 = add nsw i32 %602, 1
  store i32 %603, i32* %26, align 4
  br label %422

604:                                              ; preds = %422
  br label %605

605:                                              ; preds = %604, %363
  br label %606

606:                                              ; preds = %605, %286
  br label %607

607:                                              ; preds = %606, %213
  br label %608

608:                                              ; preds = %607, %140
  %609 = load i32, i32* %21, align 4
  %610 = load i32, i32* %24, align 4
  %611 = add nsw i32 %610, %609
  store i32 %611, i32* %24, align 4
  %612 = load i32, i32* %20, align 4
  %613 = load i32, i32* %25, align 4
  %614 = add nsw i32 %613, %612
  store i32 %614, i32* %25, align 4
  br label %615

615:                                              ; preds = %608
  %616 = load i32, i32* %27, align 4
  %617 = add nsw i32 %616, 1
  store i32 %617, i32* %27, align 4
  br label %102

618:                                              ; preds = %102
  ret i32 0
}

declare dso_local i64 @fabs(i64) #1

declare dso_local i32 @simple_rotate(i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @av_clip(i32, i32, i32) #1

declare dso_local i32 @AV_RL16(i32*) #1

declare dso_local i32 @AV_WL16(i32*, i32) #1

declare dso_local i32 @AV_RB24(i32*) #1

declare dso_local i32 @AV_WB24(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ffv1enc.c_encode_slice.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ffv1enc.c_encode_slice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i64 }
%struct.TYPE_25__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, %struct.TYPE_24__, i64, i64, i64, i32, i32, i64, %struct.TYPE_22__, %struct.TYPE_21__* }
%struct.TYPE_24__ = type { i64, i64 }
%struct.TYPE_22__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32*, i32** }
%struct.TYPE_21__ = type { %struct.TYPE_25__* }
%struct.TYPE_20__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32 }

@AC_GOLOMB_RICE = common dso_local global i64 0, align 8
@AV_PIX_FMT_YA8 = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Buffer too small\0A\00", align 1
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Coding slice as PCM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_27__*, i8*)* @encode_slice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_slice(%struct.TYPE_27__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_26__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_24__, align 8
  %16 = alloca [4 x i32*], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %4, align 8
  store i8* %1, i8** %5, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = bitcast i8* %21 to i8**
  %23 = load i8*, i8** %22, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %24, %struct.TYPE_25__** %6, align 8
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %25, i32 0, i32 20
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %28, align 8
  store %struct.TYPE_25__* %29, %struct.TYPE_25__** %7, align 8
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %8, align 4
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %9, align 4
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %10, align 4
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %11, align 4
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %42, i32 0, i32 19
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_26__*, %struct.TYPE_26__** %44, align 8
  store %struct.TYPE_26__* %45, %struct.TYPE_26__** %12, align 8
  %46 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call %struct.TYPE_20__* @av_pix_fmt_desc_get(i64 %48)
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %13, align 4
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %55, i32 0, i32 12
  %57 = bitcast %struct.TYPE_24__* %15 to i8*
  %58 = bitcast %struct.TYPE_24__* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %57, i8* align 8 %58, i64 16, i1 false)
  %59 = getelementptr inbounds [4 x i32*], [4 x i32*]* %16, i64 0, i64 0
  %60 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %60, i32 0, i32 1
  %62 = load i32**, i32*** %61, align 8
  %63 = getelementptr inbounds i32*, i32** %62, i64 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %10, align 4
  %67 = mul nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %64, i64 %68
  %70 = load i32, i32* %11, align 4
  %71 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = mul nsw i32 %70, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %69, i64 %77
  store i32* %78, i32** %59, align 8
  %79 = getelementptr inbounds i32*, i32** %59, i64 1
  %80 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %80, i32 0, i32 1
  %82 = load i32**, i32*** %81, align 8
  %83 = getelementptr inbounds i32*, i32** %82, i64 1
  %84 = load i32*, i32** %83, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %106

86:                                               ; preds = %2
  %87 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %87, i32 0, i32 1
  %89 = load i32**, i32*** %88, align 8
  %90 = getelementptr inbounds i32*, i32** %89, i64 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %10, align 4
  %94 = mul nsw i32 %92, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %91, i64 %95
  %97 = load i32, i32* %11, align 4
  %98 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = mul nsw i32 %97, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %96, i64 %104
  br label %107

106:                                              ; preds = %2
  br label %107

107:                                              ; preds = %106, %86
  %108 = phi i32* [ %105, %86 ], [ null, %106 ]
  store i32* %108, i32** %79, align 8
  %109 = getelementptr inbounds i32*, i32** %79, i64 1
  %110 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %110, i32 0, i32 1
  %112 = load i32**, i32*** %111, align 8
  %113 = getelementptr inbounds i32*, i32** %112, i64 2
  %114 = load i32*, i32** %113, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %136

116:                                              ; preds = %107
  %117 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %117, i32 0, i32 1
  %119 = load i32**, i32*** %118, align 8
  %120 = getelementptr inbounds i32*, i32** %119, i64 2
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %13, align 4
  %123 = load i32, i32* %10, align 4
  %124 = mul nsw i32 %122, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %121, i64 %125
  %127 = load i32, i32* %11, align 4
  %128 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 2
  %132 = load i32, i32* %131, align 4
  %133 = mul nsw i32 %127, %132
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %126, i64 %134
  br label %137

136:                                              ; preds = %107
  br label %137

137:                                              ; preds = %136, %116
  %138 = phi i32* [ %135, %116 ], [ null, %136 ]
  store i32* %138, i32** %109, align 8
  %139 = getelementptr inbounds i32*, i32** %109, i64 1
  %140 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %140, i32 0, i32 1
  %142 = load i32**, i32*** %141, align 8
  %143 = getelementptr inbounds i32*, i32** %142, i64 3
  %144 = load i32*, i32** %143, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %166

146:                                              ; preds = %137
  %147 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %148 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %147, i32 0, i32 1
  %149 = load i32**, i32*** %148, align 8
  %150 = getelementptr inbounds i32*, i32** %149, i64 3
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %13, align 4
  %153 = load i32, i32* %10, align 4
  %154 = mul nsw i32 %152, %153
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %151, i64 %155
  %157 = load i32, i32* %11, align 4
  %158 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 3
  %162 = load i32, i32* %161, align 4
  %163 = mul nsw i32 %157, %162
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %156, i64 %164
  br label %167

166:                                              ; preds = %137
  br label %167

167:                                              ; preds = %166, %146
  %168 = phi i32* [ %165, %146 ], [ null, %166 ]
  store i32* %168, i32** %139, align 8
  %169 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %169, i32 0, i32 4
  store i32 0, i32* %170, align 8
  %171 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 4
  %174 = icmp sgt i32 %173, 3
  br i1 %174, label %175, label %184

175:                                              ; preds = %167
  %176 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %177 = getelementptr inbounds [4 x i32*], [4 x i32*]* %16, i64 0, i64 0
  %178 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %179 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %8, align 4
  %182 = load i32, i32* %9, align 4
  %183 = call i32 @choose_rct_params(%struct.TYPE_25__* %176, i32** %177, i32* %180, i32 %181, i32 %182)
  br label %189

184:                                              ; preds = %167
  %185 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %185, i32 0, i32 6
  store i32 1, i32* %186, align 8
  %187 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %187, i32 0, i32 7
  store i32 1, i32* %188, align 4
  br label %189

189:                                              ; preds = %184, %175
  br label %190

190:                                              ; preds = %543, %189
  %191 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %191, i32 0, i32 18
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %190
  %196 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %197 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %198 = call i32 @ff_ffv1_clear_slice_state(%struct.TYPE_25__* %196, %struct.TYPE_25__* %197)
  br label %199

199:                                              ; preds = %195, %190
  %200 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %200, i32 0, i32 5
  %202 = load i32, i32* %201, align 4
  %203 = icmp sgt i32 %202, 2
  br i1 %203, label %204, label %208

204:                                              ; preds = %199
  %205 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %206 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %207 = call i32 @encode_slice_header(%struct.TYPE_25__* %205, %struct.TYPE_25__* %206)
  br label %208

208:                                              ; preds = %204, %199
  %209 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %209, i32 0, i32 8
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @AC_GOLOMB_RICE, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %265

214:                                              ; preds = %208
  %215 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %215, i32 0, i32 5
  %217 = load i32, i32* %216, align 4
  %218 = icmp sgt i32 %217, 2
  br i1 %218, label %225, label %219

219:                                              ; preds = %214
  %220 = load i32, i32* %10, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %234, label %222

222:                                              ; preds = %219
  %223 = load i32, i32* %11, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %234, label %225

225:                                              ; preds = %222, %214
  %226 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %226, i32 0, i32 12
  %228 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %228, i32 0, i32 5
  %230 = load i32, i32* %229, align 4
  %231 = icmp sgt i32 %230, 2
  %232 = zext i1 %231 to i32
  %233 = call i32 @ff_rac_terminate(%struct.TYPE_24__* %227, i32 %232)
  br label %235

234:                                              ; preds = %222, %219
  br label %235

235:                                              ; preds = %234, %225
  %236 = phi i32 [ %233, %225 ], [ 0, %234 ]
  %237 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %237, i32 0, i32 16
  store i32 %236, i32* %238, align 8
  %239 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %239, i32 0, i32 17
  %241 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %241, i32 0, i32 12
  %243 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %245, i32 0, i32 16
  %247 = load i32, i32* %246, align 8
  %248 = sext i32 %247 to i64
  %249 = add nsw i64 %244, %248
  %250 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %250, i32 0, i32 12
  %252 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %254, i32 0, i32 12
  %256 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = sub nsw i64 %253, %257
  %259 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %260 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %259, i32 0, i32 16
  %261 = load i32, i32* %260, align 8
  %262 = sext i32 %261 to i64
  %263 = sub nsw i64 %258, %262
  %264 = call i32 @init_put_bits(i32* %240, i64 %249, i64 %263)
  br label %265

265:                                              ; preds = %235, %208
  %266 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %267 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %266, i32 0, i32 9
  %268 = load i64, i64* %267, align 8
  %269 = icmp eq i64 %268, 0
  br i1 %269, label %270, label %427

270:                                              ; preds = %265
  %271 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = load i64, i64* @AV_PIX_FMT_YA8, align 8
  %275 = icmp ne i64 %273, %274
  br i1 %275, label %276, label %427

276:                                              ; preds = %270
  %277 = load i32, i32* %8, align 4
  %278 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %279 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %278, i32 0, i32 10
  %280 = load i32, i32* %279, align 8
  %281 = call i32 @AV_CEIL_RSHIFT(i32 %277, i32 %280)
  store i32 %281, i32* %17, align 4
  %282 = load i32, i32* %9, align 4
  %283 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %284 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %283, i32 0, i32 11
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @AV_CEIL_RSHIFT(i32 %282, i32 %285)
  store i32 %286, i32* %18, align 4
  %287 = load i32, i32* %10, align 4
  %288 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %289 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %288, i32 0, i32 10
  %290 = load i32, i32* %289, align 8
  %291 = ashr i32 %287, %290
  store i32 %291, i32* %19, align 4
  %292 = load i32, i32* %11, align 4
  %293 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %294 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %293, i32 0, i32 11
  %295 = load i32, i32* %294, align 4
  %296 = ashr i32 %292, %295
  store i32 %296, i32* %20, align 4
  %297 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %298 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %299 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %298, i32 0, i32 1
  %300 = load i32**, i32*** %299, align 8
  %301 = getelementptr inbounds i32*, i32** %300, i64 0
  %302 = load i32*, i32** %301, align 8
  %303 = load i32, i32* %13, align 4
  %304 = load i32, i32* %10, align 4
  %305 = mul nsw i32 %303, %304
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32, i32* %302, i64 %306
  %308 = load i32, i32* %11, align 4
  %309 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %310 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %309, i32 0, i32 0
  %311 = load i32*, i32** %310, align 8
  %312 = getelementptr inbounds i32, i32* %311, i64 0
  %313 = load i32, i32* %312, align 4
  %314 = mul nsw i32 %308, %313
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i32, i32* %307, i64 %315
  %317 = load i32, i32* %8, align 4
  %318 = load i32, i32* %9, align 4
  %319 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %320 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %319, i32 0, i32 0
  %321 = load i32*, i32** %320, align 8
  %322 = getelementptr inbounds i32, i32* %321, i64 0
  %323 = load i32, i32* %322, align 4
  %324 = call i32 @encode_plane(%struct.TYPE_25__* %297, i32* %316, i32 %317, i32 %318, i32 %323, i32 0, i32 1)
  store i32 %324, i32* %14, align 4
  %325 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %326 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %325, i32 0, i32 15
  %327 = load i64, i64* %326, align 8
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %390

329:                                              ; preds = %276
  %330 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %331 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %332 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %331, i32 0, i32 1
  %333 = load i32**, i32*** %332, align 8
  %334 = getelementptr inbounds i32*, i32** %333, i64 1
  %335 = load i32*, i32** %334, align 8
  %336 = load i32, i32* %13, align 4
  %337 = load i32, i32* %19, align 4
  %338 = mul nsw i32 %336, %337
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i32, i32* %335, i64 %339
  %341 = load i32, i32* %20, align 4
  %342 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %343 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %342, i32 0, i32 0
  %344 = load i32*, i32** %343, align 8
  %345 = getelementptr inbounds i32, i32* %344, i64 1
  %346 = load i32, i32* %345, align 4
  %347 = mul nsw i32 %341, %346
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i32, i32* %340, i64 %348
  %350 = load i32, i32* %17, align 4
  %351 = load i32, i32* %18, align 4
  %352 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %353 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %352, i32 0, i32 0
  %354 = load i32*, i32** %353, align 8
  %355 = getelementptr inbounds i32, i32* %354, i64 1
  %356 = load i32, i32* %355, align 4
  %357 = call i32 @encode_plane(%struct.TYPE_25__* %330, i32* %349, i32 %350, i32 %351, i32 %356, i32 1, i32 1)
  %358 = load i32, i32* %14, align 4
  %359 = or i32 %358, %357
  store i32 %359, i32* %14, align 4
  %360 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %361 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %362 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %361, i32 0, i32 1
  %363 = load i32**, i32*** %362, align 8
  %364 = getelementptr inbounds i32*, i32** %363, i64 2
  %365 = load i32*, i32** %364, align 8
  %366 = load i32, i32* %13, align 4
  %367 = load i32, i32* %19, align 4
  %368 = mul nsw i32 %366, %367
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i32, i32* %365, i64 %369
  %371 = load i32, i32* %20, align 4
  %372 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %373 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %372, i32 0, i32 0
  %374 = load i32*, i32** %373, align 8
  %375 = getelementptr inbounds i32, i32* %374, i64 2
  %376 = load i32, i32* %375, align 4
  %377 = mul nsw i32 %371, %376
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i32, i32* %370, i64 %378
  %380 = load i32, i32* %17, align 4
  %381 = load i32, i32* %18, align 4
  %382 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %383 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %382, i32 0, i32 0
  %384 = load i32*, i32** %383, align 8
  %385 = getelementptr inbounds i32, i32* %384, i64 2
  %386 = load i32, i32* %385, align 4
  %387 = call i32 @encode_plane(%struct.TYPE_25__* %360, i32* %379, i32 %380, i32 %381, i32 %386, i32 1, i32 1)
  %388 = load i32, i32* %14, align 4
  %389 = or i32 %388, %387
  store i32 %389, i32* %14, align 4
  br label %390

390:                                              ; preds = %329, %276
  %391 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %392 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %391, i32 0, i32 14
  %393 = load i64, i64* %392, align 8
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %395, label %426

395:                                              ; preds = %390
  %396 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %397 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %398 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %397, i32 0, i32 1
  %399 = load i32**, i32*** %398, align 8
  %400 = getelementptr inbounds i32*, i32** %399, i64 3
  %401 = load i32*, i32** %400, align 8
  %402 = load i32, i32* %13, align 4
  %403 = load i32, i32* %10, align 4
  %404 = mul nsw i32 %402, %403
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i32, i32* %401, i64 %405
  %407 = load i32, i32* %11, align 4
  %408 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %409 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %408, i32 0, i32 0
  %410 = load i32*, i32** %409, align 8
  %411 = getelementptr inbounds i32, i32* %410, i64 3
  %412 = load i32, i32* %411, align 4
  %413 = mul nsw i32 %407, %412
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i32, i32* %406, i64 %414
  %416 = load i32, i32* %8, align 4
  %417 = load i32, i32* %9, align 4
  %418 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %419 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %418, i32 0, i32 0
  %420 = load i32*, i32** %419, align 8
  %421 = getelementptr inbounds i32, i32* %420, i64 3
  %422 = load i32, i32* %421, align 4
  %423 = call i32 @encode_plane(%struct.TYPE_25__* %396, i32* %415, i32 %416, i32 %417, i32 %422, i32 2, i32 1)
  %424 = load i32, i32* %14, align 4
  %425 = or i32 %424, %423
  store i32 %425, i32* %14, align 4
  br label %426

426:                                              ; preds = %395, %390
  br label %518

427:                                              ; preds = %270, %265
  %428 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %429 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %428, i32 0, i32 0
  %430 = load i64, i64* %429, align 8
  %431 = load i64, i64* @AV_PIX_FMT_YA8, align 8
  %432 = icmp eq i64 %430, %431
  br i1 %432, label %433, label %493

433:                                              ; preds = %427
  %434 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %435 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %436 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %435, i32 0, i32 1
  %437 = load i32**, i32*** %436, align 8
  %438 = getelementptr inbounds i32*, i32** %437, i64 0
  %439 = load i32*, i32** %438, align 8
  %440 = load i32, i32* %13, align 4
  %441 = load i32, i32* %10, align 4
  %442 = mul nsw i32 %440, %441
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds i32, i32* %439, i64 %443
  %445 = load i32, i32* %11, align 4
  %446 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %447 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %446, i32 0, i32 0
  %448 = load i32*, i32** %447, align 8
  %449 = getelementptr inbounds i32, i32* %448, i64 0
  %450 = load i32, i32* %449, align 4
  %451 = mul nsw i32 %445, %450
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds i32, i32* %444, i64 %452
  %454 = load i32, i32* %8, align 4
  %455 = load i32, i32* %9, align 4
  %456 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %457 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %456, i32 0, i32 0
  %458 = load i32*, i32** %457, align 8
  %459 = getelementptr inbounds i32, i32* %458, i64 0
  %460 = load i32, i32* %459, align 4
  %461 = call i32 @encode_plane(%struct.TYPE_25__* %434, i32* %453, i32 %454, i32 %455, i32 %460, i32 0, i32 2)
  store i32 %461, i32* %14, align 4
  %462 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %463 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %464 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %463, i32 0, i32 1
  %465 = load i32**, i32*** %464, align 8
  %466 = getelementptr inbounds i32*, i32** %465, i64 0
  %467 = load i32*, i32** %466, align 8
  %468 = getelementptr inbounds i32, i32* %467, i64 1
  %469 = load i32, i32* %13, align 4
  %470 = load i32, i32* %10, align 4
  %471 = mul nsw i32 %469, %470
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds i32, i32* %468, i64 %472
  %474 = load i32, i32* %11, align 4
  %475 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %476 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %475, i32 0, i32 0
  %477 = load i32*, i32** %476, align 8
  %478 = getelementptr inbounds i32, i32* %477, i64 0
  %479 = load i32, i32* %478, align 4
  %480 = mul nsw i32 %474, %479
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds i32, i32* %473, i64 %481
  %483 = load i32, i32* %8, align 4
  %484 = load i32, i32* %9, align 4
  %485 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %486 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %485, i32 0, i32 0
  %487 = load i32*, i32** %486, align 8
  %488 = getelementptr inbounds i32, i32* %487, i64 0
  %489 = load i32, i32* %488, align 4
  %490 = call i32 @encode_plane(%struct.TYPE_25__* %462, i32* %482, i32 %483, i32 %484, i32 %489, i32 1, i32 2)
  %491 = load i32, i32* %14, align 4
  %492 = or i32 %491, %490
  store i32 %492, i32* %14, align 4
  br label %517

493:                                              ; preds = %427
  %494 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %495 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %494, i32 0, i32 13
  %496 = load i64, i64* %495, align 8
  %497 = icmp ne i64 %496, 0
  br i1 %497, label %498, label %507

498:                                              ; preds = %493
  %499 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %500 = getelementptr inbounds [4 x i32*], [4 x i32*]* %16, i64 0, i64 0
  %501 = load i32, i32* %8, align 4
  %502 = load i32, i32* %9, align 4
  %503 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %504 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %503, i32 0, i32 0
  %505 = load i32*, i32** %504, align 8
  %506 = call i32 @encode_rgb_frame32(%struct.TYPE_25__* %499, i32** %500, i32 %501, i32 %502, i32* %505)
  store i32 %506, i32* %14, align 4
  br label %516

507:                                              ; preds = %493
  %508 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %509 = getelementptr inbounds [4 x i32*], [4 x i32*]* %16, i64 0, i64 0
  %510 = load i32, i32* %8, align 4
  %511 = load i32, i32* %9, align 4
  %512 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %513 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %512, i32 0, i32 0
  %514 = load i32*, i32** %513, align 8
  %515 = call i32 @encode_rgb_frame(%struct.TYPE_25__* %508, i32** %509, i32 %510, i32 %511, i32* %514)
  store i32 %515, i32* %14, align 4
  br label %516

516:                                              ; preds = %507, %498
  br label %517

517:                                              ; preds = %516, %433
  br label %518

518:                                              ; preds = %517, %426
  %519 = call i32 (...) @emms_c()
  %520 = load i32, i32* %14, align 4
  %521 = icmp slt i32 %520, 0
  br i1 %521, label %522, label %553

522:                                              ; preds = %518
  %523 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %524 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %523, i32 0, i32 4
  %525 = load i32, i32* %524, align 8
  %526 = icmp eq i32 %525, 0
  %527 = zext i1 %526 to i32
  %528 = call i32 @av_assert0(i32 %527)
  %529 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %530 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %529, i32 0, i32 5
  %531 = load i32, i32* %530, align 4
  %532 = icmp slt i32 %531, 4
  br i1 %532, label %538, label %533

533:                                              ; preds = %522
  %534 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %535 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %534, i32 0, i32 8
  %536 = load i64, i64* %535, align 8
  %537 = icmp ne i64 %536, 0
  br i1 %537, label %543, label %538

538:                                              ; preds = %533, %522
  %539 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %540 = load i32, i32* @AV_LOG_ERROR, align 4
  %541 = call i32 @av_log(%struct.TYPE_27__* %539, i32 %540, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %542 = load i32, i32* %14, align 4
  store i32 %542, i32* %3, align 4
  br label %554

543:                                              ; preds = %533
  %544 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %545 = load i32, i32* @AV_LOG_DEBUG, align 4
  %546 = call i32 @av_log(%struct.TYPE_27__* %544, i32 %545, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %547 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %548 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %547, i32 0, i32 4
  store i32 1, i32* %548, align 8
  %549 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %550 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %549, i32 0, i32 12
  %551 = bitcast %struct.TYPE_24__* %550 to i8*
  %552 = bitcast %struct.TYPE_24__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %551, i8* align 8 %552, i64 16, i1 false)
  br label %190

553:                                              ; preds = %518
  store i32 0, i32* %3, align 4
  br label %554

554:                                              ; preds = %553, %538
  %555 = load i32, i32* %3, align 4
  ret i32 %555
}

declare dso_local %struct.TYPE_20__* @av_pix_fmt_desc_get(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @choose_rct_params(%struct.TYPE_25__*, i32**, i32*, i32, i32) #1

declare dso_local i32 @ff_ffv1_clear_slice_state(%struct.TYPE_25__*, %struct.TYPE_25__*) #1

declare dso_local i32 @encode_slice_header(%struct.TYPE_25__*, %struct.TYPE_25__*) #1

declare dso_local i32 @ff_rac_terminate(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @init_put_bits(i32*, i64, i64) #1

declare dso_local i32 @AV_CEIL_RSHIFT(i32, i32) #1

declare dso_local i32 @encode_plane(%struct.TYPE_25__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @encode_rgb_frame32(%struct.TYPE_25__*, i32**, i32, i32, i32*) #1

declare dso_local i32 @encode_rgb_frame(%struct.TYPE_25__*, i32**, i32, i32, i32*) #1

declare dso_local i32 @emms_c(...) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_27__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

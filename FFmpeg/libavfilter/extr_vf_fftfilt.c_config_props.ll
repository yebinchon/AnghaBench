; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_fftfilt.c_config_props.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_fftfilt.c_config_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32*, i32*, i32*, i32*, i32*, i32*, i64, i32, i32, i8**, i8**, i8**, i8**, i8**, i8**, i8**, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@DFT_R2C = common dso_local global i32 0, align 4
@IDFT_C2R = common dso_local global i32 0, align 4
@EVAL_MODE_INIT = common dso_local global i64 0, align 8
@rdft_horizontal8 = common dso_local global i32 0, align 4
@irdft_horizontal8 = common dso_local global i32 0, align 4
@rdft_horizontal16 = common dso_local global i32 0, align 4
@irdft_horizontal16 = common dso_local global i32 0, align 4
@AVERROR_BUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @config_props to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_props(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 3
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %4, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.TYPE_13__* @av_pix_fmt_desc_get(i32 %19)
  store %struct.TYPE_13__* %20, %struct.TYPE_13__** %5, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i8* @AV_CEIL_RSHIFT(i32 %31, i32 %34)
  %36 = ptrtoint i8* %35 to i32
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  store i32 %36, i32* %40, align 4
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  store i32 %36, i32* %44, align 4
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 3
  store i32 %47, i32* %51, align 4
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  store i32 %47, i32* %55, align 4
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @AV_CEIL_RSHIFT(i32 %58, i32 %61)
  %63 = ptrtoint i8* %62 to i32
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  store i32 %63, i32* %67, align 4
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  store i32 %63, i32* %71, align 4
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 3
  store i32 %74, i32* %78, align 4
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  store i32 %74, i32* %82, align 4
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @av_pix_fmt_count_planes(i32 %85)
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 17
  store i32 %86, i32* %88, align 8
  store i32 0, i32* %8, align 4
  br label %89

89:                                               ; preds = %296, %1
  %90 = load i32, i32* %8, align 4
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %299

95:                                               ; preds = %89
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %10, align 4
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %11, align 4
  store i32 1, i32* %6, align 4
  br label %110

110:                                              ; preds = %118, %95
  %111 = load i32, i32* %6, align 4
  %112 = shl i32 1, %111
  %113 = load i32, i32* %10, align 4
  %114 = mul nsw i32 %113, 10
  %115 = sdiv i32 %114, 9
  %116 = icmp slt i32 %112, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %110
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %6, align 4
  br label %110

121:                                              ; preds = %110
  %122 = load i32, i32* %6, align 4
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 3
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  store i32 %122, i32* %128, align 4
  %129 = load i32, i32* %6, align 4
  %130 = shl i32 1, %129
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 4
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %8, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  store i32 %130, i32* %136, align 4
  %137 = load i32, i32* %11, align 4
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 4
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %8, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = sext i32 %144 to i64
  %146 = mul i64 %145, 4
  %147 = trunc i64 %146 to i32
  %148 = call i8* @av_malloc_array(i32 %137, i32 %147)
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 16
  %151 = load i8**, i8*** %150, align 8
  %152 = load i32, i32* %8, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8*, i8** %151, i64 %153
  store i8* %148, i8** %154, align 8
  %155 = icmp ne i8* %148, null
  br i1 %155, label %159, label %156

156:                                              ; preds = %121
  %157 = load i32, i32* @ENOMEM, align 4
  %158 = call i32 @AVERROR(i32 %157)
  store i32 %158, i32* %2, align 4
  br label %375

159:                                              ; preds = %121
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 3
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %8, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @DFT_R2C, align 4
  %168 = call i8* @av_rdft_init(i32 %166, i32 %167)
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 15
  %171 = load i8**, i8*** %170, align 8
  %172 = load i32, i32* %8, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8*, i8** %171, i64 %173
  store i8* %168, i8** %174, align 8
  %175 = icmp ne i8* %168, null
  br i1 %175, label %179, label %176

176:                                              ; preds = %159
  %177 = load i32, i32* @ENOMEM, align 4
  %178 = call i32 @AVERROR(i32 %177)
  store i32 %178, i32* %2, align 4
  br label %375

179:                                              ; preds = %159
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 3
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %8, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @IDFT_C2R, align 4
  %188 = call i8* @av_rdft_init(i32 %186, i32 %187)
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 14
  %191 = load i8**, i8*** %190, align 8
  %192 = load i32, i32* %8, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8*, i8** %191, i64 %193
  store i8* %188, i8** %194, align 8
  %195 = icmp ne i8* %188, null
  br i1 %195, label %199, label %196

196:                                              ; preds = %179
  %197 = load i32, i32* @ENOMEM, align 4
  %198 = call i32 @AVERROR(i32 %197)
  store i32 %198, i32* %2, align 4
  br label %375

199:                                              ; preds = %179
  store i32 1, i32* %7, align 4
  br label %200

200:                                              ; preds = %208, %199
  %201 = load i32, i32* %7, align 4
  %202 = shl i32 1, %201
  %203 = load i32, i32* %11, align 4
  %204 = mul nsw i32 %203, 10
  %205 = sdiv i32 %204, 9
  %206 = icmp slt i32 %202, %205
  br i1 %206, label %207, label %211

207:                                              ; preds = %200
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %7, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %7, align 4
  br label %200

211:                                              ; preds = %200
  %212 = load i32, i32* %7, align 4
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 5
  %215 = load i32*, i32** %214, align 8
  %216 = load i32, i32* %8, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  store i32 %212, i32* %218, align 4
  %219 = load i32, i32* %7, align 4
  %220 = shl i32 1, %219
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 6
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* %8, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  store i32 %220, i32* %226, align 4
  %227 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 4
  %229 = load i32*, i32** %228, align 8
  %230 = load i32, i32* %8, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %229, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 6
  %236 = load i32*, i32** %235, align 8
  %237 = load i32, i32* %8, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = sext i32 %240 to i64
  %242 = mul i64 %241, 4
  %243 = trunc i64 %242 to i32
  %244 = call i8* @av_malloc_array(i32 %233, i32 %243)
  %245 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 13
  %247 = load i8**, i8*** %246, align 8
  %248 = load i32, i32* %8, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i8*, i8** %247, i64 %249
  store i8* %244, i8** %250, align 8
  %251 = icmp ne i8* %244, null
  br i1 %251, label %255, label %252

252:                                              ; preds = %211
  %253 = load i32, i32* @ENOMEM, align 4
  %254 = call i32 @AVERROR(i32 %253)
  store i32 %254, i32* %2, align 4
  br label %375

255:                                              ; preds = %211
  %256 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 5
  %258 = load i32*, i32** %257, align 8
  %259 = load i32, i32* %8, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %258, i64 %260
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* @DFT_R2C, align 4
  %264 = call i8* @av_rdft_init(i32 %262, i32 %263)
  %265 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %265, i32 0, i32 12
  %267 = load i8**, i8*** %266, align 8
  %268 = load i32, i32* %8, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i8*, i8** %267, i64 %269
  store i8* %264, i8** %270, align 8
  %271 = icmp ne i8* %264, null
  br i1 %271, label %275, label %272

272:                                              ; preds = %255
  %273 = load i32, i32* @ENOMEM, align 4
  %274 = call i32 @AVERROR(i32 %273)
  store i32 %274, i32* %2, align 4
  br label %375

275:                                              ; preds = %255
  %276 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %276, i32 0, i32 5
  %278 = load i32*, i32** %277, align 8
  %279 = load i32, i32* %8, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %278, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* @IDFT_C2R, align 4
  %284 = call i8* @av_rdft_init(i32 %282, i32 %283)
  %285 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %286 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %285, i32 0, i32 11
  %287 = load i8**, i8*** %286, align 8
  %288 = load i32, i32* %8, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i8*, i8** %287, i64 %289
  store i8* %284, i8** %290, align 8
  %291 = icmp ne i8* %284, null
  br i1 %291, label %295, label %292

292:                                              ; preds = %275
  %293 = load i32, i32* @ENOMEM, align 4
  %294 = call i32 @AVERROR(i32 %293)
  store i32 %294, i32* %2, align 4
  br label %375

295:                                              ; preds = %275
  br label %296

296:                                              ; preds = %295
  %297 = load i32, i32* %8, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %8, align 4
  br label %89

299:                                              ; preds = %89
  store i32 0, i32* %9, align 4
  br label %300

300:                                              ; preds = %344, %299
  %301 = load i32, i32* %9, align 4
  %302 = icmp slt i32 %301, 3
  br i1 %302, label %303, label %347

303:                                              ; preds = %300
  %304 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %305 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %304, i32 0, i32 4
  %306 = load i32*, i32** %305, align 8
  %307 = load i32, i32* %9, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i32, i32* %306, i64 %308
  %310 = load i32, i32* %309, align 4
  %311 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %312 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %311, i32 0, i32 6
  %313 = load i32*, i32** %312, align 8
  %314 = load i32, i32* %9, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i32, i32* %313, i64 %315
  %317 = load i32, i32* %316, align 4
  %318 = sext i32 %317 to i64
  %319 = mul i64 %318, 8
  %320 = trunc i64 %319 to i32
  %321 = call i8* @av_malloc_array(i32 %310, i32 %320)
  %322 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %323 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %322, i32 0, i32 10
  %324 = load i8**, i8*** %323, align 8
  %325 = load i32, i32* %9, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i8*, i8** %324, i64 %326
  store i8* %321, i8** %327, align 8
  %328 = icmp ne i8* %321, null
  br i1 %328, label %332, label %329

329:                                              ; preds = %303
  %330 = load i32, i32* @ENOMEM, align 4
  %331 = call i32 @AVERROR(i32 %330)
  store i32 %331, i32* %2, align 4
  br label %375

332:                                              ; preds = %303
  %333 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %334 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %333, i32 0, i32 7
  %335 = load i64, i64* %334, align 8
  %336 = load i64, i64* @EVAL_MODE_INIT, align 8
  %337 = icmp eq i64 %335, %336
  br i1 %337, label %338, label %343

338:                                              ; preds = %332
  %339 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %340 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %341 = load i32, i32* %9, align 4
  %342 = call i32 @do_eval(%struct.TYPE_12__* %339, %struct.TYPE_14__* %340, i32 %341)
  br label %343

343:                                              ; preds = %338, %332
  br label %344

344:                                              ; preds = %343
  %345 = load i32, i32* %9, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %9, align 4
  br label %300

347:                                              ; preds = %300
  %348 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %349 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = icmp sle i32 %350, 8
  br i1 %351, label %352, label %359

352:                                              ; preds = %347
  %353 = load i32, i32* @rdft_horizontal8, align 4
  %354 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %355 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %354, i32 0, i32 9
  store i32 %353, i32* %355, align 4
  %356 = load i32, i32* @irdft_horizontal8, align 4
  %357 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %358 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %357, i32 0, i32 8
  store i32 %356, i32* %358, align 8
  br label %374

359:                                              ; preds = %347
  %360 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %361 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 8
  %363 = icmp sgt i32 %362, 8
  br i1 %363, label %364, label %371

364:                                              ; preds = %359
  %365 = load i32, i32* @rdft_horizontal16, align 4
  %366 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %367 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %366, i32 0, i32 9
  store i32 %365, i32* %367, align 4
  %368 = load i32, i32* @irdft_horizontal16, align 4
  %369 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %370 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %369, i32 0, i32 8
  store i32 %368, i32* %370, align 8
  br label %373

371:                                              ; preds = %359
  %372 = load i32, i32* @AVERROR_BUG, align 4
  store i32 %372, i32* %2, align 4
  br label %375

373:                                              ; preds = %364
  br label %374

374:                                              ; preds = %373, %352
  store i32 0, i32* %2, align 4
  br label %375

375:                                              ; preds = %374, %371, %329, %292, %272, %252, %196, %176, %156
  %376 = load i32, i32* %2, align 4
  ret i32 %376
}

declare dso_local %struct.TYPE_13__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i8* @AV_CEIL_RSHIFT(i32, i32) #1

declare dso_local i32 @av_pix_fmt_count_planes(i32) #1

declare dso_local i8* @av_malloc_array(i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @av_rdft_init(i32, i32) #1

declare dso_local i32 @do_eval(%struct.TYPE_12__*, %struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

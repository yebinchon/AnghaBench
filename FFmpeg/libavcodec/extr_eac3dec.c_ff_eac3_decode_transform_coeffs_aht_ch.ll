; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_eac3dec.c_ff_eac3_decode_transform_coeffs_aht_ch.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_eac3dec.c_ff_eac3_decode_transform_coeffs_aht_ch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32**, i32***, i32, i32, i32 }

@AC3_MAX_COEFS = common dso_local global i32 0, align 4
@EAC3_GAQ_12 = common dso_local global i32 0, align 4
@EAC3_GAQ_14 = common dso_local global i32 0, align 4
@EAC3_GAQ_124 = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"GAQ gain group code out-of-range\0A\00", align 1
@ff_ac3_ungroup_3_in_5_bits_tab = common dso_local global i32** null, align 8
@ff_eac3_bits_vs_hebap = common dso_local global i32* null, align 8
@ff_eac3_mantissa_vq = common dso_local global i32*** null, align 8
@EAC3_GAQ_NO = common dso_local global i32 0, align 4
@ff_eac3_gaq_remap_2_4_b = common dso_local global i32** null, align 8
@ff_eac3_gaq_remap_2_4_a = common dso_local global i32** null, align 8
@ff_eac3_gaq_remap_1 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32)* @ff_eac3_decode_transform_coeffs_aht_ch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ff_eac3_decode_transform_coeffs_aht_ch(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
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
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 6
  store i32* %24, i32** %10, align 8
  %25 = load i32, i32* @AC3_MAX_COEFS, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %11, align 8
  %28 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %12, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = call i32 @get_bits(i32* %29, i32 2)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 2
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 12, i32 17
  store i32 %34, i32* %8, align 4
  store i32 0, i32* %7, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @EAC3_GAQ_12, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %2
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @EAC3_GAQ_14, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %102

42:                                               ; preds = %38, %2
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %98, %42
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %51, %58
  br i1 %59, label %60, label %101

60:                                               ; preds = %50
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  %63 = load i32**, i32*** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32*, i32** %63, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = icmp sgt i32 %71, 7
  br i1 %72, label %73, label %97

73:                                               ; preds = %60
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 2
  %76 = load i32**, i32*** %75, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32*, i32** %76, i64 %78
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %97

87:                                               ; preds = %73
  %88 = load i32*, i32** %10, align 8
  %89 = call i32 @get_bits1(i32* %88)
  %90 = load i32, i32* %9, align 4
  %91 = sub nsw i32 %90, 1
  %92 = shl i32 %89, %91
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %7, align 4
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i32, i32* %28, i64 %95
  store i32 %92, i32* %96, align 4
  br label %97

97:                                               ; preds = %87, %73, %60
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %5, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %5, align 4
  br label %50

101:                                              ; preds = %50
  br label %206

102:                                              ; preds = %38
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* @EAC3_GAQ_124, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %205

106:                                              ; preds = %102
  store i32 2, i32* %13, align 4
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %4, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %201, %106
  %115 = load i32, i32* %5, align 4
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %4, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = icmp slt i32 %115, %122
  br i1 %123, label %124, label %204

124:                                              ; preds = %114
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 2
  %127 = load i32**, i32*** %126, align 8
  %128 = load i32, i32* %4, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32*, i32** %127, i64 %129
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %5, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = icmp sgt i32 %135, 7
  br i1 %136, label %137, label %200

137:                                              ; preds = %124
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 2
  %140 = load i32**, i32*** %139, align 8
  %141 = load i32, i32* %4, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32*, i32** %140, i64 %142
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %5, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = icmp slt i32 %148, 17
  br i1 %149, label %150, label %200

150:                                              ; preds = %137
  %151 = load i32, i32* %13, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %13, align 4
  %153 = icmp eq i32 %151, 2
  br i1 %153, label %154, label %199

154:                                              ; preds = %150
  %155 = load i32*, i32** %10, align 8
  %156 = call i32 @get_bits(i32* %155, i32 5)
  store i32 %156, i32* %14, align 4
  %157 = load i32, i32* %14, align 4
  %158 = icmp sgt i32 %157, 26
  br i1 %158, label %159, label %165

159:                                              ; preds = %154
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @AV_LOG_WARNING, align 4
  %164 = call i32 @av_log(i32 %162, i32 %163, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 26, i32* %14, align 4
  br label %165

165:                                              ; preds = %159, %154
  %166 = load i32**, i32*** @ff_ac3_ungroup_3_in_5_bits_tab, align 8
  %167 = load i32, i32* %14, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32*, i32** %166, i64 %168
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %7, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %7, align 4
  %175 = sext i32 %173 to i64
  %176 = getelementptr inbounds i32, i32* %28, i64 %175
  store i32 %172, i32* %176, align 4
  %177 = load i32**, i32*** @ff_ac3_ungroup_3_in_5_bits_tab, align 8
  %178 = load i32, i32* %14, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32*, i32** %177, i64 %179
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 1
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %7, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %7, align 4
  %186 = sext i32 %184 to i64
  %187 = getelementptr inbounds i32, i32* %28, i64 %186
  store i32 %183, i32* %187, align 4
  %188 = load i32**, i32*** @ff_ac3_ungroup_3_in_5_bits_tab, align 8
  %189 = load i32, i32* %14, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32*, i32** %188, i64 %190
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 2
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* %7, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %7, align 4
  %197 = sext i32 %195 to i64
  %198 = getelementptr inbounds i32, i32* %28, i64 %197
  store i32 %194, i32* %198, align 4
  store i32 0, i32* %13, align 4
  br label %199

199:                                              ; preds = %165, %150
  br label %200

200:                                              ; preds = %199, %137, %124
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %5, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %5, align 4
  br label %114

204:                                              ; preds = %114
  br label %205

205:                                              ; preds = %204, %102
  br label %206

206:                                              ; preds = %205, %101
  store i32 0, i32* %7, align 4
  %207 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %4, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = load i32, i32* %212, align 4
  store i32 %213, i32* %5, align 4
  br label %214

214:                                              ; preds = %455, %206
  %215 = load i32, i32* %5, align 4
  %216 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 1
  %218 = load i32*, i32** %217, align 8
  %219 = load i32, i32* %4, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = icmp slt i32 %215, %222
  br i1 %223, label %224, label %458

224:                                              ; preds = %214
  %225 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i32 0, i32 2
  %227 = load i32**, i32*** %226, align 8
  %228 = load i32, i32* %4, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32*, i32** %227, i64 %229
  %231 = load i32*, i32** %230, align 8
  %232 = load i32, i32* %5, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  %235 = load i32, i32* %234, align 4
  store i32 %235, i32* %15, align 4
  %236 = load i32*, i32** @ff_eac3_bits_vs_hebap, align 8
  %237 = load i32, i32* %15, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  %240 = load i32, i32* %239, align 4
  store i32 %240, i32* %16, align 4
  %241 = load i32, i32* %15, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %271, label %243

243:                                              ; preds = %224
  store i32 0, i32* %6, align 4
  br label %244

244:                                              ; preds = %267, %243
  %245 = load i32, i32* %6, align 4
  %246 = icmp slt i32 %245, 6
  br i1 %246, label %247, label %270

247:                                              ; preds = %244
  %248 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %248, i32 0, i32 4
  %250 = call i32 @av_lfg_get(i32* %249)
  %251 = and i32 %250, 8388607
  %252 = sub nsw i32 %251, 4194304
  %253 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %254 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %253, i32 0, i32 3
  %255 = load i32***, i32**** %254, align 8
  %256 = load i32, i32* %4, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32**, i32*** %255, i64 %257
  %259 = load i32**, i32*** %258, align 8
  %260 = load i32, i32* %5, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32*, i32** %259, i64 %261
  %263 = load i32*, i32** %262, align 8
  %264 = load i32, i32* %6, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %263, i64 %265
  store i32 %252, i32* %266, align 4
  br label %267

267:                                              ; preds = %247
  %268 = load i32, i32* %6, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %6, align 4
  br label %244

270:                                              ; preds = %244
  br label %442

271:                                              ; preds = %224
  %272 = load i32, i32* %15, align 4
  %273 = icmp slt i32 %272, 8
  br i1 %273, label %274, label %314

274:                                              ; preds = %271
  %275 = load i32*, i32** %10, align 8
  %276 = load i32, i32* %16, align 4
  %277 = call i32 @get_bits(i32* %275, i32 %276)
  store i32 %277, i32* %17, align 4
  store i32 0, i32* %6, align 4
  br label %278

278:                                              ; preds = %310, %274
  %279 = load i32, i32* %6, align 4
  %280 = icmp slt i32 %279, 6
  br i1 %280, label %281, label %313

281:                                              ; preds = %278
  %282 = load i32***, i32**** @ff_eac3_mantissa_vq, align 8
  %283 = load i32, i32* %15, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32**, i32*** %282, i64 %284
  %286 = load i32**, i32*** %285, align 8
  %287 = load i32, i32* %17, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32*, i32** %286, i64 %288
  %290 = load i32*, i32** %289, align 8
  %291 = load i32, i32* %6, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32, i32* %290, i64 %292
  %294 = load i32, i32* %293, align 4
  %295 = mul nsw i32 %294, 256
  %296 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %297 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %296, i32 0, i32 3
  %298 = load i32***, i32**** %297, align 8
  %299 = load i32, i32* %4, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32**, i32*** %298, i64 %300
  %302 = load i32**, i32*** %301, align 8
  %303 = load i32, i32* %5, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32*, i32** %302, i64 %304
  %306 = load i32*, i32** %305, align 8
  %307 = load i32, i32* %6, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i32, i32* %306, i64 %308
  store i32 %295, i32* %309, align 4
  br label %310

310:                                              ; preds = %281
  %311 = load i32, i32* %6, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %6, align 4
  br label %278

313:                                              ; preds = %278
  br label %441

314:                                              ; preds = %271
  %315 = load i32, i32* %9, align 4
  %316 = load i32, i32* @EAC3_GAQ_NO, align 4
  %317 = icmp ne i32 %315, %316
  br i1 %317, label %318, label %328

318:                                              ; preds = %314
  %319 = load i32, i32* %15, align 4
  %320 = load i32, i32* %8, align 4
  %321 = icmp slt i32 %319, %320
  br i1 %321, label %322, label %328

322:                                              ; preds = %318
  %323 = load i32, i32* %7, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %7, align 4
  %325 = sext i32 %323 to i64
  %326 = getelementptr inbounds i32, i32* %28, i64 %325
  %327 = load i32, i32* %326, align 4
  store i32 %327, i32* %19, align 4
  br label %329

328:                                              ; preds = %318, %314
  store i32 0, i32* %19, align 4
  br label %329

329:                                              ; preds = %328, %322
  %330 = load i32, i32* %16, align 4
  %331 = load i32, i32* %19, align 4
  %332 = sub nsw i32 %330, %331
  store i32 %332, i32* %18, align 4
  store i32 0, i32* %6, align 4
  br label %333

333:                                              ; preds = %437, %329
  %334 = load i32, i32* %6, align 4
  %335 = icmp slt i32 %334, 6
  br i1 %335, label %336, label %440

336:                                              ; preds = %333
  %337 = load i32*, i32** %10, align 8
  %338 = load i32, i32* %18, align 4
  %339 = call i32 @get_sbits(i32* %337, i32 %338)
  store i32 %339, i32* %20, align 4
  %340 = load i32, i32* %19, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %400

342:                                              ; preds = %336
  %343 = load i32, i32* %20, align 4
  %344 = load i32, i32* %18, align 4
  %345 = sub nsw i32 %344, 1
  %346 = shl i32 1, %345
  %347 = sub nsw i32 0, %346
  %348 = icmp eq i32 %343, %347
  br i1 %348, label %349, label %400

349:                                              ; preds = %342
  %350 = load i32, i32* %16, align 4
  %351 = load i32, i32* %19, align 4
  %352 = sub nsw i32 2, %351
  %353 = sub nsw i32 %350, %352
  store i32 %353, i32* %22, align 4
  %354 = load i32*, i32** %10, align 8
  %355 = load i32, i32* %22, align 4
  %356 = call i32 @get_sbits(i32* %354, i32 %355)
  store i32 %356, i32* %20, align 4
  %357 = load i32, i32* %20, align 4
  %358 = load i32, i32* %22, align 4
  %359 = sub nsw i32 %358, 1
  %360 = sub nsw i32 23, %359
  %361 = shl i32 %357, %360
  store i32 %361, i32* %20, align 4
  %362 = load i32, i32* %20, align 4
  %363 = icmp sge i32 %362, 0
  br i1 %363, label %364, label %368

364:                                              ; preds = %349
  %365 = load i32, i32* %19, align 4
  %366 = sub nsw i32 23, %365
  %367 = shl i32 1, %366
  store i32 %367, i32* %21, align 4
  br label %381

368:                                              ; preds = %349
  %369 = load i32**, i32*** @ff_eac3_gaq_remap_2_4_b, align 8
  %370 = load i32, i32* %15, align 4
  %371 = sub nsw i32 %370, 8
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i32*, i32** %369, i64 %372
  %374 = load i32*, i32** %373, align 8
  %375 = load i32, i32* %19, align 4
  %376 = sub nsw i32 %375, 1
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i32, i32* %374, i64 %377
  %379 = load i32, i32* %378, align 4
  %380 = mul nsw i32 %379, 256
  store i32 %380, i32* %21, align 4
  br label %381

381:                                              ; preds = %368, %364
  %382 = load i32**, i32*** @ff_eac3_gaq_remap_2_4_a, align 8
  %383 = load i32, i32* %15, align 4
  %384 = sub nsw i32 %383, 8
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i32*, i32** %382, i64 %385
  %387 = load i32*, i32** %386, align 8
  %388 = load i32, i32* %19, align 4
  %389 = sub nsw i32 %388, 1
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds i32, i32* %387, i64 %390
  %392 = load i32, i32* %391, align 4
  %393 = load i32, i32* %20, align 4
  %394 = mul nsw i32 %392, %393
  %395 = ashr i32 %394, 15
  %396 = load i32, i32* %21, align 4
  %397 = add nsw i32 %395, %396
  %398 = load i32, i32* %20, align 4
  %399 = add nsw i32 %398, %397
  store i32 %399, i32* %20, align 4
  br label %421

400:                                              ; preds = %342, %336
  %401 = load i32, i32* %16, align 4
  %402 = sub nsw i32 24, %401
  %403 = shl i32 1, %402
  %404 = load i32, i32* %20, align 4
  %405 = mul nsw i32 %404, %403
  store i32 %405, i32* %20, align 4
  %406 = load i32, i32* %19, align 4
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %420, label %408

408:                                              ; preds = %400
  %409 = load i32*, i32** @ff_eac3_gaq_remap_1, align 8
  %410 = load i32, i32* %15, align 4
  %411 = sub nsw i32 %410, 8
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i32, i32* %409, i64 %412
  %414 = load i32, i32* %413, align 4
  %415 = load i32, i32* %20, align 4
  %416 = mul nsw i32 %414, %415
  %417 = ashr i32 %416, 15
  %418 = load i32, i32* %20, align 4
  %419 = add nsw i32 %418, %417
  store i32 %419, i32* %20, align 4
  br label %420

420:                                              ; preds = %408, %400
  br label %421

421:                                              ; preds = %420, %381
  %422 = load i32, i32* %20, align 4
  %423 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %424 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %423, i32 0, i32 3
  %425 = load i32***, i32**** %424, align 8
  %426 = load i32, i32* %4, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds i32**, i32*** %425, i64 %427
  %429 = load i32**, i32*** %428, align 8
  %430 = load i32, i32* %5, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds i32*, i32** %429, i64 %431
  %433 = load i32*, i32** %432, align 8
  %434 = load i32, i32* %6, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds i32, i32* %433, i64 %435
  store i32 %422, i32* %436, align 4
  br label %437

437:                                              ; preds = %421
  %438 = load i32, i32* %6, align 4
  %439 = add nsw i32 %438, 1
  store i32 %439, i32* %6, align 4
  br label %333

440:                                              ; preds = %333
  br label %441

441:                                              ; preds = %440, %313
  br label %442

442:                                              ; preds = %441, %270
  %443 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %444 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %443, i32 0, i32 3
  %445 = load i32***, i32**** %444, align 8
  %446 = load i32, i32* %4, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds i32**, i32*** %445, i64 %447
  %449 = load i32**, i32*** %448, align 8
  %450 = load i32, i32* %5, align 4
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds i32*, i32** %449, i64 %451
  %453 = load i32*, i32** %452, align 8
  %454 = call i32 @idct6(i32* %453)
  br label %455

455:                                              ; preds = %442
  %456 = load i32, i32* %5, align 4
  %457 = add nsw i32 %456, 1
  store i32 %457, i32* %5, align 4
  br label %214

458:                                              ; preds = %214
  %459 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %459)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @get_bits(i32*, i32) #2

declare dso_local i32 @get_bits1(i32*) #2

declare dso_local i32 @av_log(i32, i32, i8*) #2

declare dso_local i32 @av_lfg_get(i32*) #2

declare dso_local i32 @get_sbits(i32*, i32) #2

declare dso_local i32 @idct6(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

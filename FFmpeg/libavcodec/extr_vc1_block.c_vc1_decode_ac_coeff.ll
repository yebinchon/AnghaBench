; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vc1_block.c_vc1_decode_ac_coeff.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vc1_block.c_vc1_decode_ac_coeff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@ff_vc1_ac_coeff_table = common dso_local global %struct.TYPE_7__* null, align 8
@AC_VLC_BITS = common dso_local global i32 0, align 4
@ff_vc1_ac_sizes = common dso_local global i32* null, align 8
@vc1_index_decode_table = common dso_local global i32*** null, align 8
@vc1_last_decode_table = common dso_local global i32* null, align 8
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@vc1_last_delta_level_table = common dso_local global i64** null, align 8
@vc1_delta_level_table = common dso_local global i64** null, align 8
@vc1_last_delta_run_table = common dso_local global i64** null, align 8
@vc1_delta_run_table = common dso_local global i64** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i32*, i32*, i32)* @vc1_decode_ac_coeff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc1_decode_ac_coeff(%struct.TYPE_6__* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  store i32* %21, i32** %12, align 8
  %22 = load i32*, i32** %12, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ff_vc1_ac_coeff_table, align 8
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @AC_VLC_BITS, align 4
  %30 = call i32 @get_vlc2(i32* %22, i32 %28, i32 %29, i32 3)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %5
  %34 = load i32, i32* %13, align 4
  store i32 %34, i32* %6, align 4
  br label %289

35:                                               ; preds = %5
  %36 = load i32, i32* %13, align 4
  %37 = load i32*, i32** @ff_vc1_ac_sizes, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %41, 1
  %43 = icmp ne i32 %36, %42
  br i1 %43, label %44, label %83

44:                                               ; preds = %35
  %45 = load i32***, i32**** @vc1_index_decode_table, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32**, i32*** %45, i64 %47
  %49 = load i32**, i32*** %48, align 8
  %50 = load i32, i32* %13, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %49, i64 %51
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %14, align 4
  %56 = load i32***, i32**** @vc1_index_decode_table, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32**, i32*** %56, i64 %58
  %60 = load i32**, i32*** %59, align 8
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32*, i32** %60, i64 %62
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %13, align 4
  %68 = load i32*, i32** @vc1_last_decode_table, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = icmp sge i32 %67, %72
  br i1 %73, label %78, label %74

74:                                               ; preds = %44
  %75 = load i32*, i32** %12, align 8
  %76 = call i64 @get_bits_left(i32* %75)
  %77 = icmp slt i64 %76, 0
  br label %78

78:                                               ; preds = %74, %44
  %79 = phi i1 [ true, %44 ], [ %77, %74 ]
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %16, align 4
  %81 = load i32*, i32** %12, align 8
  %82 = call i32 @get_bits1(i32* %81)
  store i32 %82, i32* %17, align 4
  br label %277

83:                                               ; preds = %35
  %84 = load i32*, i32** %12, align 8
  %85 = call i32 @decode210(i32* %84)
  store i32 %85, i32* %18, align 4
  %86 = load i32, i32* %18, align 4
  %87 = icmp ne i32 %86, 2
  br i1 %87, label %88, label %210

88:                                               ; preds = %83
  %89 = load i32*, i32** %12, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ff_vc1_ac_coeff_table, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @AC_VLC_BITS, align 4
  %97 = call i32 @get_vlc2(i32* %89, i32 %95, i32 %96, i32 3)
  store i32 %97, i32* %13, align 4
  %98 = load i32, i32* %13, align 4
  %99 = load i32*, i32** @ff_vc1_ac_sizes, align 8
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = sub i32 %103, 1
  %105 = icmp uge i32 %98, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %88
  %107 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %107, i32* %6, align 4
  br label %289

108:                                              ; preds = %88
  %109 = load i32***, i32**** @vc1_index_decode_table, align 8
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32**, i32*** %109, i64 %111
  %113 = load i32**, i32*** %112, align 8
  %114 = load i32, i32* %13, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32*, i32** %113, i64 %115
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %14, align 4
  %120 = load i32***, i32**** @vc1_index_decode_table, align 8
  %121 = load i32, i32* %11, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32**, i32*** %120, i64 %122
  %124 = load i32**, i32*** %123, align 8
  %125 = load i32, i32* %13, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32*, i32** %124, i64 %126
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 1
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %15, align 4
  %131 = load i32, i32* %13, align 4
  %132 = load i32*, i32** @vc1_last_decode_table, align 8
  %133 = load i32, i32* %11, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = icmp sge i32 %131, %136
  %138 = zext i1 %137 to i32
  store i32 %138, i32* %16, align 4
  %139 = load i32, i32* %18, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %173

141:                                              ; preds = %108
  %142 = load i32, i32* %16, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %158

144:                                              ; preds = %141
  %145 = load i64**, i64*** @vc1_last_delta_level_table, align 8
  %146 = load i32, i32* %11, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i64*, i64** %145, i64 %147
  %149 = load i64*, i64** %148, align 8
  %150 = load i32, i32* %14, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %149, i64 %151
  %153 = load i64, i64* %152, align 8
  %154 = load i32, i32* %15, align 4
  %155 = sext i32 %154 to i64
  %156 = add nsw i64 %155, %153
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %15, align 4
  br label %172

158:                                              ; preds = %141
  %159 = load i64**, i64*** @vc1_delta_level_table, align 8
  %160 = load i32, i32* %11, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i64*, i64** %159, i64 %161
  %163 = load i64*, i64** %162, align 8
  %164 = load i32, i32* %14, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i64, i64* %163, i64 %165
  %167 = load i64, i64* %166, align 8
  %168 = load i32, i32* %15, align 4
  %169 = sext i32 %168 to i64
  %170 = add nsw i64 %169, %167
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %15, align 4
  br label %172

172:                                              ; preds = %158, %144
  br label %207

173:                                              ; preds = %108
  %174 = load i32, i32* %16, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %191

176:                                              ; preds = %173
  %177 = load i64**, i64*** @vc1_last_delta_run_table, align 8
  %178 = load i32, i32* %11, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i64*, i64** %177, i64 %179
  %181 = load i64*, i64** %180, align 8
  %182 = load i32, i32* %15, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i64, i64* %181, i64 %183
  %185 = load i64, i64* %184, align 8
  %186 = add nsw i64 %185, 1
  %187 = load i32, i32* %14, align 4
  %188 = sext i32 %187 to i64
  %189 = add nsw i64 %188, %186
  %190 = trunc i64 %189 to i32
  store i32 %190, i32* %14, align 4
  br label %206

191:                                              ; preds = %173
  %192 = load i64**, i64*** @vc1_delta_run_table, align 8
  %193 = load i32, i32* %11, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i64*, i64** %192, i64 %194
  %196 = load i64*, i64** %195, align 8
  %197 = load i32, i32* %15, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i64, i64* %196, i64 %198
  %200 = load i64, i64* %199, align 8
  %201 = add nsw i64 %200, 1
  %202 = load i32, i32* %14, align 4
  %203 = sext i32 %202 to i64
  %204 = add nsw i64 %203, %201
  %205 = trunc i64 %204 to i32
  store i32 %205, i32* %14, align 4
  br label %206

206:                                              ; preds = %191, %176
  br label %207

207:                                              ; preds = %206, %172
  %208 = load i32*, i32** %12, align 8
  %209 = call i32 @get_bits1(i32* %208)
  store i32 %209, i32* %17, align 4
  br label %276

210:                                              ; preds = %83
  %211 = load i32*, i32** %12, align 8
  %212 = call i32 @get_bits1(i32* %211)
  store i32 %212, i32* %16, align 4
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %261

218:                                              ; preds = %210
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = icmp slt i32 %221, 8
  br i1 %222, label %228, label %223

223:                                              ; preds = %218
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 2
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %247

228:                                              ; preds = %223, %218
  %229 = load i32*, i32** %12, align 8
  %230 = call i32 @get_bits(i32* %229, i32 3)
  %231 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 0
  store i32 %230, i32* %233, align 4
  %234 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %246, label %239

239:                                              ; preds = %228
  %240 = load i32*, i32** %12, align 8
  %241 = call i32 @get_bits(i32* %240, i32 2)
  %242 = add nsw i32 %241, 8
  %243 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 0
  store i32 %242, i32* %245, align 4
  br label %246

246:                                              ; preds = %239, %228
  br label %254

247:                                              ; preds = %223
  %248 = load i32*, i32** %12, align 8
  %249 = call i32 @get_unary(i32* %248, i32 1, i32 6)
  %250 = add nsw i32 %249, 2
  %251 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 0
  store i32 %250, i32* %253, align 4
  br label %254

254:                                              ; preds = %247, %246
  %255 = load i32*, i32** %12, align 8
  %256 = call i32 @get_bits(i32* %255, i32 2)
  %257 = add nsw i32 3, %256
  %258 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %259, i32 0, i32 1
  store i32 %257, i32* %260, align 4
  br label %261

261:                                              ; preds = %254, %210
  %262 = load i32*, i32** %12, align 8
  %263 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @get_bits(i32* %262, i32 %266)
  store i32 %267, i32* %14, align 4
  %268 = load i32*, i32** %12, align 8
  %269 = call i32 @get_bits1(i32* %268)
  store i32 %269, i32* %17, align 4
  %270 = load i32*, i32** %12, align 8
  %271 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @get_bits(i32* %270, i32 %274)
  store i32 %275, i32* %15, align 4
  br label %276

276:                                              ; preds = %261, %207
  br label %277

277:                                              ; preds = %276, %78
  %278 = load i32, i32* %16, align 4
  %279 = load i32*, i32** %8, align 8
  store i32 %278, i32* %279, align 4
  %280 = load i32, i32* %14, align 4
  %281 = load i32*, i32** %9, align 8
  store i32 %280, i32* %281, align 4
  %282 = load i32, i32* %15, align 4
  %283 = load i32, i32* %17, align 4
  %284 = sub nsw i32 0, %283
  %285 = xor i32 %282, %284
  %286 = load i32, i32* %17, align 4
  %287 = add nsw i32 %285, %286
  %288 = load i32*, i32** %10, align 8
  store i32 %287, i32* %288, align 4
  store i32 0, i32* %6, align 4
  br label %289

289:                                              ; preds = %277, %106, %33
  %290 = load i32, i32* %6, align 4
  ret i32 %290
}

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i64 @get_bits_left(i32*) #1

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i32 @decode210(i32*) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @get_unary(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

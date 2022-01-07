; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacsbr_template.c_read_sbr_noise.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacsbr_template.c_read_sbr_noise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32** }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32**, i64* }

@vlc_sbr = common dso_local global %struct.TYPE_11__* null, align 8
@T_HUFFMAN_NOISE_BAL_3_0DB = common dso_local global i64 0, align 8
@vlc_sbr_lav = common dso_local global i32* null, align 8
@F_HUFFMAN_ENV_BAL_3_0DB = common dso_local global i64 0, align 8
@T_HUFFMAN_NOISE_3_0DB = common dso_local global i64 0, align 8
@F_HUFFMAN_ENV_3_0DB = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"noise_facs_q %d is invalid\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_8__*, i32*, %struct.TYPE_9__*, i32)* @read_sbr_noise to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_sbr_noise(%struct.TYPE_10__* %0, %struct.TYPE_8__* %1, i32* %2, %struct.TYPE_9__* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [2 x i32]*, align 8
  %15 = alloca [2 x i32]*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %26

21:                                               ; preds = %5
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 1
  br label %26

26:                                               ; preds = %21, %5
  %27 = phi i1 [ false, %5 ], [ %25, %21 ]
  %28 = zext i1 %27 to i32
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %18, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %58

34:                                               ; preds = %26
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %34
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** @vlc_sbr, align 8
  %39 = load i64, i64* @T_HUFFMAN_NOISE_BAL_3_0DB, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i32**, i32*** %41, align 8
  %43 = bitcast i32** %42 to [2 x i32]*
  store [2 x i32]* %43, [2 x i32]** %14, align 8
  %44 = load i32*, i32** @vlc_sbr_lav, align 8
  %45 = load i64, i64* @T_HUFFMAN_NOISE_BAL_3_0DB, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %16, align 4
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** @vlc_sbr, align 8
  %49 = load i64, i64* @F_HUFFMAN_ENV_BAL_3_0DB, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i32**, i32*** %51, align 8
  %53 = bitcast i32** %52 to [2 x i32]*
  store [2 x i32]* %53, [2 x i32]** %15, align 8
  %54 = load i32*, i32** @vlc_sbr_lav, align 8
  %55 = load i64, i64* @F_HUFFMAN_ENV_BAL_3_0DB, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %17, align 4
  br label %79

58:                                               ; preds = %34, %26
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** @vlc_sbr, align 8
  %60 = load i64, i64* @T_HUFFMAN_NOISE_3_0DB, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32**, i32*** %62, align 8
  %64 = bitcast i32** %63 to [2 x i32]*
  store [2 x i32]* %64, [2 x i32]** %14, align 8
  %65 = load i32*, i32** @vlc_sbr_lav, align 8
  %66 = load i64, i64* @T_HUFFMAN_NOISE_3_0DB, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %16, align 4
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** @vlc_sbr, align 8
  %70 = load i64, i64* @F_HUFFMAN_ENV_3_0DB, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i32**, i32*** %72, align 8
  %74 = bitcast i32** %73 to [2 x i32]*
  store [2 x i32]* %74, [2 x i32]** %15, align 8
  %75 = load i32*, i32** @vlc_sbr_lav, align 8
  %76 = load i64, i64* @F_HUFFMAN_ENV_3_0DB, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %17, align 4
  br label %79

79:                                               ; preds = %58, %37
  store i32 0, i32* %12, align 4
  br label %80

80:                                               ; preds = %263, %79
  %81 = load i32, i32* %12, align 4
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %266

86:                                               ; preds = %80
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 2
  %89 = load i64*, i64** %88, align 8
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %171

95:                                               ; preds = %86
  store i32 0, i32* %13, align 4
  br label %96

96:                                               ; preds = %167, %95
  %97 = load i32, i32* %13, align 4
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp slt i32 %97, %100
  br i1 %101, label %102, label %170

102:                                              ; preds = %96
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  %105 = load i32**, i32*** %104, align 8
  %106 = load i32, i32* %12, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32*, i32** %105, i64 %107
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %13, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %18, align 4
  %115 = load i32*, i32** %9, align 8
  %116 = load [2 x i32]*, [2 x i32]** %14, align 8
  %117 = bitcast [2 x i32]* %116 to i32**
  %118 = call i32 @get_vlc2(i32* %115, i32** %117, i32 9, i32 2)
  %119 = load i32, i32* %16, align 4
  %120 = sub nsw i32 %118, %119
  %121 = mul nsw i32 %114, %120
  %122 = add nsw i32 %113, %121
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 1
  %125 = load i32**, i32*** %124, align 8
  %126 = load i32, i32* %12, align 4
  %127 = add nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32*, i32** %125, i64 %128
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %13, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  store i32 %122, i32* %133, align 4
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 1
  %136 = load i32**, i32*** %135, align 8
  %137 = load i32, i32* %12, align 4
  %138 = add nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32*, i32** %136, i64 %139
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %13, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = icmp ugt i32 %145, 30
  br i1 %146, label %147, label %166

147:                                              ; preds = %102
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @AV_LOG_ERROR, align 4
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 1
  %154 = load i32**, i32*** %153, align 8
  %155 = load i32, i32* %12, align 4
  %156 = add nsw i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32*, i32** %154, i64 %157
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %13, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @av_log(i32 %150, i32 %151, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %163)
  %165 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %165, i32* %6, align 4
  br label %282

166:                                              ; preds = %102
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %13, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %13, align 4
  br label %96

170:                                              ; preds = %96
  br label %262

171:                                              ; preds = %86
  %172 = load i32, i32* %18, align 4
  %173 = load i32*, i32** %9, align 8
  %174 = call i32 @get_bits(i32* %173, i32 5)
  %175 = mul nsw i32 %172, %174
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 1
  %178 = load i32**, i32*** %177, align 8
  %179 = load i32, i32* %12, align 4
  %180 = add nsw i32 %179, 1
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32*, i32** %178, i64 %181
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 0
  store i32 %175, i32* %184, align 4
  store i32 1, i32* %13, align 4
  br label %185

185:                                              ; preds = %258, %171
  %186 = load i32, i32* %13, align 4
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = icmp slt i32 %186, %189
  br i1 %190, label %191, label %261

191:                                              ; preds = %185
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 1
  %194 = load i32**, i32*** %193, align 8
  %195 = load i32, i32* %12, align 4
  %196 = add nsw i32 %195, 1
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32*, i32** %194, i64 %197
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %13, align 4
  %201 = sub nsw i32 %200, 1
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %199, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* %18, align 4
  %206 = load i32*, i32** %9, align 8
  %207 = load [2 x i32]*, [2 x i32]** %15, align 8
  %208 = bitcast [2 x i32]* %207 to i32**
  %209 = call i32 @get_vlc2(i32* %206, i32** %208, i32 9, i32 3)
  %210 = load i32, i32* %17, align 4
  %211 = sub nsw i32 %209, %210
  %212 = mul nsw i32 %205, %211
  %213 = add nsw i32 %204, %212
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 1
  %216 = load i32**, i32*** %215, align 8
  %217 = load i32, i32* %12, align 4
  %218 = add nsw i32 %217, 1
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32*, i32** %216, i64 %219
  %221 = load i32*, i32** %220, align 8
  %222 = load i32, i32* %13, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  store i32 %213, i32* %224, align 4
  %225 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 1
  %227 = load i32**, i32*** %226, align 8
  %228 = load i32, i32* %12, align 4
  %229 = add nsw i32 %228, 1
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32*, i32** %227, i64 %230
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %13, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = icmp ugt i32 %236, 30
  br i1 %237, label %238, label %257

238:                                              ; preds = %191
  %239 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @AV_LOG_ERROR, align 4
  %243 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %243, i32 0, i32 1
  %245 = load i32**, i32*** %244, align 8
  %246 = load i32, i32* %12, align 4
  %247 = add nsw i32 %246, 1
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32*, i32** %245, i64 %248
  %250 = load i32*, i32** %249, align 8
  %251 = load i32, i32* %13, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @av_log(i32 %241, i32 %242, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %254)
  %256 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %256, i32* %6, align 4
  br label %282

257:                                              ; preds = %191
  br label %258

258:                                              ; preds = %257
  %259 = load i32, i32* %13, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %13, align 4
  br label %185

261:                                              ; preds = %185
  br label %262

262:                                              ; preds = %261, %170
  br label %263

263:                                              ; preds = %262
  %264 = load i32, i32* %12, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %12, align 4
  br label %80

266:                                              ; preds = %80
  %267 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %267, i32 0, i32 1
  %269 = load i32**, i32*** %268, align 8
  %270 = getelementptr inbounds i32*, i32** %269, i64 0
  %271 = load i32*, i32** %270, align 8
  %272 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %273 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %272, i32 0, i32 1
  %274 = load i32**, i32*** %273, align 8
  %275 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32*, i32** %274, i64 %278
  %280 = load i32*, i32** %279, align 8
  %281 = call i32 @memcpy(i32* %271, i32* %280, i32 8)
  store i32 0, i32* %6, align 4
  br label %282

282:                                              ; preds = %266, %238, %147
  %283 = load i32, i32* %6, align 4
  ret i32 %283
}

declare dso_local i32 @get_vlc2(i32*, i32**, i32, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*, i32) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

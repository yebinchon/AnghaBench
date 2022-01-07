; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_cropdetect.c_checkline.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_cropdetect.c_checkline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"total:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, i32)* @checkline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkline(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %14 = load i32, i32* %9, align 4
  store i32 %14, i32* %12, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %13, align 8
  %17 = load i32, i32* %10, align 4
  switch i32 %17, label %323 [
    i32 1, label %18
    i32 2, label %108
    i32 3, label %191
    i32 4, label %191
  ]

18:                                               ; preds = %5
  br label %19

19:                                               ; preds = %22, %18
  %20 = load i32, i32* %9, align 4
  %21 = icmp sge i32 %20, 8
  br i1 %21, label %22, label %91

22:                                               ; preds = %19
  %23 = load i8*, i8** %7, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = add nsw i32 %26, %32
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = mul nsw i32 2, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %34, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = add nsw i32 %33, %40
  %42 = load i8*, i8** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = mul nsw i32 3, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %42, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = add nsw i32 %41, %48
  %50 = load i8*, i8** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = mul nsw i32 4, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = add nsw i32 %49, %56
  %58 = load i8*, i8** %7, align 8
  %59 = load i32, i32* %8, align 4
  %60 = mul nsw i32 5, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %58, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = add nsw i32 %57, %64
  %66 = load i8*, i8** %7, align 8
  %67 = load i32, i32* %8, align 4
  %68 = mul nsw i32 6, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %66, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = add nsw i32 %65, %72
  %74 = load i8*, i8** %7, align 8
  %75 = load i32, i32* %8, align 4
  %76 = mul nsw i32 7, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %74, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = add nsw i32 %73, %80
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %8, align 4
  %85 = mul nsw i32 8, %84
  %86 = load i8*, i8** %7, align 8
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  store i8* %88, i8** %7, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sub nsw i32 %89, 8
  store i32 %90, i32* %9, align 4
  br label %19

91:                                               ; preds = %19
  br label %92

92:                                               ; preds = %96, %91
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %9, align 4
  %95 = icmp sge i32 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %92
  %97 = load i8*, i8** %7, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 0
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %101, %100
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %8, align 4
  %104 = load i8*, i8** %7, align 8
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  store i8* %106, i8** %7, align 8
  br label %92

107:                                              ; preds = %92
  br label %323

108:                                              ; preds = %5
  %109 = load i32, i32* %8, align 4
  %110 = ashr i32 %109, 1
  store i32 %110, i32* %8, align 4
  br label %111

111:                                              ; preds = %114, %108
  %112 = load i32, i32* %9, align 4
  %113 = icmp sge i32 %112, 8
  br i1 %113, label %114, label %175

114:                                              ; preds = %111
  %115 = load i32*, i32** %13, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32*, i32** %13, align 8
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %117, %122
  %124 = load i32*, i32** %13, align 8
  %125 = load i32, i32* %8, align 4
  %126 = mul nsw i32 2, %125
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %124, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %123, %129
  %131 = load i32*, i32** %13, align 8
  %132 = load i32, i32* %8, align 4
  %133 = mul nsw i32 3, %132
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %131, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %130, %136
  %138 = load i32*, i32** %13, align 8
  %139 = load i32, i32* %8, align 4
  %140 = mul nsw i32 4, %139
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %138, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %137, %143
  %145 = load i32*, i32** %13, align 8
  %146 = load i32, i32* %8, align 4
  %147 = mul nsw i32 5, %146
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %145, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %144, %150
  %152 = load i32*, i32** %13, align 8
  %153 = load i32, i32* %8, align 4
  %154 = mul nsw i32 6, %153
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %152, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %151, %157
  %159 = load i32*, i32** %13, align 8
  %160 = load i32, i32* %8, align 4
  %161 = mul nsw i32 7, %160
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %159, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %158, %164
  %166 = load i32, i32* %11, align 4
  %167 = add nsw i32 %166, %165
  store i32 %167, i32* %11, align 4
  %168 = load i32, i32* %8, align 4
  %169 = mul nsw i32 8, %168
  %170 = load i32*, i32** %13, align 8
  %171 = sext i32 %169 to i64
  %172 = getelementptr inbounds i32, i32* %170, i64 %171
  store i32* %172, i32** %13, align 8
  %173 = load i32, i32* %9, align 4
  %174 = sub nsw i32 %173, 8
  store i32 %174, i32* %9, align 4
  br label %111

175:                                              ; preds = %111
  br label %176

176:                                              ; preds = %180, %175
  %177 = load i32, i32* %9, align 4
  %178 = add nsw i32 %177, -1
  store i32 %178, i32* %9, align 4
  %179 = icmp sge i32 %178, 0
  br i1 %179, label %180, label %190

180:                                              ; preds = %176
  %181 = load i32*, i32** %13, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %11, align 4
  %185 = add nsw i32 %184, %183
  store i32 %185, i32* %11, align 4
  %186 = load i32, i32* %8, align 4
  %187 = load i32*, i32** %13, align 8
  %188 = sext i32 %186 to i64
  %189 = getelementptr inbounds i32, i32* %187, i64 %188
  store i32* %189, i32** %13, align 8
  br label %176

190:                                              ; preds = %176
  br label %323

191:                                              ; preds = %5, %5
  br label %192

192:                                              ; preds = %195, %191
  %193 = load i32, i32* %9, align 4
  %194 = icmp sge i32 %193, 4
  br i1 %194, label %195, label %294

195:                                              ; preds = %192
  %196 = load i8*, i8** %7, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 0
  %198 = load i8, i8* %197, align 1
  %199 = zext i8 %198 to i32
  %200 = load i8*, i8** %7, align 8
  %201 = getelementptr inbounds i8, i8* %200, i64 1
  %202 = load i8, i8* %201, align 1
  %203 = zext i8 %202 to i32
  %204 = add nsw i32 %199, %203
  %205 = load i8*, i8** %7, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 2
  %207 = load i8, i8* %206, align 1
  %208 = zext i8 %207 to i32
  %209 = add nsw i32 %204, %208
  %210 = load i8*, i8** %7, align 8
  %211 = load i32, i32* %8, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i8, i8* %210, i64 %212
  %214 = load i8, i8* %213, align 1
  %215 = zext i8 %214 to i32
  %216 = add nsw i32 %209, %215
  %217 = load i8*, i8** %7, align 8
  %218 = load i32, i32* %8, align 4
  %219 = add nsw i32 1, %218
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8, i8* %217, i64 %220
  %222 = load i8, i8* %221, align 1
  %223 = zext i8 %222 to i32
  %224 = add nsw i32 %216, %223
  %225 = load i8*, i8** %7, align 8
  %226 = load i32, i32* %8, align 4
  %227 = add nsw i32 2, %226
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8, i8* %225, i64 %228
  %230 = load i8, i8* %229, align 1
  %231 = zext i8 %230 to i32
  %232 = add nsw i32 %224, %231
  %233 = load i8*, i8** %7, align 8
  %234 = load i32, i32* %8, align 4
  %235 = mul nsw i32 2, %234
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i8, i8* %233, i64 %236
  %238 = load i8, i8* %237, align 1
  %239 = zext i8 %238 to i32
  %240 = add nsw i32 %232, %239
  %241 = load i8*, i8** %7, align 8
  %242 = load i32, i32* %8, align 4
  %243 = mul nsw i32 2, %242
  %244 = add nsw i32 1, %243
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i8, i8* %241, i64 %245
  %247 = load i8, i8* %246, align 1
  %248 = zext i8 %247 to i32
  %249 = add nsw i32 %240, %248
  %250 = load i8*, i8** %7, align 8
  %251 = load i32, i32* %8, align 4
  %252 = mul nsw i32 2, %251
  %253 = add nsw i32 2, %252
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i8, i8* %250, i64 %254
  %256 = load i8, i8* %255, align 1
  %257 = zext i8 %256 to i32
  %258 = add nsw i32 %249, %257
  %259 = load i8*, i8** %7, align 8
  %260 = load i32, i32* %8, align 4
  %261 = mul nsw i32 3, %260
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i8, i8* %259, i64 %262
  %264 = load i8, i8* %263, align 1
  %265 = zext i8 %264 to i32
  %266 = add nsw i32 %258, %265
  %267 = load i8*, i8** %7, align 8
  %268 = load i32, i32* %8, align 4
  %269 = mul nsw i32 3, %268
  %270 = add nsw i32 1, %269
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i8, i8* %267, i64 %271
  %273 = load i8, i8* %272, align 1
  %274 = zext i8 %273 to i32
  %275 = add nsw i32 %266, %274
  %276 = load i8*, i8** %7, align 8
  %277 = load i32, i32* %8, align 4
  %278 = mul nsw i32 3, %277
  %279 = add nsw i32 2, %278
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i8, i8* %276, i64 %280
  %282 = load i8, i8* %281, align 1
  %283 = zext i8 %282 to i32
  %284 = add nsw i32 %275, %283
  %285 = load i32, i32* %11, align 4
  %286 = add nsw i32 %285, %284
  store i32 %286, i32* %11, align 4
  %287 = load i32, i32* %8, align 4
  %288 = mul nsw i32 4, %287
  %289 = load i8*, i8** %7, align 8
  %290 = sext i32 %288 to i64
  %291 = getelementptr inbounds i8, i8* %289, i64 %290
  store i8* %291, i8** %7, align 8
  %292 = load i32, i32* %9, align 4
  %293 = sub nsw i32 %292, 4
  store i32 %293, i32* %9, align 4
  br label %192

294:                                              ; preds = %192
  br label %295

295:                                              ; preds = %299, %294
  %296 = load i32, i32* %9, align 4
  %297 = add nsw i32 %296, -1
  store i32 %297, i32* %9, align 4
  %298 = icmp sge i32 %297, 0
  br i1 %298, label %299, label %320

299:                                              ; preds = %295
  %300 = load i8*, i8** %7, align 8
  %301 = getelementptr inbounds i8, i8* %300, i64 0
  %302 = load i8, i8* %301, align 1
  %303 = zext i8 %302 to i32
  %304 = load i8*, i8** %7, align 8
  %305 = getelementptr inbounds i8, i8* %304, i64 1
  %306 = load i8, i8* %305, align 1
  %307 = zext i8 %306 to i32
  %308 = add nsw i32 %303, %307
  %309 = load i8*, i8** %7, align 8
  %310 = getelementptr inbounds i8, i8* %309, i64 2
  %311 = load i8, i8* %310, align 1
  %312 = zext i8 %311 to i32
  %313 = add nsw i32 %308, %312
  %314 = load i32, i32* %11, align 4
  %315 = add nsw i32 %314, %313
  store i32 %315, i32* %11, align 4
  %316 = load i32, i32* %8, align 4
  %317 = load i8*, i8** %7, align 8
  %318 = sext i32 %316 to i64
  %319 = getelementptr inbounds i8, i8* %317, i64 %318
  store i8* %319, i8** %7, align 8
  br label %295

320:                                              ; preds = %295
  %321 = load i32, i32* %12, align 4
  %322 = mul nsw i32 %321, 3
  store i32 %322, i32* %12, align 4
  br label %323

323:                                              ; preds = %5, %320, %190, %107
  %324 = load i32, i32* %12, align 4
  %325 = load i32, i32* %11, align 4
  %326 = sdiv i32 %325, %324
  store i32 %326, i32* %11, align 4
  %327 = load i8*, i8** %6, align 8
  %328 = load i32, i32* @AV_LOG_DEBUG, align 4
  %329 = load i32, i32* %11, align 4
  %330 = call i32 @av_log(i8* %327, i32 %328, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %329)
  %331 = load i32, i32* %11, align 4
  ret i32 %331
}

declare dso_local i32 @av_log(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

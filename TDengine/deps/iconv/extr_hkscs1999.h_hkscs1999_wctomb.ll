; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_hkscs1999.h_hkscs1999_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_hkscs1999.h_hkscs1999_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i16, i16 }

@hkscs1999_uni2indx_page00 = common dso_local global %struct.TYPE_16__* null, align 8
@hkscs1999_uni2indx_page04 = common dso_local global %struct.TYPE_16__* null, align 8
@hkscs1999_uni2indx_page1e = common dso_local global %struct.TYPE_16__* null, align 8
@hkscs1999_uni2indx_page21 = common dso_local global %struct.TYPE_16__* null, align 8
@hkscs1999_uni2indx_page23 = common dso_local global %struct.TYPE_16__* null, align 8
@hkscs1999_uni2indx_page27 = common dso_local global %struct.TYPE_16__* null, align 8
@hkscs1999_uni2indx_page2e = common dso_local global %struct.TYPE_16__* null, align 8
@hkscs1999_uni2indx_page34 = common dso_local global %struct.TYPE_16__* null, align 8
@hkscs1999_uni2indx_pagef9 = common dso_local global %struct.TYPE_16__* null, align 8
@hkscs1999_uni2indx_pageff = common dso_local global %struct.TYPE_16__* null, align 8
@hkscs1999_uni2indx_page200 = common dso_local global %struct.TYPE_16__* null, align 8
@hkscs1999_uni2indx_page294 = common dso_local global %struct.TYPE_16__* null, align 8
@hkscs1999_uni2indx_page297 = common dso_local global %struct.TYPE_16__* null, align 8
@hkscs1999_uni2indx_page2f8 = common dso_local global %struct.TYPE_16__* null, align 8
@hkscs1999_2charset = common dso_local global i16* null, align 8
@RET_ILUNI = common dso_local global i32 0, align 4
@RET_TOOSMALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @hkscs1999_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hkscs1999_wctomb(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  %13 = alloca i16, align 2
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp sge i32 %14, 2
  br i1 %15, label %16, label %294

16:                                               ; preds = %4
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %10, align 8
  %17 = load i32, i32* %8, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 720
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** @hkscs1999_uni2indx_page00, align 8
  %24 = load i32, i32* %8, align 4
  %25 = ashr i32 %24, 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i64 %26
  store %struct.TYPE_16__* %27, %struct.TYPE_16__** %10, align 8
  br label %210

28:                                               ; preds = %19, %16
  %29 = load i32, i32* %8, align 4
  %30 = icmp sge i32 %29, 1024
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 1120
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** @hkscs1999_uni2indx_page04, align 8
  %36 = load i32, i32* %8, align 4
  %37 = ashr i32 %36, 4
  %38 = sub nsw i32 %37, 64
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i64 %39
  store %struct.TYPE_16__* %40, %struct.TYPE_16__** %10, align 8
  br label %209

41:                                               ; preds = %31, %28
  %42 = load i32, i32* %8, align 4
  %43 = icmp sge i32 %42, 7680
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 7888
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** @hkscs1999_uni2indx_page1e, align 8
  %49 = load i32, i32* %8, align 4
  %50 = ashr i32 %49, 4
  %51 = sub nsw i32 %50, 480
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i64 %52
  store %struct.TYPE_16__* %53, %struct.TYPE_16__** %10, align 8
  br label %208

54:                                               ; preds = %44, %41
  %55 = load i32, i32* %8, align 4
  %56 = icmp sge i32 %55, 8448
  br i1 %56, label %57, label %67

57:                                               ; preds = %54
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %58, 8688
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** @hkscs1999_uni2indx_page21, align 8
  %62 = load i32, i32* %8, align 4
  %63 = ashr i32 %62, 4
  %64 = sub nsw i32 %63, 528
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i64 %65
  store %struct.TYPE_16__* %66, %struct.TYPE_16__** %10, align 8
  br label %207

67:                                               ; preds = %57, %54
  %68 = load i32, i32* %8, align 4
  %69 = icmp sge i32 %68, 8960
  br i1 %69, label %70, label %80

70:                                               ; preds = %67
  %71 = load i32, i32* %8, align 4
  %72 = icmp slt i32 %71, 9600
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** @hkscs1999_uni2indx_page23, align 8
  %75 = load i32, i32* %8, align 4
  %76 = ashr i32 %75, 4
  %77 = sub nsw i32 %76, 560
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i64 %78
  store %struct.TYPE_16__* %79, %struct.TYPE_16__** %10, align 8
  br label %206

80:                                               ; preds = %70, %67
  %81 = load i32, i32* %8, align 4
  %82 = icmp sge i32 %81, 9984
  br i1 %82, label %83, label %93

83:                                               ; preds = %80
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %84, 10048
  br i1 %85, label %86, label %93

86:                                               ; preds = %83
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** @hkscs1999_uni2indx_page27, align 8
  %88 = load i32, i32* %8, align 4
  %89 = ashr i32 %88, 4
  %90 = sub nsw i32 %89, 624
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i64 %91
  store %struct.TYPE_16__* %92, %struct.TYPE_16__** %10, align 8
  br label %205

93:                                               ; preds = %83, %80
  %94 = load i32, i32* %8, align 4
  %95 = icmp sge i32 %94, 11776
  br i1 %95, label %96, label %106

96:                                               ; preds = %93
  %97 = load i32, i32* %8, align 4
  %98 = icmp slt i32 %97, 12864
  br i1 %98, label %99, label %106

99:                                               ; preds = %96
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** @hkscs1999_uni2indx_page2e, align 8
  %101 = load i32, i32* %8, align 4
  %102 = ashr i32 %101, 4
  %103 = sub nsw i32 %102, 736
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i64 %104
  store %struct.TYPE_16__* %105, %struct.TYPE_16__** %10, align 8
  br label %204

106:                                              ; preds = %96, %93
  %107 = load i32, i32* %8, align 4
  %108 = icmp sge i32 %107, 13312
  br i1 %108, label %109, label %119

109:                                              ; preds = %106
  %110 = load i32, i32* %8, align 4
  %111 = icmp slt i32 %110, 40896
  br i1 %111, label %112, label %119

112:                                              ; preds = %109
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** @hkscs1999_uni2indx_page34, align 8
  %114 = load i32, i32* %8, align 4
  %115 = ashr i32 %114, 4
  %116 = sub nsw i32 %115, 832
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i64 %117
  store %struct.TYPE_16__* %118, %struct.TYPE_16__** %10, align 8
  br label %203

119:                                              ; preds = %109, %106
  %120 = load i32, i32* %8, align 4
  %121 = icmp sge i32 %120, 63744
  br i1 %121, label %122, label %132

122:                                              ; preds = %119
  %123 = load i32, i32* %8, align 4
  %124 = icmp slt i32 %123, 63760
  br i1 %124, label %125, label %132

125:                                              ; preds = %122
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** @hkscs1999_uni2indx_pagef9, align 8
  %127 = load i32, i32* %8, align 4
  %128 = ashr i32 %127, 4
  %129 = sub nsw i32 %128, 3984
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i64 %130
  store %struct.TYPE_16__* %131, %struct.TYPE_16__** %10, align 8
  br label %202

132:                                              ; preds = %122, %119
  %133 = load i32, i32* %8, align 4
  %134 = icmp sge i32 %133, 65280
  br i1 %134, label %135, label %145

135:                                              ; preds = %132
  %136 = load i32, i32* %8, align 4
  %137 = icmp slt i32 %136, 65520
  br i1 %137, label %138, label %145

138:                                              ; preds = %135
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** @hkscs1999_uni2indx_pageff, align 8
  %140 = load i32, i32* %8, align 4
  %141 = ashr i32 %140, 4
  %142 = sub nsw i32 %141, 4080
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i64 %143
  store %struct.TYPE_16__* %144, %struct.TYPE_16__** %10, align 8
  br label %201

145:                                              ; preds = %135, %132
  %146 = load i32, i32* %8, align 4
  %147 = icmp sge i32 %146, 131072
  br i1 %147, label %148, label %158

148:                                              ; preds = %145
  %149 = load i32, i32* %8, align 4
  %150 = icmp slt i32 %149, 168432
  br i1 %150, label %151, label %158

151:                                              ; preds = %148
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** @hkscs1999_uni2indx_page200, align 8
  %153 = load i32, i32* %8, align 4
  %154 = ashr i32 %153, 4
  %155 = sub nsw i32 %154, 8192
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i64 %156
  store %struct.TYPE_16__* %157, %struct.TYPE_16__** %10, align 8
  br label %200

158:                                              ; preds = %148, %145
  %159 = load i32, i32* %8, align 4
  %160 = icmp sge i32 %159, 168960
  br i1 %160, label %161, label %171

161:                                              ; preds = %158
  %162 = load i32, i32* %8, align 4
  %163 = icmp slt i32 %162, 169472
  br i1 %163, label %164, label %171

164:                                              ; preds = %161
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** @hkscs1999_uni2indx_page294, align 8
  %166 = load i32, i32* %8, align 4
  %167 = ashr i32 %166, 4
  %168 = sub nsw i32 %167, 10560
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i64 %169
  store %struct.TYPE_16__* %170, %struct.TYPE_16__** %10, align 8
  br label %199

171:                                              ; preds = %161, %158
  %172 = load i32, i32* %8, align 4
  %173 = icmp sge i32 %172, 169728
  br i1 %173, label %174, label %184

174:                                              ; preds = %171
  %175 = load i32, i32* %8, align 4
  %176 = icmp slt i32 %175, 173744
  br i1 %176, label %177, label %184

177:                                              ; preds = %174
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** @hkscs1999_uni2indx_page297, align 8
  %179 = load i32, i32* %8, align 4
  %180 = ashr i32 %179, 4
  %181 = sub nsw i32 %180, 10608
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i64 %182
  store %struct.TYPE_16__* %183, %struct.TYPE_16__** %10, align 8
  br label %198

184:                                              ; preds = %174, %171
  %185 = load i32, i32* %8, align 4
  %186 = icmp sge i32 %185, 194560
  br i1 %186, label %187, label %197

187:                                              ; preds = %184
  %188 = load i32, i32* %8, align 4
  %189 = icmp slt i32 %188, 195040
  br i1 %189, label %190, label %197

190:                                              ; preds = %187
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** @hkscs1999_uni2indx_page2f8, align 8
  %192 = load i32, i32* %8, align 4
  %193 = ashr i32 %192, 4
  %194 = sub nsw i32 %193, 12160
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i64 %195
  store %struct.TYPE_16__* %196, %struct.TYPE_16__** %10, align 8
  br label %197

197:                                              ; preds = %190, %187, %184
  br label %198

198:                                              ; preds = %197, %177
  br label %199

199:                                              ; preds = %198, %164
  br label %200

200:                                              ; preds = %199, %151
  br label %201

201:                                              ; preds = %200, %138
  br label %202

202:                                              ; preds = %201, %125
  br label %203

203:                                              ; preds = %202, %112
  br label %204

204:                                              ; preds = %203, %99
  br label %205

205:                                              ; preds = %204, %86
  br label %206

206:                                              ; preds = %205, %73
  br label %207

207:                                              ; preds = %206, %60
  br label %208

208:                                              ; preds = %207, %47
  br label %209

209:                                              ; preds = %208, %34
  br label %210

210:                                              ; preds = %209, %22
  %211 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %212 = icmp ne %struct.TYPE_16__* %211, null
  br i1 %212, label %213, label %292

213:                                              ; preds = %210
  %214 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %214, i32 0, i32 0
  %216 = load i16, i16* %215, align 2
  store i16 %216, i16* %11, align 2
  %217 = load i32, i32* %8, align 4
  %218 = and i32 %217, 15
  store i32 %218, i32* %12, align 4
  %219 = load i16, i16* %11, align 2
  %220 = zext i16 %219 to i32
  %221 = load i32, i32* %12, align 4
  %222 = shl i32 1, %221
  %223 = and i32 %220, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %291

225:                                              ; preds = %213
  %226 = load i32, i32* %12, align 4
  %227 = shl i32 1, %226
  %228 = sub nsw i32 %227, 1
  %229 = load i16, i16* %11, align 2
  %230 = zext i16 %229 to i32
  %231 = and i32 %230, %228
  %232 = trunc i32 %231 to i16
  store i16 %232, i16* %11, align 2
  %233 = load i16, i16* %11, align 2
  %234 = zext i16 %233 to i32
  %235 = and i32 %234, 21845
  %236 = load i16, i16* %11, align 2
  %237 = zext i16 %236 to i32
  %238 = and i32 %237, 43690
  %239 = ashr i32 %238, 1
  %240 = add nsw i32 %235, %239
  %241 = trunc i32 %240 to i16
  store i16 %241, i16* %11, align 2
  %242 = load i16, i16* %11, align 2
  %243 = zext i16 %242 to i32
  %244 = and i32 %243, 13107
  %245 = load i16, i16* %11, align 2
  %246 = zext i16 %245 to i32
  %247 = and i32 %246, 52428
  %248 = ashr i32 %247, 2
  %249 = add nsw i32 %244, %248
  %250 = trunc i32 %249 to i16
  store i16 %250, i16* %11, align 2
  %251 = load i16, i16* %11, align 2
  %252 = zext i16 %251 to i32
  %253 = and i32 %252, 3855
  %254 = load i16, i16* %11, align 2
  %255 = zext i16 %254 to i32
  %256 = and i32 %255, 61680
  %257 = ashr i32 %256, 4
  %258 = add nsw i32 %253, %257
  %259 = trunc i32 %258 to i16
  store i16 %259, i16* %11, align 2
  %260 = load i16, i16* %11, align 2
  %261 = zext i16 %260 to i32
  %262 = and i32 %261, 255
  %263 = load i16, i16* %11, align 2
  %264 = zext i16 %263 to i32
  %265 = ashr i32 %264, 8
  %266 = add nsw i32 %262, %265
  %267 = trunc i32 %266 to i16
  store i16 %267, i16* %11, align 2
  %268 = load i16*, i16** @hkscs1999_2charset, align 8
  %269 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %270 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %269, i32 0, i32 1
  %271 = load i16, i16* %270, align 2
  %272 = zext i16 %271 to i32
  %273 = load i16, i16* %11, align 2
  %274 = zext i16 %273 to i32
  %275 = add nsw i32 %272, %274
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i16, i16* %268, i64 %276
  %278 = load i16, i16* %277, align 2
  store i16 %278, i16* %13, align 2
  %279 = load i16, i16* %13, align 2
  %280 = zext i16 %279 to i32
  %281 = ashr i32 %280, 8
  %282 = trunc i32 %281 to i8
  %283 = load i8*, i8** %7, align 8
  %284 = getelementptr inbounds i8, i8* %283, i64 0
  store i8 %282, i8* %284, align 1
  %285 = load i16, i16* %13, align 2
  %286 = zext i16 %285 to i32
  %287 = and i32 %286, 255
  %288 = trunc i32 %287 to i8
  %289 = load i8*, i8** %7, align 8
  %290 = getelementptr inbounds i8, i8* %289, i64 1
  store i8 %288, i8* %290, align 1
  store i32 2, i32* %5, align 4
  br label %296

291:                                              ; preds = %213
  br label %292

292:                                              ; preds = %291, %210
  %293 = load i32, i32* @RET_ILUNI, align 4
  store i32 %293, i32* %5, align 4
  br label %296

294:                                              ; preds = %4
  %295 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %295, i32* %5, align 4
  br label %296

296:                                              ; preds = %294, %292, %225
  %297 = load i32, i32* %5, align 4
  ret i32 %297
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

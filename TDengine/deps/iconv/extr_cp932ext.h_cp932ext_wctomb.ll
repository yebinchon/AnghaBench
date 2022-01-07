; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp932ext.h_cp932ext_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp932ext.h_cp932ext_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i16, i16 }

@cp932ext_uni2indx_page21 = common dso_local global %struct.TYPE_16__* null, align 8
@cp932ext_uni2indx_page24 = common dso_local global %struct.TYPE_16__* null, align 8
@cp932ext_uni2indx_page30 = common dso_local global %struct.TYPE_16__* null, align 8
@cp932ext_uni2indx_page32 = common dso_local global %struct.TYPE_16__* null, align 8
@cp932ext_uni2indx_page4e = common dso_local global %struct.TYPE_16__* null, align 8
@cp932ext_uni2indx_page57 = common dso_local global %struct.TYPE_16__* null, align 8
@cp932ext_uni2indx_page5b = common dso_local global %struct.TYPE_16__* null, align 8
@cp932ext_uni2indx_page5f = common dso_local global %struct.TYPE_16__* null, align 8
@cp932ext_uni2indx_page7d = common dso_local global %struct.TYPE_16__* null, align 8
@cp932ext_uni2indx_page83 = common dso_local global %struct.TYPE_16__* null, align 8
@cp932ext_uni2indx_page88 = common dso_local global %struct.TYPE_16__* null, align 8
@cp932ext_uni2indx_page90 = common dso_local global %struct.TYPE_16__* null, align 8
@cp932ext_uni2indx_pagef9 = common dso_local global %struct.TYPE_16__* null, align 8
@cp932ext_uni2indx_pageff = common dso_local global %struct.TYPE_16__* null, align 8
@cp932ext_2charset = common dso_local global i16* null, align 8
@RET_ILUNI = common dso_local global i32 0, align 4
@RET_TOOSMALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @cp932ext_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp932ext_wctomb(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
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
  br i1 %15, label %16, label %295

16:                                               ; preds = %4
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %10, align 8
  %17 = load i32, i32* %8, align 4
  %18 = icmp sge i32 %17, 8448
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 8896
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** @cp932ext_uni2indx_page21, align 8
  %24 = load i32, i32* %8, align 4
  %25 = ashr i32 %24, 4
  %26 = sub nsw i32 %25, 528
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i64 %27
  store %struct.TYPE_16__* %28, %struct.TYPE_16__** %10, align 8
  br label %211

29:                                               ; preds = %19, %16
  %30 = load i32, i32* %8, align 4
  %31 = icmp sge i32 %30, 9216
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 9344
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** @cp932ext_uni2indx_page24, align 8
  %37 = load i32, i32* %8, align 4
  %38 = ashr i32 %37, 4
  %39 = sub nsw i32 %38, 576
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i64 %40
  store %struct.TYPE_16__* %41, %struct.TYPE_16__** %10, align 8
  br label %210

42:                                               ; preds = %32, %29
  %43 = load i32, i32* %8, align 4
  %44 = icmp sge i32 %43, 12288
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 12320
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** @cp932ext_uni2indx_page30, align 8
  %50 = load i32, i32* %8, align 4
  %51 = ashr i32 %50, 4
  %52 = sub nsw i32 %51, 768
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i64 %53
  store %struct.TYPE_16__* %54, %struct.TYPE_16__** %10, align 8
  br label %209

55:                                               ; preds = %45, %42
  %56 = load i32, i32* %8, align 4
  %57 = icmp sge i32 %56, 12800
  br i1 %57, label %58, label %68

58:                                               ; preds = %55
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 13264
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** @cp932ext_uni2indx_page32, align 8
  %63 = load i32, i32* %8, align 4
  %64 = ashr i32 %63, 4
  %65 = sub nsw i32 %64, 800
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i64 %66
  store %struct.TYPE_16__* %67, %struct.TYPE_16__** %10, align 8
  br label %208

68:                                               ; preds = %58, %55
  %69 = load i32, i32* %8, align 4
  %70 = icmp sge i32 %69, 19968
  br i1 %70, label %71, label %81

71:                                               ; preds = %68
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %72, 21904
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** @cp932ext_uni2indx_page4e, align 8
  %76 = load i32, i32* %8, align 4
  %77 = ashr i32 %76, 4
  %78 = sub nsw i32 %77, 1248
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i64 %79
  store %struct.TYPE_16__* %80, %struct.TYPE_16__** %10, align 8
  br label %207

81:                                               ; preds = %71, %68
  %82 = load i32, i32* %8, align 4
  %83 = icmp sge i32 %82, 22272
  br i1 %83, label %84, label %94

84:                                               ; preds = %81
  %85 = load i32, i32* %8, align 4
  %86 = icmp slt i32 %85, 22976
  br i1 %86, label %87, label %94

87:                                               ; preds = %84
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** @cp932ext_uni2indx_page57, align 8
  %89 = load i32, i32* %8, align 4
  %90 = ashr i32 %89, 4
  %91 = sub nsw i32 %90, 1392
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i64 %92
  store %struct.TYPE_16__* %93, %struct.TYPE_16__** %10, align 8
  br label %206

94:                                               ; preds = %84, %81
  %95 = load i32, i32* %8, align 4
  %96 = icmp sge i32 %95, 23296
  br i1 %96, label %97, label %107

97:                                               ; preds = %94
  %98 = load i32, i32* %8, align 4
  %99 = icmp slt i32 %98, 24032
  br i1 %99, label %100, label %107

100:                                              ; preds = %97
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** @cp932ext_uni2indx_page5b, align 8
  %102 = load i32, i32* %8, align 4
  %103 = ashr i32 %102, 4
  %104 = sub nsw i32 %103, 1456
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i64 %105
  store %struct.TYPE_16__* %106, %struct.TYPE_16__** %10, align 8
  br label %205

107:                                              ; preds = %97, %94
  %108 = load i32, i32* %8, align 4
  %109 = icmp sge i32 %108, 24320
  br i1 %109, label %110, label %120

110:                                              ; preds = %107
  %111 = load i32, i32* %8, align 4
  %112 = icmp slt i32 %111, 31648
  br i1 %112, label %113, label %120

113:                                              ; preds = %110
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** @cp932ext_uni2indx_page5f, align 8
  %115 = load i32, i32* %8, align 4
  %116 = ashr i32 %115, 4
  %117 = sub nsw i32 %116, 1520
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i64 %118
  store %struct.TYPE_16__* %119, %struct.TYPE_16__** %10, align 8
  br label %204

120:                                              ; preds = %110, %107
  %121 = load i32, i32* %8, align 4
  %122 = icmp sge i32 %121, 32000
  br i1 %122, label %123, label %133

123:                                              ; preds = %120
  %124 = load i32, i32* %8, align 4
  %125 = icmp slt i32 %124, 32688
  br i1 %125, label %126, label %133

126:                                              ; preds = %123
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** @cp932ext_uni2indx_page7d, align 8
  %128 = load i32, i32* %8, align 4
  %129 = ashr i32 %128, 4
  %130 = sub nsw i32 %129, 2000
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i64 %131
  store %struct.TYPE_16__* %132, %struct.TYPE_16__** %10, align 8
  br label %203

133:                                              ; preds = %123, %120
  %134 = load i32, i32* %8, align 4
  %135 = icmp sge i32 %134, 33536
  br i1 %135, label %136, label %146

136:                                              ; preds = %133
  %137 = load i32, i32* %8, align 4
  %138 = icmp slt i32 %137, 34240
  br i1 %138, label %139, label %146

139:                                              ; preds = %136
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** @cp932ext_uni2indx_page83, align 8
  %141 = load i32, i32* %8, align 4
  %142 = ashr i32 %141, 4
  %143 = sub nsw i32 %142, 2096
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i64 %144
  store %struct.TYPE_16__* %145, %struct.TYPE_16__** %10, align 8
  br label %202

146:                                              ; preds = %136, %133
  %147 = load i32, i32* %8, align 4
  %148 = icmp sge i32 %147, 34816
  br i1 %148, label %149, label %159

149:                                              ; preds = %146
  %150 = load i32, i32* %8, align 4
  %151 = icmp slt i32 %150, 36560
  br i1 %151, label %152, label %159

152:                                              ; preds = %149
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** @cp932ext_uni2indx_page88, align 8
  %154 = load i32, i32* %8, align 4
  %155 = ashr i32 %154, 4
  %156 = sub nsw i32 %155, 2176
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i64 %157
  store %struct.TYPE_16__* %158, %struct.TYPE_16__** %10, align 8
  br label %201

159:                                              ; preds = %149, %146
  %160 = load i32, i32* %8, align 4
  %161 = icmp sge i32 %160, 36864
  br i1 %161, label %162, label %172

162:                                              ; preds = %159
  %163 = load i32, i32* %8, align 4
  %164 = icmp slt i32 %163, 40672
  br i1 %164, label %165, label %172

165:                                              ; preds = %162
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** @cp932ext_uni2indx_page90, align 8
  %167 = load i32, i32* %8, align 4
  %168 = ashr i32 %167, 4
  %169 = sub nsw i32 %168, 2304
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i64 %170
  store %struct.TYPE_16__* %171, %struct.TYPE_16__** %10, align 8
  br label %200

172:                                              ; preds = %162, %159
  %173 = load i32, i32* %8, align 4
  %174 = icmp sge i32 %173, 63744
  br i1 %174, label %175, label %185

175:                                              ; preds = %172
  %176 = load i32, i32* %8, align 4
  %177 = icmp slt i32 %176, 64048
  br i1 %177, label %178, label %185

178:                                              ; preds = %175
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** @cp932ext_uni2indx_pagef9, align 8
  %180 = load i32, i32* %8, align 4
  %181 = ashr i32 %180, 4
  %182 = sub nsw i32 %181, 3984
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i64 %183
  store %struct.TYPE_16__* %184, %struct.TYPE_16__** %10, align 8
  br label %199

185:                                              ; preds = %175, %172
  %186 = load i32, i32* %8, align 4
  %187 = icmp sge i32 %186, 65280
  br i1 %187, label %188, label %198

188:                                              ; preds = %185
  %189 = load i32, i32* %8, align 4
  %190 = icmp slt i32 %189, 65520
  br i1 %190, label %191, label %198

191:                                              ; preds = %188
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** @cp932ext_uni2indx_pageff, align 8
  %193 = load i32, i32* %8, align 4
  %194 = ashr i32 %193, 4
  %195 = sub nsw i32 %194, 4080
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i64 %196
  store %struct.TYPE_16__* %197, %struct.TYPE_16__** %10, align 8
  br label %198

198:                                              ; preds = %191, %188, %185
  br label %199

199:                                              ; preds = %198, %178
  br label %200

200:                                              ; preds = %199, %165
  br label %201

201:                                              ; preds = %200, %152
  br label %202

202:                                              ; preds = %201, %139
  br label %203

203:                                              ; preds = %202, %126
  br label %204

204:                                              ; preds = %203, %113
  br label %205

205:                                              ; preds = %204, %100
  br label %206

206:                                              ; preds = %205, %87
  br label %207

207:                                              ; preds = %206, %74
  br label %208

208:                                              ; preds = %207, %61
  br label %209

209:                                              ; preds = %208, %48
  br label %210

210:                                              ; preds = %209, %35
  br label %211

211:                                              ; preds = %210, %22
  %212 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %213 = icmp ne %struct.TYPE_16__* %212, null
  br i1 %213, label %214, label %293

214:                                              ; preds = %211
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 0
  %217 = load i16, i16* %216, align 2
  store i16 %217, i16* %11, align 2
  %218 = load i32, i32* %8, align 4
  %219 = and i32 %218, 15
  store i32 %219, i32* %12, align 4
  %220 = load i16, i16* %11, align 2
  %221 = zext i16 %220 to i32
  %222 = load i32, i32* %12, align 4
  %223 = shl i32 1, %222
  %224 = and i32 %221, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %292

226:                                              ; preds = %214
  %227 = load i32, i32* %12, align 4
  %228 = shl i32 1, %227
  %229 = sub nsw i32 %228, 1
  %230 = load i16, i16* %11, align 2
  %231 = zext i16 %230 to i32
  %232 = and i32 %231, %229
  %233 = trunc i32 %232 to i16
  store i16 %233, i16* %11, align 2
  %234 = load i16, i16* %11, align 2
  %235 = zext i16 %234 to i32
  %236 = and i32 %235, 21845
  %237 = load i16, i16* %11, align 2
  %238 = zext i16 %237 to i32
  %239 = and i32 %238, 43690
  %240 = ashr i32 %239, 1
  %241 = add nsw i32 %236, %240
  %242 = trunc i32 %241 to i16
  store i16 %242, i16* %11, align 2
  %243 = load i16, i16* %11, align 2
  %244 = zext i16 %243 to i32
  %245 = and i32 %244, 13107
  %246 = load i16, i16* %11, align 2
  %247 = zext i16 %246 to i32
  %248 = and i32 %247, 52428
  %249 = ashr i32 %248, 2
  %250 = add nsw i32 %245, %249
  %251 = trunc i32 %250 to i16
  store i16 %251, i16* %11, align 2
  %252 = load i16, i16* %11, align 2
  %253 = zext i16 %252 to i32
  %254 = and i32 %253, 3855
  %255 = load i16, i16* %11, align 2
  %256 = zext i16 %255 to i32
  %257 = and i32 %256, 61680
  %258 = ashr i32 %257, 4
  %259 = add nsw i32 %254, %258
  %260 = trunc i32 %259 to i16
  store i16 %260, i16* %11, align 2
  %261 = load i16, i16* %11, align 2
  %262 = zext i16 %261 to i32
  %263 = and i32 %262, 255
  %264 = load i16, i16* %11, align 2
  %265 = zext i16 %264 to i32
  %266 = ashr i32 %265, 8
  %267 = add nsw i32 %263, %266
  %268 = trunc i32 %267 to i16
  store i16 %268, i16* %11, align 2
  %269 = load i16*, i16** @cp932ext_2charset, align 8
  %270 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %271 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %270, i32 0, i32 1
  %272 = load i16, i16* %271, align 2
  %273 = zext i16 %272 to i32
  %274 = load i16, i16* %11, align 2
  %275 = zext i16 %274 to i32
  %276 = add nsw i32 %273, %275
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i16, i16* %269, i64 %277
  %279 = load i16, i16* %278, align 2
  store i16 %279, i16* %13, align 2
  %280 = load i16, i16* %13, align 2
  %281 = zext i16 %280 to i32
  %282 = ashr i32 %281, 8
  %283 = trunc i32 %282 to i8
  %284 = load i8*, i8** %7, align 8
  %285 = getelementptr inbounds i8, i8* %284, i64 0
  store i8 %283, i8* %285, align 1
  %286 = load i16, i16* %13, align 2
  %287 = zext i16 %286 to i32
  %288 = and i32 %287, 255
  %289 = trunc i32 %288 to i8
  %290 = load i8*, i8** %7, align 8
  %291 = getelementptr inbounds i8, i8* %290, i64 1
  store i8 %289, i8* %291, align 1
  store i32 2, i32* %5, align 4
  br label %297

292:                                              ; preds = %214
  br label %293

293:                                              ; preds = %292, %211
  %294 = load i32, i32* @RET_ILUNI, align 4
  store i32 %294, i32* %5, align 4
  br label %297

295:                                              ; preds = %4
  %296 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %296, i32* %5, align 4
  br label %297

297:                                              ; preds = %295, %293, %226
  %298 = load i32, i32* %5, align 4
  ret i32 %298
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

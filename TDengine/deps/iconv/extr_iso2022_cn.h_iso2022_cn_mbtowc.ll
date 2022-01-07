; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_iso2022_cn.h_iso2022_cn_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_iso2022_cn.h_iso2022_cn_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8* }

@SPLIT_STATE = common dso_local global i32 0, align 4
@ESC = common dso_local global i8 0, align 1
@state2 = common dso_local global i64 0, align 8
@state3 = common dso_local global i32 0, align 4
@RET_ILSEQ = common dso_local global i32 0, align 4
@COMBINE_STATE = common dso_local global i32 0, align 4
@SO = common dso_local global i8 0, align 1
@state1 = common dso_local global i32 0, align 4
@SI = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i8*, i32)* @iso2022_cn_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iso2022_cn_mbtowc(%struct.TYPE_7__* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %10, align 8
  %19 = load i32, i32* @SPLIT_STATE, align 4
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %193, %176, %103, %79, %62, %4
  %21 = load i8*, i8** %8, align 8
  %22 = load i8, i8* %21, align 1
  store i8 %22, i8* %12, align 1
  %23 = load i8, i8* %12, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* @ESC, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %153

28:                                               ; preds = %20
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %11, align 4
  %31 = add nsw i32 %30, 4
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %285

34:                                               ; preds = %28
  %35 = load i8*, i8** %8, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp eq i32 %38, 36
  br i1 %39, label %40, label %106

40:                                               ; preds = %34
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 2
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp eq i32 %44, 41
  br i1 %45, label %46, label %81

46:                                               ; preds = %40
  %47 = load i8*, i8** %8, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 3
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp eq i32 %50, 65
  br i1 %51, label %52, label %63

52:                                               ; preds = %46
  store i64 133, i64* @state2, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 4
  store i8* %54, i8** %8, align 8
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, 4
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, 1
  %60 = icmp slt i32 %57, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  br label %285

62:                                               ; preds = %52
  br label %20

63:                                               ; preds = %46
  %64 = load i8*, i8** %8, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 3
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = icmp eq i32 %67, 71
  br i1 %68, label %69, label %80

69:                                               ; preds = %63
  store i64 134, i64* @state2, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 4
  store i8* %71, i8** %8, align 8
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 4
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 1
  %77 = icmp slt i32 %74, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %69
  br label %285

79:                                               ; preds = %69
  br label %20

80:                                               ; preds = %63
  br label %81

81:                                               ; preds = %80, %40
  %82 = load i8*, i8** %8, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 2
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = icmp eq i32 %85, 42
  br i1 %86, label %87, label %105

87:                                               ; preds = %81
  %88 = load i8*, i8** %8, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 3
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = icmp eq i32 %91, 72
  br i1 %92, label %93, label %104

93:                                               ; preds = %87
  store i32 131, i32* @state3, align 4
  %94 = load i8*, i8** %8, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 4
  store i8* %95, i8** %8, align 8
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %96, 4
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, 1
  %101 = icmp slt i32 %98, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %93
  br label %285

103:                                              ; preds = %93
  br label %20

104:                                              ; preds = %87
  br label %105

105:                                              ; preds = %104, %81
  br label %106

106:                                              ; preds = %105, %34
  %107 = load i8*, i8** %8, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 1
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = icmp eq i32 %110, 78
  br i1 %111, label %112, label %152

112:                                              ; preds = %106
  %113 = load i32, i32* @state3, align 4
  switch i32 %113, label %150 [
    i32 130, label %114
    i32 131, label %115
  ]

114:                                              ; preds = %112
  br label %292

115:                                              ; preds = %112
  %116 = load i8*, i8** %8, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 2
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i32
  %120 = icmp slt i32 %119, 128
  br i1 %120, label %121, label %149

121:                                              ; preds = %115
  %122 = load i8*, i8** %8, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 3
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i32
  %126 = icmp slt i32 %125, 128
  br i1 %126, label %127, label %149

127:                                              ; preds = %121
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %129 = load i32*, i32** %7, align 8
  %130 = load i8*, i8** %8, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 2
  %132 = call i32 @cns11643_2_mbtowc(%struct.TYPE_7__* %128, i32* %129, i8* %131, i32 2)
  store i32 %132, i32* %13, align 4
  %133 = load i32, i32* %13, align 4
  %134 = load i32, i32* @RET_ILSEQ, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %127
  br label %292

137:                                              ; preds = %127
  %138 = load i32, i32* %13, align 4
  %139 = icmp ne i32 %138, 2
  br i1 %139, label %140, label %142

140:                                              ; preds = %137
  %141 = call i32 (...) @abort() #3
  unreachable

142:                                              ; preds = %137
  %143 = load i32, i32* @COMBINE_STATE, align 4
  %144 = load i8*, i8** %10, align 8
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  store i8* %144, i8** %146, align 8
  %147 = load i32, i32* %11, align 4
  %148 = add nsw i32 %147, 4
  store i32 %148, i32* %5, align 4
  br label %299

149:                                              ; preds = %121, %115
  br label %292

150:                                              ; preds = %112
  %151 = call i32 (...) @abort() #3
  unreachable

152:                                              ; preds = %106
  br label %292

153:                                              ; preds = %20
  %154 = load i8, i8* %12, align 1
  %155 = zext i8 %154 to i32
  %156 = load i8, i8* @SO, align 1
  %157 = zext i8 %156 to i32
  %158 = icmp eq i32 %155, %157
  br i1 %158, label %159, label %177

159:                                              ; preds = %153
  %160 = load i64, i64* @state2, align 8
  %161 = icmp ne i64 %160, 133
  br i1 %161, label %162, label %166

162:                                              ; preds = %159
  %163 = load i64, i64* @state2, align 8
  %164 = icmp ne i64 %163, 134
  br i1 %164, label %165, label %166

165:                                              ; preds = %162
  br label %292

166:                                              ; preds = %162, %159
  store i32 128, i32* @state1, align 4
  %167 = load i8*, i8** %8, align 8
  %168 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %168, i8** %8, align 8
  %169 = load i32, i32* %11, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %11, align 4
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* %11, align 4
  %173 = add nsw i32 %172, 1
  %174 = icmp slt i32 %171, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %166
  br label %285

176:                                              ; preds = %166
  br label %20

177:                                              ; preds = %153
  %178 = load i8, i8* %12, align 1
  %179 = zext i8 %178 to i32
  %180 = load i8, i8* @SI, align 1
  %181 = zext i8 %180 to i32
  %182 = icmp eq i32 %179, %181
  br i1 %182, label %183, label %194

183:                                              ; preds = %177
  store i32 129, i32* @state1, align 4
  %184 = load i8*, i8** %8, align 8
  %185 = getelementptr inbounds i8, i8* %184, i32 1
  store i8* %185, i8** %8, align 8
  %186 = load i32, i32* %11, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %11, align 4
  %188 = load i32, i32* %9, align 4
  %189 = load i32, i32* %11, align 4
  %190 = add nsw i32 %189, 1
  %191 = icmp slt i32 %188, %190
  br i1 %191, label %192, label %193

192:                                              ; preds = %183
  br label %285

193:                                              ; preds = %183
  br label %20

194:                                              ; preds = %177
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* @state1, align 4
  switch i32 %196, label %283 [
    i32 129, label %197
    i32 128, label %232
  ]

197:                                              ; preds = %195
  %198 = load i8, i8* %12, align 1
  %199 = zext i8 %198 to i32
  %200 = icmp slt i32 %199, 128
  br i1 %200, label %201, label %231

201:                                              ; preds = %197
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %203 = load i32*, i32** %7, align 8
  %204 = load i8*, i8** %8, align 8
  %205 = call i32 @ascii_mbtowc(%struct.TYPE_7__* %202, i32* %203, i8* %204, i32 1)
  store i32 %205, i32* %14, align 4
  %206 = load i32, i32* %14, align 4
  %207 = load i32, i32* @RET_ILSEQ, align 4
  %208 = icmp eq i32 %206, %207
  br i1 %208, label %209, label %210

209:                                              ; preds = %201
  br label %292

210:                                              ; preds = %201
  %211 = load i32, i32* %14, align 4
  %212 = icmp ne i32 %211, 1
  br i1 %212, label %213, label %215

213:                                              ; preds = %210
  %214 = call i32 (...) @abort() #3
  unreachable

215:                                              ; preds = %210
  %216 = load i32*, i32** %7, align 8
  %217 = load i32, i32* %216, align 4
  %218 = icmp eq i32 %217, 10
  br i1 %218, label %223, label %219

219:                                              ; preds = %215
  %220 = load i32*, i32** %7, align 8
  %221 = load i32, i32* %220, align 4
  %222 = icmp eq i32 %221, 13
  br i1 %222, label %223, label %224

223:                                              ; preds = %219, %215
  store i64 132, i64* @state2, align 8
  store i32 130, i32* @state3, align 4
  br label %224

224:                                              ; preds = %223, %219
  %225 = load i32, i32* @COMBINE_STATE, align 4
  %226 = load i8*, i8** %10, align 8
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 0
  store i8* %226, i8** %228, align 8
  %229 = load i32, i32* %11, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %5, align 4
  br label %299

231:                                              ; preds = %197
  br label %292

232:                                              ; preds = %195
  %233 = load i32, i32* %9, align 4
  %234 = load i32, i32* %11, align 4
  %235 = add nsw i32 %234, 2
  %236 = icmp slt i32 %233, %235
  br i1 %236, label %237, label %238

237:                                              ; preds = %232
  br label %285

238:                                              ; preds = %232
  %239 = load i8*, i8** %8, align 8
  %240 = getelementptr inbounds i8, i8* %239, i64 0
  %241 = load i8, i8* %240, align 1
  %242 = zext i8 %241 to i32
  %243 = icmp slt i32 %242, 128
  br i1 %243, label %244, label %282

244:                                              ; preds = %238
  %245 = load i8*, i8** %8, align 8
  %246 = getelementptr inbounds i8, i8* %245, i64 1
  %247 = load i8, i8* %246, align 1
  %248 = zext i8 %247 to i32
  %249 = icmp slt i32 %248, 128
  br i1 %249, label %250, label %282

250:                                              ; preds = %244
  %251 = load i64, i64* @state2, align 8
  switch i64 %251, label %263 [
    i64 132, label %252
    i64 133, label %253
    i64 134, label %258
  ]

252:                                              ; preds = %250
  br label %292

253:                                              ; preds = %250
  %254 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %255 = load i32*, i32** %7, align 8
  %256 = load i8*, i8** %8, align 8
  %257 = call i32 @gb2312_mbtowc(%struct.TYPE_7__* %254, i32* %255, i8* %256, i32 2)
  store i32 %257, i32* %15, align 4
  br label %265

258:                                              ; preds = %250
  %259 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %260 = load i32*, i32** %7, align 8
  %261 = load i8*, i8** %8, align 8
  %262 = call i32 @cns11643_1_mbtowc(%struct.TYPE_7__* %259, i32* %260, i8* %261, i32 2)
  store i32 %262, i32* %15, align 4
  br label %265

263:                                              ; preds = %250
  %264 = call i32 (...) @abort() #3
  unreachable

265:                                              ; preds = %258, %253
  %266 = load i32, i32* %15, align 4
  %267 = load i32, i32* @RET_ILSEQ, align 4
  %268 = icmp eq i32 %266, %267
  br i1 %268, label %269, label %270

269:                                              ; preds = %265
  br label %292

270:                                              ; preds = %265
  %271 = load i32, i32* %15, align 4
  %272 = icmp ne i32 %271, 2
  br i1 %272, label %273, label %275

273:                                              ; preds = %270
  %274 = call i32 (...) @abort() #3
  unreachable

275:                                              ; preds = %270
  %276 = load i32, i32* @COMBINE_STATE, align 4
  %277 = load i8*, i8** %10, align 8
  %278 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %279 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %278, i32 0, i32 0
  store i8* %277, i8** %279, align 8
  %280 = load i32, i32* %11, align 4
  %281 = add nsw i32 %280, 2
  store i32 %281, i32* %5, align 4
  br label %299

282:                                              ; preds = %244, %238
  br label %292

283:                                              ; preds = %195
  %284 = call i32 (...) @abort() #3
  unreachable

285:                                              ; preds = %237, %192, %175, %102, %78, %61, %33
  %286 = load i32, i32* @COMBINE_STATE, align 4
  %287 = load i8*, i8** %10, align 8
  %288 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %289 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %288, i32 0, i32 0
  store i8* %287, i8** %289, align 8
  %290 = load i32, i32* %11, align 4
  %291 = call i32 @RET_TOOFEW(i32 %290)
  store i32 %291, i32* %5, align 4
  br label %299

292:                                              ; preds = %282, %269, %252, %231, %209, %165, %152, %149, %136, %114
  %293 = load i32, i32* @COMBINE_STATE, align 4
  %294 = load i8*, i8** %10, align 8
  %295 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %296 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %295, i32 0, i32 0
  store i8* %294, i8** %296, align 8
  %297 = load i32, i32* %11, align 4
  %298 = call i32 @RET_SHIFT_ILSEQ(i32 %297)
  store i32 %298, i32* %5, align 4
  br label %299

299:                                              ; preds = %292, %285, %275, %224, %142
  %300 = load i32, i32* %5, align 4
  ret i32 %300
}

declare dso_local i32 @cns11643_2_mbtowc(%struct.TYPE_7__*, i32*, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @ascii_mbtowc(%struct.TYPE_7__*, i32*, i8*, i32) #1

declare dso_local i32 @gb2312_mbtowc(%struct.TYPE_7__*, i32*, i8*, i32) #1

declare dso_local i32 @cns11643_1_mbtowc(%struct.TYPE_7__*, i32*, i8*, i32) #1

declare dso_local i32 @RET_TOOFEW(i32) #1

declare dso_local i32 @RET_SHIFT_ILSEQ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

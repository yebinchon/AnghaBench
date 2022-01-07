; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_layer.c_free_layer.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_layer.c_free_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@DROPOUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_layer(%struct.TYPE_3__* byval(%struct.TYPE_3__) align 8 %0) #0 {
  %2 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %3 = load i64, i64* %2, align 8
  %4 = load i64, i64* @DROPOUT, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 73
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 73
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @free(i64 %12)
  br label %14

14:                                               ; preds = %10, %6
  br label %335

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 78
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 78
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @free(i64 %21)
  br label %23

23:                                               ; preds = %19, %15
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 77
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 77
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @free(i64 %29)
  br label %31

31:                                               ; preds = %27, %23
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 76
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 76
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @free(i64 %37)
  br label %39

39:                                               ; preds = %35, %31
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 75
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 75
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @free(i64 %45)
  br label %47

47:                                               ; preds = %43, %39
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 74
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 74
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @free(i64 %53)
  br label %55

55:                                               ; preds = %51, %47
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 73
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 73
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @free(i64 %61)
  br label %63

63:                                               ; preds = %59, %55
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 72
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 72
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @free(i64 %69)
  br label %71

71:                                               ; preds = %67, %63
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 71
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 71
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @free(i64 %77)
  br label %79

79:                                               ; preds = %75, %71
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 70
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 70
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @free(i64 %85)
  br label %87

87:                                               ; preds = %83, %79
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 69
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 69
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @free(i64 %93)
  br label %95

95:                                               ; preds = %91, %87
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 68
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 68
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @free(i64 %101)
  br label %103

103:                                              ; preds = %99, %95
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 67
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 67
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @free(i64 %109)
  br label %111

111:                                              ; preds = %107, %103
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 66
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 66
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @free(i64 %117)
  br label %119

119:                                              ; preds = %115, %111
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 65
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 65
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @free(i64 %125)
  br label %127

127:                                              ; preds = %123, %119
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 64
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 64
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @free(i64 %133)
  br label %135

135:                                              ; preds = %131, %127
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 63
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 63
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @free(i64 %141)
  br label %143

143:                                              ; preds = %139, %135
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 62
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 62
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @free(i64 %149)
  br label %151

151:                                              ; preds = %147, %143
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 61
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 61
  %157 = load i64, i64* %156, align 8
  %158 = call i32 @free(i64 %157)
  br label %159

159:                                              ; preds = %155, %151
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 60
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 60
  %165 = load i64, i64* %164, align 8
  %166 = call i32 @free(i64 %165)
  br label %167

167:                                              ; preds = %163, %159
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 59
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %167
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 59
  %173 = load i64, i64* %172, align 8
  %174 = call i32 @free(i64 %173)
  br label %175

175:                                              ; preds = %171, %167
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 58
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %175
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 58
  %181 = load i64, i64* %180, align 8
  %182 = call i32 @free(i64 %181)
  br label %183

183:                                              ; preds = %179, %175
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 57
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 57
  %189 = load i64, i64* %188, align 8
  %190 = call i32 @free(i64 %189)
  br label %191

191:                                              ; preds = %187, %183
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 56
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %191
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 56
  %197 = load i64, i64* %196, align 8
  %198 = call i32 @free(i64 %197)
  br label %199

199:                                              ; preds = %195, %191
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 55
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %199
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 55
  %205 = load i64, i64* %204, align 8
  %206 = call i32 @free(i64 %205)
  br label %207

207:                                              ; preds = %203, %199
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 54
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %207
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 54
  %213 = load i64, i64* %212, align 8
  %214 = call i32 @free(i64 %213)
  br label %215

215:                                              ; preds = %211, %207
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 53
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %223

219:                                              ; preds = %215
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 53
  %221 = load i64, i64* %220, align 8
  %222 = call i32 @free(i64 %221)
  br label %223

223:                                              ; preds = %219, %215
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 52
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %231

227:                                              ; preds = %223
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 52
  %229 = load i64, i64* %228, align 8
  %230 = call i32 @free(i64 %229)
  br label %231

231:                                              ; preds = %227, %223
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 51
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %239

235:                                              ; preds = %231
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 51
  %237 = load i64, i64* %236, align 8
  %238 = call i32 @free(i64 %237)
  br label %239

239:                                              ; preds = %235, %231
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 50
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %247

243:                                              ; preds = %239
  %244 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 50
  %245 = load i64, i64* %244, align 8
  %246 = call i32 @free(i64 %245)
  br label %247

247:                                              ; preds = %243, %239
  %248 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 49
  %249 = load i64, i64* %248, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %255

251:                                              ; preds = %247
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 49
  %253 = load i64, i64* %252, align 8
  %254 = call i32 @free(i64 %253)
  br label %255

255:                                              ; preds = %251, %247
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 48
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %263

259:                                              ; preds = %255
  %260 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 48
  %261 = load i64, i64* %260, align 8
  %262 = call i32 @free(i64 %261)
  br label %263

263:                                              ; preds = %259, %255
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 47
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %271

267:                                              ; preds = %263
  %268 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 47
  %269 = load i64, i64* %268, align 8
  %270 = call i32 @free(i64 %269)
  br label %271

271:                                              ; preds = %267, %263
  %272 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 46
  %273 = load i64, i64* %272, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %279

275:                                              ; preds = %271
  %276 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 46
  %277 = load i64, i64* %276, align 8
  %278 = call i32 @free(i64 %277)
  br label %279

279:                                              ; preds = %275, %271
  %280 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 45
  %281 = load i64, i64* %280, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %287

283:                                              ; preds = %279
  %284 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 45
  %285 = load i64, i64* %284, align 8
  %286 = call i32 @free(i64 %285)
  br label %287

287:                                              ; preds = %283, %279
  %288 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 44
  %289 = load i64, i64* %288, align 8
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %295

291:                                              ; preds = %287
  %292 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 44
  %293 = load i64, i64* %292, align 8
  %294 = call i32 @free(i64 %293)
  br label %295

295:                                              ; preds = %291, %287
  %296 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 43
  %297 = load i64, i64* %296, align 8
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %303

299:                                              ; preds = %295
  %300 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 43
  %301 = load i64, i64* %300, align 8
  %302 = call i32 @free(i64 %301)
  br label %303

303:                                              ; preds = %299, %295
  %304 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 42
  %305 = load i64, i64* %304, align 8
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %311

307:                                              ; preds = %303
  %308 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 42
  %309 = load i64, i64* %308, align 8
  %310 = call i32 @free(i64 %309)
  br label %311

311:                                              ; preds = %307, %303
  %312 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 41
  %313 = load i64, i64* %312, align 8
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %319

315:                                              ; preds = %311
  %316 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 41
  %317 = load i64, i64* %316, align 8
  %318 = call i32 @free(i64 %317)
  br label %319

319:                                              ; preds = %315, %311
  %320 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 40
  %321 = load i64, i64* %320, align 8
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %327

323:                                              ; preds = %319
  %324 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 40
  %325 = load i64, i64* %324, align 8
  %326 = call i32 @free(i64 %325)
  br label %327

327:                                              ; preds = %323, %319
  %328 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 39
  %329 = load i64, i64* %328, align 8
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %335

331:                                              ; preds = %327
  %332 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 39
  %333 = load i64, i64* %332, align 8
  %334 = call i32 @free(i64 %333)
  br label %335

335:                                              ; preds = %14, %331, %327
  ret void
}

declare dso_local i32 @free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

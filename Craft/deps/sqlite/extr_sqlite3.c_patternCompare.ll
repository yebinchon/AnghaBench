; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_patternCompare.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_patternCompare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.compareInfo = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.compareInfo*, i32)* @patternCompare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patternCompare(i32* %0, i32* %1, %struct.compareInfo* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.compareInfo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.compareInfo* %2, %struct.compareInfo** %8, align 8
  store i32 %3, i32* %9, align 4
  %20 = load %struct.compareInfo*, %struct.compareInfo** %8, align 8
  %21 = getelementptr inbounds %struct.compareInfo, %struct.compareInfo* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %14, align 4
  %23 = load %struct.compareInfo*, %struct.compareInfo** %8, align 8
  %24 = getelementptr inbounds %struct.compareInfo, %struct.compareInfo* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %15, align 4
  %26 = load %struct.compareInfo*, %struct.compareInfo** %8, align 8
  %27 = getelementptr inbounds %struct.compareInfo, %struct.compareInfo* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %16, align 4
  %29 = load %struct.compareInfo*, %struct.compareInfo** %8, align 8
  %30 = getelementptr inbounds %struct.compareInfo, %struct.compareInfo* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %32

32:                                               ; preds = %287, %4
  %33 = call i32 @sqlite3Utf8Read(i32** %6)
  store i32 %33, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %288

35:                                               ; preds = %32
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %15, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %166

39:                                               ; preds = %35
  %40 = load i32, i32* %18, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %166, label %42

42:                                               ; preds = %39
  br label %43

43:                                               ; preds = %61, %42
  %44 = call i32 @sqlite3Utf8Read(i32** %6)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %15, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %14, align 4
  %50 = icmp eq i32 %48, %49
  br label %51

51:                                               ; preds = %47, %43
  %52 = phi i1 [ true, %43 ], [ %50, %47 ]
  br i1 %52, label %53, label %62

53:                                               ; preds = %51
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = call i32 @sqlite3Utf8Read(i32** %7)
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 0, i32* %5, align 4
  br label %293

61:                                               ; preds = %57, %53
  br label %43

62:                                               ; preds = %51
  %63 = load i32, i32* %10, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 1, i32* %5, align 4
  br label %293

66:                                               ; preds = %62
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = call i32 @sqlite3Utf8Read(i32** %6)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  store i32 0, i32* %5, align 4
  br label %293

75:                                               ; preds = %70
  br label %112

76:                                               ; preds = %66
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %16, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %111

80:                                               ; preds = %76
  %81 = load i32, i32* %9, align 4
  %82 = icmp eq i32 %81, 0
  %83 = zext i1 %82 to i32
  %84 = call i32 @assert(i32 %83)
  %85 = load i32, i32* %16, align 4
  %86 = icmp slt i32 %85, 128
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  br label %89

89:                                               ; preds = %103, %80
  %90 = load i32*, i32** %7, align 8
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %89
  %94 = load i32*, i32** %6, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 -1
  %96 = load i32*, i32** %7, align 8
  %97 = load %struct.compareInfo*, %struct.compareInfo** %8, align 8
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @patternCompare(i32* %95, i32* %96, %struct.compareInfo* %97, i32 %98)
  %100 = icmp eq i32 %99, 0
  br label %101

101:                                              ; preds = %93, %89
  %102 = phi i1 [ false, %89 ], [ %100, %93 ]
  br i1 %102, label %103, label %106

103:                                              ; preds = %101
  %104 = load i32*, i32** %7, align 8
  %105 = call i32 @SQLITE_SKIP_UTF8(i32* %104)
  br label %89

106:                                              ; preds = %101
  %107 = load i32*, i32** %7, align 8
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i32
  store i32 %110, i32* %5, align 4
  br label %293

111:                                              ; preds = %76
  br label %112

112:                                              ; preds = %111, %75
  br label %113

113:                                              ; preds = %112
  br label %114

114:                                              ; preds = %164, %113
  %115 = call i32 @sqlite3Utf8Read(i32** %7)
  store i32 %115, i32* %11, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %165

117:                                              ; preds = %114
  %118 = load i32, i32* %17, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %139

120:                                              ; preds = %117
  %121 = load i32, i32* %11, align 4
  %122 = call i32 @GlogUpperToLower(i32 %121)
  %123 = load i32, i32* %10, align 4
  %124 = call i32 @GlogUpperToLower(i32 %123)
  br label %125

125:                                              ; preds = %134, %120
  %126 = load i32, i32* %11, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = load i32, i32* %11, align 4
  %130 = load i32, i32* %10, align 4
  %131 = icmp ne i32 %129, %130
  br label %132

132:                                              ; preds = %128, %125
  %133 = phi i1 [ false, %125 ], [ %131, %128 ]
  br i1 %133, label %134, label %138

134:                                              ; preds = %132
  %135 = call i32 @sqlite3Utf8Read(i32** %7)
  store i32 %135, i32* %11, align 4
  %136 = load i32, i32* %11, align 4
  %137 = call i32 @GlogUpperToLower(i32 %136)
  br label %125

138:                                              ; preds = %132
  br label %152

139:                                              ; preds = %117
  br label %140

140:                                              ; preds = %149, %139
  %141 = load i32, i32* %11, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %140
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* %10, align 4
  %146 = icmp ne i32 %144, %145
  br label %147

147:                                              ; preds = %143, %140
  %148 = phi i1 [ false, %140 ], [ %146, %143 ]
  br i1 %148, label %149, label %151

149:                                              ; preds = %147
  %150 = call i32 @sqlite3Utf8Read(i32** %7)
  store i32 %150, i32* %11, align 4
  br label %140

151:                                              ; preds = %147
  br label %152

152:                                              ; preds = %151, %138
  %153 = load i32, i32* %11, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %152
  store i32 0, i32* %5, align 4
  br label %293

156:                                              ; preds = %152
  %157 = load i32*, i32** %6, align 8
  %158 = load i32*, i32** %7, align 8
  %159 = load %struct.compareInfo*, %struct.compareInfo** %8, align 8
  %160 = load i32, i32* %9, align 4
  %161 = call i32 @patternCompare(i32* %157, i32* %158, %struct.compareInfo* %159, i32 %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %156
  store i32 1, i32* %5, align 4
  br label %293

164:                                              ; preds = %156
  br label %114

165:                                              ; preds = %114
  store i32 0, i32* %5, align 4
  br label %293

166:                                              ; preds = %39, %35
  %167 = load i32, i32* %10, align 4
  %168 = load i32, i32* %14, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %178

170:                                              ; preds = %166
  %171 = load i32, i32* %18, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %178, label %173

173:                                              ; preds = %170
  %174 = call i32 @sqlite3Utf8Read(i32** %7)
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %173
  store i32 0, i32* %5, align 4
  br label %293

177:                                              ; preds = %173
  br label %286

178:                                              ; preds = %170, %166
  %179 = load i32, i32* %10, align 4
  %180 = load i32, i32* %16, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %261

182:                                              ; preds = %178
  store i32 0, i32* %19, align 4
  %183 = load i32, i32* %9, align 4
  %184 = icmp eq i32 %183, 0
  %185 = zext i1 %184 to i32
  %186 = call i32 @assert(i32 %185)
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  %187 = call i32 @sqlite3Utf8Read(i32** %7)
  store i32 %187, i32* %10, align 4
  %188 = load i32, i32* %10, align 4
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %182
  store i32 0, i32* %5, align 4
  br label %293

191:                                              ; preds = %182
  %192 = call i32 @sqlite3Utf8Read(i32** %6)
  store i32 %192, i32* %11, align 4
  %193 = load i32, i32* %11, align 4
  %194 = icmp eq i32 %193, 94
  br i1 %194, label %195, label %197

195:                                              ; preds = %191
  store i32 1, i32* %12, align 4
  %196 = call i32 @sqlite3Utf8Read(i32** %6)
  store i32 %196, i32* %11, align 4
  br label %197

197:                                              ; preds = %195, %191
  %198 = load i32, i32* %11, align 4
  %199 = icmp eq i32 %198, 93
  br i1 %199, label %200, label %206

200:                                              ; preds = %197
  %201 = load i32, i32* %10, align 4
  %202 = icmp eq i32 %201, 93
  br i1 %202, label %203, label %204

203:                                              ; preds = %200
  store i32 1, i32* %13, align 4
  br label %204

204:                                              ; preds = %203, %200
  %205 = call i32 @sqlite3Utf8Read(i32** %6)
  store i32 %205, i32* %11, align 4
  br label %206

206:                                              ; preds = %204, %197
  br label %207

207:                                              ; preds = %249, %206
  %208 = load i32, i32* %11, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %207
  %211 = load i32, i32* %11, align 4
  %212 = icmp ne i32 %211, 93
  br label %213

213:                                              ; preds = %210, %207
  %214 = phi i1 [ false, %207 ], [ %212, %210 ]
  br i1 %214, label %215, label %251

215:                                              ; preds = %213
  %216 = load i32, i32* %11, align 4
  %217 = icmp eq i32 %216, 45
  br i1 %217, label %218, label %242

218:                                              ; preds = %215
  %219 = load i32*, i32** %6, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 0
  %221 = load i32, i32* %220, align 4
  %222 = icmp ne i32 %221, 93
  br i1 %222, label %223, label %242

223:                                              ; preds = %218
  %224 = load i32*, i32** %6, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 0
  %226 = load i32, i32* %225, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %242

228:                                              ; preds = %223
  %229 = load i32, i32* %19, align 4
  %230 = icmp sgt i32 %229, 0
  br i1 %230, label %231, label %242

231:                                              ; preds = %228
  %232 = call i32 @sqlite3Utf8Read(i32** %6)
  store i32 %232, i32* %11, align 4
  %233 = load i32, i32* %10, align 4
  %234 = load i32, i32* %19, align 4
  %235 = icmp sge i32 %233, %234
  br i1 %235, label %236, label %241

236:                                              ; preds = %231
  %237 = load i32, i32* %10, align 4
  %238 = load i32, i32* %11, align 4
  %239 = icmp sle i32 %237, %238
  br i1 %239, label %240, label %241

240:                                              ; preds = %236
  store i32 1, i32* %13, align 4
  br label %241

241:                                              ; preds = %240, %236, %231
  store i32 0, i32* %19, align 4
  br label %249

242:                                              ; preds = %228, %223, %218, %215
  %243 = load i32, i32* %10, align 4
  %244 = load i32, i32* %11, align 4
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %246, label %247

246:                                              ; preds = %242
  store i32 1, i32* %13, align 4
  br label %247

247:                                              ; preds = %246, %242
  %248 = load i32, i32* %11, align 4
  store i32 %248, i32* %19, align 4
  br label %249

249:                                              ; preds = %247, %241
  %250 = call i32 @sqlite3Utf8Read(i32** %6)
  store i32 %250, i32* %11, align 4
  br label %207

251:                                              ; preds = %213
  %252 = load i32, i32* %11, align 4
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %259, label %254

254:                                              ; preds = %251
  %255 = load i32, i32* %13, align 4
  %256 = load i32, i32* %12, align 4
  %257 = xor i32 %255, %256
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %254, %251
  store i32 0, i32* %5, align 4
  br label %293

260:                                              ; preds = %254
  br label %285

261:                                              ; preds = %178
  %262 = load i32, i32* %9, align 4
  %263 = load i32, i32* %10, align 4
  %264 = icmp eq i32 %262, %263
  br i1 %264, label %265, label %269

265:                                              ; preds = %261
  %266 = load i32, i32* %18, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %269, label %268

268:                                              ; preds = %265
  store i32 1, i32* %18, align 4
  br label %284

269:                                              ; preds = %265, %261
  %270 = call i32 @sqlite3Utf8Read(i32** %7)
  store i32 %270, i32* %11, align 4
  %271 = load i32, i32* %17, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %278

273:                                              ; preds = %269
  %274 = load i32, i32* %10, align 4
  %275 = call i32 @GlogUpperToLower(i32 %274)
  %276 = load i32, i32* %11, align 4
  %277 = call i32 @GlogUpperToLower(i32 %276)
  br label %278

278:                                              ; preds = %273, %269
  %279 = load i32, i32* %10, align 4
  %280 = load i32, i32* %11, align 4
  %281 = icmp ne i32 %279, %280
  br i1 %281, label %282, label %283

282:                                              ; preds = %278
  store i32 0, i32* %5, align 4
  br label %293

283:                                              ; preds = %278
  store i32 0, i32* %18, align 4
  br label %284

284:                                              ; preds = %283, %268
  br label %285

285:                                              ; preds = %284, %260
  br label %286

286:                                              ; preds = %285, %177
  br label %287

287:                                              ; preds = %286
  br label %32

288:                                              ; preds = %32
  %289 = load i32*, i32** %7, align 8
  %290 = load i32, i32* %289, align 4
  %291 = icmp eq i32 %290, 0
  %292 = zext i1 %291 to i32
  store i32 %292, i32* %5, align 4
  br label %293

293:                                              ; preds = %288, %282, %259, %190, %176, %165, %163, %155, %106, %74, %65, %60
  %294 = load i32, i32* %5, align 4
  ret i32 %294
}

declare dso_local i32 @sqlite3Utf8Read(i32**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @SQLITE_SKIP_UTF8(i32*) #1

declare dso_local i32 @GlogUpperToLower(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_png-fix-itxt.c_main.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_png-fix-itxt.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_LENGTH = common dso_local global i32 0, align 4
@GETBREAK = common dso_local global i32 0, align 4
@Z_NULL = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %9 = load i32, i32* @MAX_LENGTH, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %3, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %4, align 8
  store i32 8, i32* %2, align 4
  br label %13

13:                                               ; preds = %20, %0
  %14 = load i32, i32* %2, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = load i32, i32* @GETBREAK, align 4
  %18 = load i8, i8* %6, align 1
  %19 = call i32 @putchar(i8 zeroext %18)
  br label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %2, align 4
  %22 = add i32 %21, -1
  store i32 %22, i32* %2, align 4
  br label %13

23:                                               ; preds = %13
  %24 = load i32, i32* %7, align 4
  %25 = load i8, i8* %6, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %323

28:                                               ; preds = %23
  br label %29

29:                                               ; preds = %321, %28
  %30 = load i32, i32* @GETBREAK, align 4
  %31 = load i8, i8* %6, align 1
  %32 = getelementptr inbounds i8, i8* %12, i64 0
  store i8 %31, i8* %32, align 16
  %33 = load i8, i8* %6, align 1
  %34 = zext i8 %33 to i64
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = shl i64 %35, 8
  store i64 %36, i64* %8, align 8
  %37 = load i32, i32* @GETBREAK, align 4
  %38 = load i8, i8* %6, align 1
  %39 = getelementptr inbounds i8, i8* %12, i64 1
  store i8 %38, i8* %39, align 1
  %40 = load i8, i8* %6, align 1
  %41 = zext i8 %40 to i64
  %42 = load i64, i64* %8, align 8
  %43 = add i64 %42, %41
  store i64 %43, i64* %8, align 8
  %44 = load i64, i64* %8, align 8
  %45 = shl i64 %44, 8
  store i64 %45, i64* %8, align 8
  %46 = load i32, i32* @GETBREAK, align 4
  %47 = load i8, i8* %6, align 1
  %48 = getelementptr inbounds i8, i8* %12, i64 2
  store i8 %47, i8* %48, align 2
  %49 = load i8, i8* %6, align 1
  %50 = zext i8 %49 to i64
  %51 = load i64, i64* %8, align 8
  %52 = add i64 %51, %50
  store i64 %52, i64* %8, align 8
  %53 = load i64, i64* %8, align 8
  %54 = shl i64 %53, 8
  store i64 %54, i64* %8, align 8
  %55 = load i32, i32* @GETBREAK, align 4
  %56 = load i8, i8* %6, align 1
  %57 = getelementptr inbounds i8, i8* %12, i64 3
  store i8 %56, i8* %57, align 1
  %58 = load i8, i8* %6, align 1
  %59 = zext i8 %58 to i64
  %60 = load i64, i64* %8, align 8
  %61 = add i64 %60, %59
  store i64 %61, i64* %8, align 8
  %62 = load i32, i32* @GETBREAK, align 4
  %63 = load i8, i8* %6, align 1
  %64 = getelementptr inbounds i8, i8* %12, i64 4
  store i8 %63, i8* %64, align 4
  %65 = load i32, i32* @GETBREAK, align 4
  %66 = load i8, i8* %6, align 1
  %67 = getelementptr inbounds i8, i8* %12, i64 5
  store i8 %66, i8* %67, align 1
  %68 = load i32, i32* @GETBREAK, align 4
  %69 = load i8, i8* %6, align 1
  %70 = getelementptr inbounds i8, i8* %12, i64 6
  store i8 %69, i8* %70, align 2
  %71 = load i32, i32* @GETBREAK, align 4
  %72 = load i8, i8* %6, align 1
  %73 = getelementptr inbounds i8, i8* %12, i64 7
  store i8 %72, i8* %73, align 1
  %74 = getelementptr inbounds i8, i8* %12, i64 4
  %75 = load i8, i8* %74, align 4
  %76 = zext i8 %75 to i32
  %77 = icmp eq i32 %76, 105
  br i1 %77, label %78, label %233

78:                                               ; preds = %29
  %79 = getelementptr inbounds i8, i8* %12, i64 5
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp eq i32 %81, 84
  br i1 %82, label %83, label %233

83:                                               ; preds = %78
  %84 = getelementptr inbounds i8, i8* %12, i64 6
  %85 = load i8, i8* %84, align 2
  %86 = zext i8 %85 to i32
  %87 = icmp eq i32 %86, 88
  br i1 %87, label %88, label %233

88:                                               ; preds = %83
  %89 = getelementptr inbounds i8, i8* %12, i64 7
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = icmp eq i32 %91, 116
  br i1 %92, label %93, label %233

93:                                               ; preds = %88
  %94 = load i64, i64* %8, align 8
  %95 = load i32, i32* @MAX_LENGTH, align 4
  %96 = sub nsw i32 %95, 12
  %97 = sext i32 %96 to i64
  %98 = icmp uge i64 %94, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  br label %322

100:                                              ; preds = %93
  %101 = load i8*, i8** @Z_NULL, align 8
  %102 = call i64 @crc32(i64 0, i8* %101, i32 0)
  store i64 %102, i64* %5, align 8
  store i32 8, i32* %2, align 4
  br label %103

103:                                              ; preds = %115, %100
  %104 = load i32, i32* %2, align 4
  %105 = zext i32 %104 to i64
  %106 = load i64, i64* %8, align 8
  %107 = add i64 %106, 12
  %108 = icmp ult i64 %105, %107
  br i1 %108, label %109, label %118

109:                                              ; preds = %103
  %110 = load i32, i32* @GETBREAK, align 4
  %111 = load i8, i8* %6, align 1
  %112 = load i32, i32* %2, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %12, i64 %113
  store i8 %111, i8* %114, align 1
  br label %115

115:                                              ; preds = %109
  %116 = load i32, i32* %2, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %2, align 4
  br label %103

118:                                              ; preds = %103
  %119 = load i32, i32* %7, align 4
  %120 = load i8, i8* %6, align 1
  %121 = zext i8 %120 to i32
  %122 = icmp ne i32 %119, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  br label %322

124:                                              ; preds = %118
  %125 = load i64, i64* %5, align 8
  %126 = getelementptr inbounds i8, i8* %12, i64 4
  %127 = load i64, i64* %8, align 8
  %128 = trunc i64 %127 to i32
  %129 = add nsw i32 %128, 4
  %130 = call i64 @crc32(i64 %125, i8* %126, i32 %129)
  store i64 %130, i64* %5, align 8
  br label %131

131:                                              ; preds = %180, %124
  %132 = load i64, i64* %5, align 8
  %133 = lshr i64 %132, 24
  %134 = and i64 %133, 255
  %135 = load i64, i64* %8, align 8
  %136 = add i64 %135, 8
  %137 = getelementptr inbounds i8, i8* %12, i64 %136
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i64
  %140 = icmp eq i64 %134, %139
  br i1 %140, label %141, label %171

141:                                              ; preds = %131
  %142 = load i64, i64* %5, align 8
  %143 = lshr i64 %142, 16
  %144 = and i64 %143, 255
  %145 = load i64, i64* %8, align 8
  %146 = add i64 %145, 9
  %147 = getelementptr inbounds i8, i8* %12, i64 %146
  %148 = load i8, i8* %147, align 1
  %149 = zext i8 %148 to i64
  %150 = icmp eq i64 %144, %149
  br i1 %150, label %151, label %171

151:                                              ; preds = %141
  %152 = load i64, i64* %5, align 8
  %153 = lshr i64 %152, 8
  %154 = and i64 %153, 255
  %155 = load i64, i64* %8, align 8
  %156 = add i64 %155, 10
  %157 = getelementptr inbounds i8, i8* %12, i64 %156
  %158 = load i8, i8* %157, align 1
  %159 = zext i8 %158 to i64
  %160 = icmp eq i64 %154, %159
  br i1 %160, label %161, label %171

161:                                              ; preds = %151
  %162 = load i64, i64* %5, align 8
  %163 = and i64 %162, 255
  %164 = load i64, i64* %8, align 8
  %165 = add i64 %164, 11
  %166 = getelementptr inbounds i8, i8* %12, i64 %165
  %167 = load i8, i8* %166, align 1
  %168 = zext i8 %167 to i64
  %169 = icmp eq i64 %163, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %161
  br label %191

171:                                              ; preds = %161, %151, %141, %131
  %172 = load i64, i64* %8, align 8
  %173 = add i64 %172, 1
  store i64 %173, i64* %8, align 8
  %174 = load i64, i64* %8, align 8
  %175 = load i32, i32* @MAX_LENGTH, align 4
  %176 = sub nsw i32 %175, 12
  %177 = sext i32 %176 to i64
  %178 = icmp uge i64 %174, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %171
  br label %191

180:                                              ; preds = %171
  %181 = load i32, i32* @GETBREAK, align 4
  %182 = load i8, i8* %6, align 1
  %183 = load i64, i64* %8, align 8
  %184 = add i64 %183, 11
  %185 = getelementptr inbounds i8, i8* %12, i64 %184
  store i8 %182, i8* %185, align 1
  %186 = load i64, i64* %5, align 8
  %187 = getelementptr inbounds i8, i8* %12, i64 7
  %188 = load i64, i64* %8, align 8
  %189 = getelementptr inbounds i8, i8* %187, i64 %188
  %190 = call i64 @crc32(i64 %186, i8* %189, i32 1)
  store i64 %190, i64* %5, align 8
  br label %131

191:                                              ; preds = %179, %170
  %192 = load i32, i32* %7, align 4
  %193 = load i8, i8* %6, align 1
  %194 = zext i8 %193 to i32
  %195 = icmp ne i32 %192, %194
  br i1 %195, label %196, label %197

196:                                              ; preds = %191
  br label %322

197:                                              ; preds = %191
  %198 = load i64, i64* %8, align 8
  %199 = lshr i64 %198, 24
  %200 = and i64 %199, 255
  %201 = trunc i64 %200 to i8
  %202 = getelementptr inbounds i8, i8* %12, i64 0
  store i8 %201, i8* %202, align 16
  %203 = load i64, i64* %8, align 8
  %204 = lshr i64 %203, 16
  %205 = and i64 %204, 255
  %206 = trunc i64 %205 to i8
  %207 = getelementptr inbounds i8, i8* %12, i64 1
  store i8 %206, i8* %207, align 1
  %208 = load i64, i64* %8, align 8
  %209 = lshr i64 %208, 8
  %210 = and i64 %209, 255
  %211 = trunc i64 %210 to i8
  %212 = getelementptr inbounds i8, i8* %12, i64 2
  store i8 %211, i8* %212, align 2
  %213 = load i64, i64* %8, align 8
  %214 = and i64 %213, 255
  %215 = trunc i64 %214 to i8
  %216 = getelementptr inbounds i8, i8* %12, i64 3
  store i8 %215, i8* %216, align 1
  store i32 0, i32* %2, align 4
  br label %217

217:                                              ; preds = %229, %197
  %218 = load i32, i32* %2, align 4
  %219 = zext i32 %218 to i64
  %220 = load i64, i64* %8, align 8
  %221 = add i64 %220, 12
  %222 = icmp ult i64 %219, %221
  br i1 %222, label %223, label %232

223:                                              ; preds = %217
  %224 = load i32, i32* %2, align 4
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds i8, i8* %12, i64 %225
  %227 = load i8, i8* %226, align 1
  %228 = call i32 @putchar(i8 zeroext %227)
  br label %229

229:                                              ; preds = %223
  %230 = load i32, i32* %2, align 4
  %231 = add i32 %230, 1
  store i32 %231, i32* %2, align 4
  br label %217

232:                                              ; preds = %217
  br label %294

233:                                              ; preds = %88, %83, %78, %29
  %234 = load i32, i32* %7, align 4
  %235 = load i8, i8* %6, align 1
  %236 = zext i8 %235 to i32
  %237 = icmp ne i32 %234, %236
  br i1 %237, label %238, label %239

238:                                              ; preds = %233
  br label %322

239:                                              ; preds = %233
  store i32 0, i32* %2, align 4
  br label %240

240:                                              ; preds = %249, %239
  %241 = load i32, i32* %2, align 4
  %242 = icmp ult i32 %241, 8
  br i1 %242, label %243, label %252

243:                                              ; preds = %240
  %244 = load i32, i32* %2, align 4
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds i8, i8* %12, i64 %245
  %247 = load i8, i8* %246, align 1
  %248 = call i32 @putchar(i8 zeroext %247)
  br label %249

249:                                              ; preds = %243
  %250 = load i32, i32* %2, align 4
  %251 = add i32 %250, 1
  store i32 %251, i32* %2, align 4
  br label %240

252:                                              ; preds = %240
  store i32 8, i32* %2, align 4
  br label %253

253:                                              ; preds = %263, %252
  %254 = load i32, i32* %2, align 4
  %255 = zext i32 %254 to i64
  %256 = load i64, i64* %8, align 8
  %257 = add i64 %256, 12
  %258 = icmp ult i64 %255, %257
  br i1 %258, label %259, label %266

259:                                              ; preds = %253
  %260 = load i32, i32* @GETBREAK, align 4
  %261 = load i8, i8* %6, align 1
  %262 = call i32 @putchar(i8 zeroext %261)
  br label %263

263:                                              ; preds = %259
  %264 = load i32, i32* %2, align 4
  %265 = add i32 %264, 1
  store i32 %265, i32* %2, align 4
  br label %253

266:                                              ; preds = %253
  %267 = load i32, i32* %7, align 4
  %268 = load i8, i8* %6, align 1
  %269 = zext i8 %268 to i32
  %270 = icmp ne i32 %267, %269
  br i1 %270, label %271, label %272

271:                                              ; preds = %266
  br label %322

272:                                              ; preds = %266
  %273 = getelementptr inbounds i8, i8* %12, i64 4
  %274 = load i8, i8* %273, align 4
  %275 = zext i8 %274 to i32
  %276 = icmp eq i32 %275, 73
  br i1 %276, label %277, label %293

277:                                              ; preds = %272
  %278 = getelementptr inbounds i8, i8* %12, i64 5
  %279 = load i8, i8* %278, align 1
  %280 = zext i8 %279 to i32
  %281 = icmp eq i32 %280, 69
  br i1 %281, label %282, label %293

282:                                              ; preds = %277
  %283 = getelementptr inbounds i8, i8* %12, i64 6
  %284 = load i8, i8* %283, align 2
  %285 = zext i8 %284 to i32
  %286 = icmp eq i32 %285, 78
  br i1 %286, label %287, label %293

287:                                              ; preds = %282
  %288 = getelementptr inbounds i8, i8* %12, i64 7
  %289 = load i8, i8* %288, align 1
  %290 = zext i8 %289 to i32
  %291 = icmp eq i32 %290, 68
  br i1 %291, label %292, label %293

292:                                              ; preds = %287
  br label %322

293:                                              ; preds = %287, %282, %277, %272
  br label %294

294:                                              ; preds = %293, %232
  %295 = load i32, i32* %7, align 4
  %296 = load i8, i8* %6, align 1
  %297 = zext i8 %296 to i32
  %298 = icmp ne i32 %295, %297
  br i1 %298, label %299, label %300

299:                                              ; preds = %294
  br label %322

300:                                              ; preds = %294
  %301 = getelementptr inbounds i8, i8* %12, i64 4
  %302 = load i8, i8* %301, align 4
  %303 = zext i8 %302 to i32
  %304 = icmp eq i32 %303, 73
  br i1 %304, label %305, label %321

305:                                              ; preds = %300
  %306 = getelementptr inbounds i8, i8* %12, i64 5
  %307 = load i8, i8* %306, align 1
  %308 = zext i8 %307 to i32
  %309 = icmp eq i32 %308, 69
  br i1 %309, label %310, label %321

310:                                              ; preds = %305
  %311 = getelementptr inbounds i8, i8* %12, i64 6
  %312 = load i8, i8* %311, align 2
  %313 = zext i8 %312 to i32
  %314 = icmp eq i32 %313, 78
  br i1 %314, label %315, label %321

315:                                              ; preds = %310
  %316 = getelementptr inbounds i8, i8* %12, i64 7
  %317 = load i8, i8* %316, align 1
  %318 = zext i8 %317 to i32
  %319 = icmp eq i32 %318, 68
  br i1 %319, label %320, label %321

320:                                              ; preds = %315
  br label %322

321:                                              ; preds = %315, %310, %305, %300
  br label %29

322:                                              ; preds = %320, %299, %292, %271, %238, %196, %123, %99
  br label %323

323:                                              ; preds = %322, %23
  store i32 0, i32* %1, align 4
  %324 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %324)
  %325 = load i32, i32* %1, align 4
  ret i32 %325
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @putchar(i8 zeroext) #2

declare dso_local i64 @crc32(i64, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

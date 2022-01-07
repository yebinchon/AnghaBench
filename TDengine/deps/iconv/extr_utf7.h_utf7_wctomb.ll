; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_utf7.h_utf7_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_utf7.h_utf7_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@UTF7_ENCODE_OPTIONAL_CHARS = common dso_local global i64 0, align 8
@RET_TOOSMALL = common dso_local global i32 0, align 4
@RET_ILUNI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*, i32, i32)* @utf7_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utf7_wctomb(%struct.TYPE_3__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8, align 1
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %24 = load i32, i32* %10, align 4
  %25 = and i32 %24, 3
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  br label %57

28:                                               ; preds = %4
  %29 = load i64, i64* @UTF7_ENCODE_OPTIONAL_CHARS, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* %11, align 4
  %33 = call i64 @isdirect(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %39, label %44

35:                                               ; preds = %28
  %36 = load i32, i32* %11, align 4
  %37 = call i64 @isxdirect(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %35, %31
  %40 = load i32, i32* %11, align 4
  %41 = trunc i32 %40 to i8
  %42 = load i8*, i8** %7, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  store i8 %41, i8* %43, align 1
  store i32 1, i32* %5, align 4
  br label %314

44:                                               ; preds = %35, %31
  %45 = load i8*, i8** %7, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %7, align 8
  store i8 43, i8* %45, align 1
  %47 = load i32, i32* %11, align 4
  %48 = icmp eq i32 %47, 43
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %50, 2
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %53, i32* %5, align 4
  br label %314

54:                                               ; preds = %49
  %55 = load i8*, i8** %7, align 8
  store i8 45, i8* %55, align 1
  store i32 2, i32* %5, align 4
  br label %314

56:                                               ; preds = %44
  store i32 1, i32* %12, align 4
  store i32 1, i32* %10, align 4
  br label %57

57:                                               ; preds = %56, %27
  %58 = load i64, i64* @UTF7_ENCODE_OPTIONAL_CHARS, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i32, i32* %11, align 4
  %62 = call i64 @isdirect(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %68, label %151

64:                                               ; preds = %57
  %65 = load i32, i32* %11, align 4
  %66 = call i64 @isxdirect(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %151

68:                                               ; preds = %64, %60
  %69 = load i32, i32* %10, align 4
  %70 = and i32 %69, 3
  %71 = icmp sge i32 %70, 2
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 1, i32 0
  %74 = load i32, i32* %11, align 4
  %75 = call i64 @isxbase64(i32 %74)
  %76 = icmp ne i64 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i32 1, i32 0
  %79 = add nsw i32 %73, %78
  %80 = add nsw i32 %79, 1
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %68
  %87 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %87, i32* %5, align 4
  br label %314

88:                                               ; preds = %68
  %89 = load i32, i32* %10, align 4
  %90 = and i32 %89, 3
  %91 = icmp sge i32 %90, 2
  br i1 %91, label %92, label %135

92:                                               ; preds = %88
  %93 = load i32, i32* %10, align 4
  %94 = and i32 %93, -4
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %13, align 4
  %96 = icmp ult i32 %95, 26
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load i32, i32* %13, align 4
  %99 = add i32 %98, 65
  %100 = trunc i32 %99 to i8
  store i8 %100, i8* %14, align 1
  br label %131

101:                                              ; preds = %92
  %102 = load i32, i32* %13, align 4
  %103 = icmp ult i32 %102, 52
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = load i32, i32* %13, align 4
  %106 = sub i32 %105, 26
  %107 = add i32 %106, 97
  %108 = trunc i32 %107 to i8
  store i8 %108, i8* %14, align 1
  br label %130

109:                                              ; preds = %101
  %110 = load i32, i32* %13, align 4
  %111 = icmp ult i32 %110, 62
  br i1 %111, label %112, label %117

112:                                              ; preds = %109
  %113 = load i32, i32* %13, align 4
  %114 = sub i32 %113, 52
  %115 = add i32 %114, 48
  %116 = trunc i32 %115 to i8
  store i8 %116, i8* %14, align 1
  br label %129

117:                                              ; preds = %109
  %118 = load i32, i32* %13, align 4
  %119 = icmp eq i32 %118, 62
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  store i8 43, i8* %14, align 1
  br label %128

121:                                              ; preds = %117
  %122 = load i32, i32* %13, align 4
  %123 = icmp eq i32 %122, 63
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  store i8 47, i8* %14, align 1
  br label %127

125:                                              ; preds = %121
  %126 = call i32 (...) @abort() #3
  unreachable

127:                                              ; preds = %124
  br label %128

128:                                              ; preds = %127, %120
  br label %129

129:                                              ; preds = %128, %112
  br label %130

130:                                              ; preds = %129, %104
  br label %131

131:                                              ; preds = %130, %97
  %132 = load i8, i8* %14, align 1
  %133 = load i8*, i8** %7, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %7, align 8
  store i8 %132, i8* %133, align 1
  br label %135

135:                                              ; preds = %131, %88
  %136 = load i32, i32* %11, align 4
  %137 = call i64 @isxbase64(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %135
  %140 = load i8*, i8** %7, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %7, align 8
  store i8 45, i8* %140, align 1
  br label %142

142:                                              ; preds = %139, %135
  store i32 0, i32* %10, align 4
  %143 = load i32, i32* %11, align 4
  %144 = trunc i32 %143 to i8
  %145 = load i8*, i8** %7, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %7, align 8
  store i8 %144, i8* %145, align 1
  %147 = load i32, i32* %10, align 4
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 4
  %150 = load i32, i32* %12, align 4
  store i32 %150, i32* %5, align 4
  br label %314

151:                                              ; preds = %64, %60
  %152 = load i32, i32* %11, align 4
  %153 = icmp ult i32 %152, 65536
  br i1 %153, label %154, label %162

154:                                              ; preds = %151
  store i32 2, i32* %15, align 4
  %155 = load i32, i32* %10, align 4
  %156 = and i32 %155, 3
  %157 = icmp sge i32 %156, 2
  %158 = zext i1 %157 to i64
  %159 = select i1 %157, i32 3, i32 2
  %160 = load i32, i32* %12, align 4
  %161 = add nsw i32 %160, %159
  store i32 %161, i32* %12, align 4
  br label %188

162:                                              ; preds = %151
  %163 = load i32, i32* %11, align 4
  %164 = icmp ult i32 %163, 1114112
  br i1 %164, label %165, label %185

165:                                              ; preds = %162
  %166 = load i32, i32* %11, align 4
  %167 = sub i32 %166, 65536
  %168 = lshr i32 %167, 10
  %169 = add i32 55296, %168
  store i32 %169, i32* %16, align 4
  %170 = load i32, i32* %11, align 4
  %171 = sub i32 %170, 65536
  %172 = and i32 %171, 1023
  %173 = add i32 56320, %172
  store i32 %173, i32* %17, align 4
  %174 = load i32, i32* %16, align 4
  %175 = shl i32 %174, 16
  %176 = load i32, i32* %17, align 4
  %177 = or i32 %175, %176
  store i32 %177, i32* %11, align 4
  store i32 4, i32* %15, align 4
  %178 = load i32, i32* %10, align 4
  %179 = and i32 %178, 3
  %180 = icmp sge i32 %179, 3
  %181 = zext i1 %180 to i64
  %182 = select i1 %180, i32 6, i32 5
  %183 = load i32, i32* %12, align 4
  %184 = add nsw i32 %183, %182
  store i32 %184, i32* %12, align 4
  br label %187

185:                                              ; preds = %162
  %186 = load i32, i32* @RET_ILUNI, align 4
  store i32 %186, i32* %5, align 4
  br label %314

187:                                              ; preds = %165
  br label %188

188:                                              ; preds = %187, %154
  %189 = load i32, i32* %9, align 4
  %190 = load i32, i32* %12, align 4
  %191 = icmp slt i32 %189, %190
  br i1 %191, label %192, label %194

192:                                              ; preds = %188
  %193 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %193, i32* %5, align 4
  br label %314

194:                                              ; preds = %188
  br label %195

195:                                              ; preds = %308, %194
  %196 = load i32, i32* %10, align 4
  %197 = and i32 %196, 3
  switch i32 %197, label %250 [
    i32 0, label %198
    i32 1, label %203
    i32 2, label %217
    i32 3, label %234
  ]

198:                                              ; preds = %195
  %199 = load i32, i32* %10, align 4
  %200 = and i32 %199, -4
  %201 = ashr i32 %200, 2
  %202 = trunc i32 %201 to i8
  store i8 %202, i8* %19, align 1
  store i32 1, i32* %10, align 4
  br label %252

203:                                              ; preds = %195
  %204 = load i32, i32* %11, align 4
  %205 = load i32, i32* %15, align 4
  %206 = add i32 %205, -1
  store i32 %206, i32* %15, align 4
  %207 = mul i32 8, %206
  %208 = lshr i32 %204, %207
  %209 = and i32 %208, 255
  store i32 %209, i32* %18, align 4
  %210 = load i32, i32* %18, align 4
  %211 = lshr i32 %210, 2
  %212 = trunc i32 %211 to i8
  store i8 %212, i8* %19, align 1
  %213 = load i32, i32* %18, align 4
  %214 = and i32 %213, 3
  %215 = shl i32 %214, 4
  %216 = or i32 %215, 2
  store i32 %216, i32* %10, align 4
  br label %252

217:                                              ; preds = %195
  %218 = load i32, i32* %11, align 4
  %219 = load i32, i32* %15, align 4
  %220 = add i32 %219, -1
  store i32 %220, i32* %15, align 4
  %221 = mul i32 8, %220
  %222 = lshr i32 %218, %221
  %223 = and i32 %222, 255
  store i32 %223, i32* %18, align 4
  %224 = load i32, i32* %10, align 4
  %225 = and i32 %224, -4
  %226 = load i32, i32* %18, align 4
  %227 = lshr i32 %226, 4
  %228 = or i32 %225, %227
  %229 = trunc i32 %228 to i8
  store i8 %229, i8* %19, align 1
  %230 = load i32, i32* %18, align 4
  %231 = and i32 %230, 15
  %232 = shl i32 %231, 2
  %233 = or i32 %232, 3
  store i32 %233, i32* %10, align 4
  br label %252

234:                                              ; preds = %195
  %235 = load i32, i32* %11, align 4
  %236 = load i32, i32* %15, align 4
  %237 = add i32 %236, -1
  store i32 %237, i32* %15, align 4
  %238 = mul i32 8, %237
  %239 = lshr i32 %235, %238
  %240 = and i32 %239, 255
  store i32 %240, i32* %18, align 4
  %241 = load i32, i32* %10, align 4
  %242 = and i32 %241, -4
  %243 = load i32, i32* %18, align 4
  %244 = lshr i32 %243, 6
  %245 = or i32 %242, %244
  %246 = trunc i32 %245 to i8
  store i8 %246, i8* %19, align 1
  %247 = load i32, i32* %18, align 4
  %248 = and i32 %247, 63
  %249 = shl i32 %248, 2
  store i32 %249, i32* %10, align 4
  br label %252

250:                                              ; preds = %195
  %251 = call i32 (...) @abort() #3
  unreachable

252:                                              ; preds = %234, %217, %203, %198
  %253 = load i8, i8* %19, align 1
  %254 = zext i8 %253 to i32
  %255 = icmp slt i32 %254, 26
  br i1 %255, label %256, label %261

256:                                              ; preds = %252
  %257 = load i8, i8* %19, align 1
  %258 = zext i8 %257 to i32
  %259 = add nsw i32 %258, 65
  %260 = trunc i32 %259 to i8
  store i8 %260, i8* %19, align 1
  br label %297

261:                                              ; preds = %252
  %262 = load i8, i8* %19, align 1
  %263 = zext i8 %262 to i32
  %264 = icmp slt i32 %263, 52
  br i1 %264, label %265, label %271

265:                                              ; preds = %261
  %266 = load i8, i8* %19, align 1
  %267 = zext i8 %266 to i32
  %268 = sub nsw i32 %267, 26
  %269 = add nsw i32 %268, 97
  %270 = trunc i32 %269 to i8
  store i8 %270, i8* %19, align 1
  br label %296

271:                                              ; preds = %261
  %272 = load i8, i8* %19, align 1
  %273 = zext i8 %272 to i32
  %274 = icmp slt i32 %273, 62
  br i1 %274, label %275, label %281

275:                                              ; preds = %271
  %276 = load i8, i8* %19, align 1
  %277 = zext i8 %276 to i32
  %278 = sub nsw i32 %277, 52
  %279 = add nsw i32 %278, 48
  %280 = trunc i32 %279 to i8
  store i8 %280, i8* %19, align 1
  br label %295

281:                                              ; preds = %271
  %282 = load i8, i8* %19, align 1
  %283 = zext i8 %282 to i32
  %284 = icmp eq i32 %283, 62
  br i1 %284, label %285, label %286

285:                                              ; preds = %281
  store i8 43, i8* %19, align 1
  br label %294

286:                                              ; preds = %281
  %287 = load i8, i8* %19, align 1
  %288 = zext i8 %287 to i32
  %289 = icmp eq i32 %288, 63
  br i1 %289, label %290, label %291

290:                                              ; preds = %286
  store i8 47, i8* %19, align 1
  br label %293

291:                                              ; preds = %286
  %292 = call i32 (...) @abort() #3
  unreachable

293:                                              ; preds = %290
  br label %294

294:                                              ; preds = %293, %285
  br label %295

295:                                              ; preds = %294, %275
  br label %296

296:                                              ; preds = %295, %265
  br label %297

297:                                              ; preds = %296, %256
  %298 = load i8, i8* %19, align 1
  %299 = load i8*, i8** %7, align 8
  %300 = getelementptr inbounds i8, i8* %299, i32 1
  store i8* %300, i8** %7, align 8
  store i8 %298, i8* %299, align 1
  %301 = load i32, i32* %10, align 4
  %302 = and i32 %301, 3
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %308

304:                                              ; preds = %297
  %305 = load i32, i32* %15, align 4
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %307, label %308

307:                                              ; preds = %304
  br label %309

308:                                              ; preds = %304, %297
  br label %195

309:                                              ; preds = %307
  %310 = load i32, i32* %10, align 4
  %311 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %312 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %311, i32 0, i32 0
  store i32 %310, i32* %312, align 4
  %313 = load i32, i32* %12, align 4
  store i32 %313, i32* %5, align 4
  br label %314

314:                                              ; preds = %309, %192, %185, %142, %86, %54, %52, %39
  %315 = load i32, i32* %5, align 4
  ret i32 %315
}

declare dso_local i64 @isdirect(i32) #1

declare dso_local i64 @isxdirect(i32) #1

declare dso_local i64 @isxbase64(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

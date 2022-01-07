; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp932.h_cp932_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp932.h_cp932_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RET_ILUNI = common dso_local global i32 0, align 4
@RET_TOOSMALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @cp932_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp932_wctomb(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i8], align 1
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %20 = load i32, i32* %6, align 4
  %21 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @ascii_wctomb(i32 %20, i8* %21, i32 %22, i32 1)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @RET_ILUNI, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = call i32 (...) @abort() #3
  unreachable

32:                                               ; preds = %27
  %33 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %34 = load i8, i8* %33, align 1
  store i8 %34, i8* %12, align 1
  %35 = load i8, i8* %12, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp slt i32 %36, 128
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i8, i8* %12, align 1
  %40 = load i8*, i8** %7, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  store i8 %39, i8* %41, align 1
  store i32 1, i32* %5, align 4
  br label %296

42:                                               ; preds = %32
  br label %43

43:                                               ; preds = %42, %4
  %44 = load i32, i32* %6, align 4
  %45 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @jisx0201_wctomb(i32 %44, i8* %45, i32 %46, i32 1)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @RET_ILUNI, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %71

51:                                               ; preds = %43
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 1
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = call i32 (...) @abort() #3
  unreachable

56:                                               ; preds = %51
  %57 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %58 = load i8, i8* %57, align 1
  store i8 %58, i8* %13, align 1
  %59 = load i8, i8* %13, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp sge i32 %60, 161
  br i1 %61, label %62, label %70

62:                                               ; preds = %56
  %63 = load i8, i8* %13, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp sle i32 %64, 223
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i8, i8* %13, align 1
  %68 = load i8*, i8** %7, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  store i8 %67, i8* %69, align 1
  store i32 1, i32* %5, align 4
  br label %296

70:                                               ; preds = %62, %56
  br label %71

71:                                               ; preds = %70, %43
  %72 = load i32, i32* %6, align 4
  %73 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @jisx0208_wctomb(i32 %72, i8* %73, i32 %74, i32 2)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* @RET_ILUNI, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %160

79:                                               ; preds = %71
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 2
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = call i32 (...) @abort() #3
  unreachable

84:                                               ; preds = %79
  %85 = load i32, i32* %9, align 4
  %86 = icmp slt i32 %85, 2
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %88, i32* %5, align 4
  br label %296

89:                                               ; preds = %84
  %90 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %91 = load i8, i8* %90, align 1
  store i8 %91, i8* %14, align 1
  %92 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 1
  %93 = load i8, i8* %92, align 1
  store i8 %93, i8* %15, align 1
  %94 = load i8, i8* %14, align 1
  %95 = zext i8 %94 to i32
  %96 = icmp sge i32 %95, 33
  br i1 %96, label %97, label %159

97:                                               ; preds = %89
  %98 = load i8, i8* %14, align 1
  %99 = zext i8 %98 to i32
  %100 = icmp sle i32 %99, 116
  br i1 %100, label %101, label %159

101:                                              ; preds = %97
  %102 = load i8, i8* %15, align 1
  %103 = zext i8 %102 to i32
  %104 = icmp sge i32 %103, 33
  br i1 %104, label %105, label %159

105:                                              ; preds = %101
  %106 = load i8, i8* %15, align 1
  %107 = zext i8 %106 to i32
  %108 = icmp sle i32 %107, 126
  br i1 %108, label %109, label %159

109:                                              ; preds = %105
  %110 = load i8, i8* %14, align 1
  %111 = zext i8 %110 to i32
  %112 = sub nsw i32 %111, 33
  %113 = ashr i32 %112, 1
  %114 = trunc i32 %113 to i8
  store i8 %114, i8* %16, align 1
  %115 = load i8, i8* %14, align 1
  %116 = zext i8 %115 to i32
  %117 = sub nsw i32 %116, 33
  %118 = and i32 %117, 1
  %119 = icmp ne i32 %118, 0
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i32 94, i32 0
  %122 = load i8, i8* %15, align 1
  %123 = zext i8 %122 to i32
  %124 = sub nsw i32 %123, 33
  %125 = add nsw i32 %121, %124
  %126 = trunc i32 %125 to i8
  store i8 %126, i8* %17, align 1
  %127 = load i8, i8* %16, align 1
  %128 = zext i8 %127 to i32
  %129 = icmp slt i32 %128, 31
  br i1 %129, label %130, label %134

130:                                              ; preds = %109
  %131 = load i8, i8* %16, align 1
  %132 = zext i8 %131 to i32
  %133 = add nsw i32 %132, 129
  br label %138

134:                                              ; preds = %109
  %135 = load i8, i8* %16, align 1
  %136 = zext i8 %135 to i32
  %137 = add nsw i32 %136, 193
  br label %138

138:                                              ; preds = %134, %130
  %139 = phi i32 [ %133, %130 ], [ %137, %134 ]
  %140 = trunc i32 %139 to i8
  %141 = load i8*, i8** %7, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 0
  store i8 %140, i8* %142, align 1
  %143 = load i8, i8* %17, align 1
  %144 = zext i8 %143 to i32
  %145 = icmp slt i32 %144, 63
  br i1 %145, label %146, label %150

146:                                              ; preds = %138
  %147 = load i8, i8* %17, align 1
  %148 = zext i8 %147 to i32
  %149 = add nsw i32 %148, 64
  br label %154

150:                                              ; preds = %138
  %151 = load i8, i8* %17, align 1
  %152 = zext i8 %151 to i32
  %153 = add nsw i32 %152, 65
  br label %154

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %149, %146 ], [ %153, %150 ]
  %156 = trunc i32 %155 to i8
  %157 = load i8*, i8** %7, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 1
  store i8 %156, i8* %158, align 1
  store i32 2, i32* %5, align 4
  br label %296

159:                                              ; preds = %105, %101, %97, %89
  br label %160

160:                                              ; preds = %159, %71
  %161 = load i32, i32* %6, align 4
  %162 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %163 = load i32, i32* %8, align 4
  %164 = call i32 @cp932ext_wctomb(i32 %161, i8* %162, i32 %163, i32 2)
  store i32 %164, i32* %11, align 4
  %165 = load i32, i32* %11, align 4
  %166 = load i32, i32* @RET_ILUNI, align 4
  %167 = icmp ne i32 %165, %166
  br i1 %167, label %168, label %187

168:                                              ; preds = %160
  %169 = load i32, i32* %11, align 4
  %170 = icmp ne i32 %169, 2
  br i1 %170, label %171, label %173

171:                                              ; preds = %168
  %172 = call i32 (...) @abort() #3
  unreachable

173:                                              ; preds = %168
  %174 = load i32, i32* %9, align 4
  %175 = icmp slt i32 %174, 2
  br i1 %175, label %176, label %178

176:                                              ; preds = %173
  %177 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %177, i32* %5, align 4
  br label %296

178:                                              ; preds = %173
  %179 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %180 = load i8, i8* %179, align 1
  %181 = load i8*, i8** %7, align 8
  %182 = getelementptr inbounds i8, i8* %181, i64 0
  store i8 %180, i8* %182, align 1
  %183 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 1
  %184 = load i8, i8* %183, align 1
  %185 = load i8*, i8** %7, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 1
  store i8 %184, i8* %186, align 1
  store i32 2, i32* %5, align 4
  br label %296

187:                                              ; preds = %160
  %188 = load i32, i32* %8, align 4
  %189 = icmp sge i32 %188, 57344
  br i1 %189, label %190, label %229

190:                                              ; preds = %187
  %191 = load i32, i32* %8, align 4
  %192 = icmp slt i32 %191, 59224
  br i1 %192, label %193, label %229

193:                                              ; preds = %190
  %194 = load i32, i32* %9, align 4
  %195 = icmp slt i32 %194, 2
  br i1 %195, label %196, label %198

196:                                              ; preds = %193
  %197 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %197, i32* %5, align 4
  br label %296

198:                                              ; preds = %193
  %199 = load i32, i32* %8, align 4
  %200 = sub nsw i32 %199, 57344
  %201 = udiv i32 %200, 188
  %202 = trunc i32 %201 to i8
  store i8 %202, i8* %18, align 1
  %203 = load i32, i32* %8, align 4
  %204 = sub nsw i32 %203, 57344
  %205 = urem i32 %204, 188
  %206 = trunc i32 %205 to i8
  store i8 %206, i8* %19, align 1
  %207 = load i8, i8* %18, align 1
  %208 = zext i8 %207 to i32
  %209 = add nsw i32 %208, 240
  %210 = trunc i32 %209 to i8
  %211 = load i8*, i8** %7, align 8
  %212 = getelementptr inbounds i8, i8* %211, i64 0
  store i8 %210, i8* %212, align 1
  %213 = load i8, i8* %19, align 1
  %214 = zext i8 %213 to i32
  %215 = icmp slt i32 %214, 63
  br i1 %215, label %216, label %220

216:                                              ; preds = %198
  %217 = load i8, i8* %19, align 1
  %218 = zext i8 %217 to i32
  %219 = add nsw i32 %218, 64
  br label %224

220:                                              ; preds = %198
  %221 = load i8, i8* %19, align 1
  %222 = zext i8 %221 to i32
  %223 = add nsw i32 %222, 65
  br label %224

224:                                              ; preds = %220, %216
  %225 = phi i32 [ %219, %216 ], [ %223, %220 ]
  %226 = trunc i32 %225 to i8
  %227 = load i8*, i8** %7, align 8
  %228 = getelementptr inbounds i8, i8* %227, i64 1
  store i8 %226, i8* %228, align 1
  store i32 2, i32* %5, align 4
  br label %296

229:                                              ; preds = %190, %187
  %230 = load i32, i32* %8, align 4
  %231 = icmp eq i32 %230, 65374
  br i1 %231, label %232, label %242

232:                                              ; preds = %229
  %233 = load i32, i32* %9, align 4
  %234 = icmp slt i32 %233, 2
  br i1 %234, label %235, label %237

235:                                              ; preds = %232
  %236 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %236, i32* %5, align 4
  br label %296

237:                                              ; preds = %232
  %238 = load i8*, i8** %7, align 8
  %239 = getelementptr inbounds i8, i8* %238, i64 0
  store i8 -127, i8* %239, align 1
  %240 = load i8*, i8** %7, align 8
  %241 = getelementptr inbounds i8, i8* %240, i64 1
  store i8 96, i8* %241, align 1
  store i32 2, i32* %5, align 4
  br label %296

242:                                              ; preds = %229
  %243 = load i32, i32* %8, align 4
  %244 = icmp eq i32 %243, 8741
  br i1 %244, label %245, label %255

245:                                              ; preds = %242
  %246 = load i32, i32* %9, align 4
  %247 = icmp slt i32 %246, 2
  br i1 %247, label %248, label %250

248:                                              ; preds = %245
  %249 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %249, i32* %5, align 4
  br label %296

250:                                              ; preds = %245
  %251 = load i8*, i8** %7, align 8
  %252 = getelementptr inbounds i8, i8* %251, i64 0
  store i8 -127, i8* %252, align 1
  %253 = load i8*, i8** %7, align 8
  %254 = getelementptr inbounds i8, i8* %253, i64 1
  store i8 97, i8* %254, align 1
  store i32 2, i32* %5, align 4
  br label %296

255:                                              ; preds = %242
  %256 = load i32, i32* %8, align 4
  %257 = icmp eq i32 %256, 65293
  br i1 %257, label %258, label %268

258:                                              ; preds = %255
  %259 = load i32, i32* %9, align 4
  %260 = icmp slt i32 %259, 2
  br i1 %260, label %261, label %263

261:                                              ; preds = %258
  %262 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %262, i32* %5, align 4
  br label %296

263:                                              ; preds = %258
  %264 = load i8*, i8** %7, align 8
  %265 = getelementptr inbounds i8, i8* %264, i64 0
  store i8 -127, i8* %265, align 1
  %266 = load i8*, i8** %7, align 8
  %267 = getelementptr inbounds i8, i8* %266, i64 1
  store i8 124, i8* %267, align 1
  store i32 2, i32* %5, align 4
  br label %296

268:                                              ; preds = %255
  %269 = load i32, i32* %8, align 4
  %270 = icmp eq i32 %269, 65504
  br i1 %270, label %271, label %281

271:                                              ; preds = %268
  %272 = load i32, i32* %9, align 4
  %273 = icmp slt i32 %272, 2
  br i1 %273, label %274, label %276

274:                                              ; preds = %271
  %275 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %275, i32* %5, align 4
  br label %296

276:                                              ; preds = %271
  %277 = load i8*, i8** %7, align 8
  %278 = getelementptr inbounds i8, i8* %277, i64 0
  store i8 -127, i8* %278, align 1
  %279 = load i8*, i8** %7, align 8
  %280 = getelementptr inbounds i8, i8* %279, i64 1
  store i8 -111, i8* %280, align 1
  store i32 2, i32* %5, align 4
  br label %296

281:                                              ; preds = %268
  %282 = load i32, i32* %8, align 4
  %283 = icmp eq i32 %282, 65505
  br i1 %283, label %284, label %294

284:                                              ; preds = %281
  %285 = load i32, i32* %9, align 4
  %286 = icmp slt i32 %285, 2
  br i1 %286, label %287, label %289

287:                                              ; preds = %284
  %288 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %288, i32* %5, align 4
  br label %296

289:                                              ; preds = %284
  %290 = load i8*, i8** %7, align 8
  %291 = getelementptr inbounds i8, i8* %290, i64 0
  store i8 -127, i8* %291, align 1
  %292 = load i8*, i8** %7, align 8
  %293 = getelementptr inbounds i8, i8* %292, i64 1
  store i8 -110, i8* %293, align 1
  store i32 2, i32* %5, align 4
  br label %296

294:                                              ; preds = %281
  %295 = load i32, i32* @RET_ILUNI, align 4
  store i32 %295, i32* %5, align 4
  br label %296

296:                                              ; preds = %294, %289, %287, %276, %274, %263, %261, %250, %248, %237, %235, %224, %196, %178, %176, %154, %87, %66, %38
  %297 = load i32, i32* %5, align 4
  ret i32 %297
}

declare dso_local i32 @ascii_wctomb(i32, i8*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @jisx0201_wctomb(i32, i8*, i32, i32) #1

declare dso_local i32 @jisx0208_wctomb(i32, i8*, i32, i32) #1

declare dso_local i32 @cp932ext_wctomb(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

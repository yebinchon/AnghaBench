; ModuleID = '/home/carl/AnghaBench/FFmpeg/tests/checkasm/extr_vp9dsp.c_randomize_loopfilter_buffers.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tests/checkasm/extr_vp9dsp.c_randomize_loopfilter_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*)* @randomize_loopfilter_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @randomize_loopfilter_buffers(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9, i32* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  store i32 %0, i32* %12, align 4
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32* %5, i32** %17, align 8
  store i32* %6, i32** %18, align 8
  store i32* %7, i32** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  store i32* %10, i32** %22, align 8
  %43 = load i32, i32* %15, align 4
  %44 = shl i32 1, %43
  %45 = sub nsw i32 %44, 1
  store i32 %45, i32* %23, align 4
  %46 = load i32, i32* %16, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %11
  %49 = load i32, i32* %13, align 4
  br label %53

50:                                               ; preds = %11
  %51 = load i32, i32* %13, align 4
  %52 = mul nsw i32 %51, 16
  br label %53

53:                                               ; preds = %50, %48
  %54 = phi i32 [ %49, %48 ], [ %52, %50 ]
  store i32 %54, i32* %24, align 4
  %55 = load i32, i32* %16, align 4
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 1, i32 16
  store i32 %58, i32* %25, align 4
  %59 = load i32, i32* %16, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load i32, i32* %14, align 4
  br label %64

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %63, %61
  %65 = phi i32 [ %62, %61 ], [ 1, %63 ]
  store i32 %65, i32* %26, align 4
  store i32 0, i32* %27, align 4
  br label %66

66:                                               ; preds = %116, %64
  %67 = load i32, i32* %27, align 4
  %68 = icmp slt i32 %67, 2
  br i1 %68, label %69, label %119

69:                                               ; preds = %66
  %70 = load i32, i32* %24, align 4
  %71 = load i32, i32* %27, align 4
  %72 = load i32, i32* %25, align 4
  %73 = mul nsw i32 %71, %72
  %74 = add nsw i32 %70, %73
  store i32 %74, i32* %29, align 4
  %75 = load i32, i32* %29, align 4
  %76 = call i32 (...) @rnd()
  %77 = load i32, i32* %23, align 4
  %78 = and i32 %76, %77
  store i32 %78, i32* %31, align 4
  %79 = call i32 @setpx(i32 %75, i32 0, i32 %78)
  %80 = load i32, i32* %29, align 4
  %81 = load i32, i32* %31, align 4
  store i32 %81, i32* %30, align 4
  %82 = load i32*, i32** %17, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = ashr i32 %86, 2
  %88 = call i32 @setsx(i32 %80, i32 -1, i32 %81, i32 %87)
  store i32 1, i32* %28, align 4
  br label %89

89:                                               ; preds = %112, %69
  %90 = load i32, i32* %28, align 4
  %91 = icmp slt i32 %90, 8
  br i1 %91, label %92, label %115

92:                                               ; preds = %89
  %93 = load i32, i32* %29, align 4
  %94 = load i32, i32* %28, align 4
  %95 = sub nsw i32 -1, %94
  %96 = load i32, i32* %30, align 4
  %97 = load i32*, i32** %18, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @setsx(i32 %93, i32 %95, i32 %96, i32 %101)
  %103 = load i32, i32* %29, align 4
  %104 = load i32, i32* %28, align 4
  %105 = load i32, i32* %31, align 4
  %106 = load i32*, i32** %18, align 8
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @setsx(i32 %103, i32 %104, i32 %105, i32 %110)
  br label %112

112:                                              ; preds = %92
  %113 = load i32, i32* %28, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %28, align 4
  br label %89

115:                                              ; preds = %89
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %27, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %27, align 4
  br label %66

119:                                              ; preds = %66
  store i32 2, i32* %27, align 4
  br label %120

120:                                              ; preds = %191, %119
  %121 = load i32, i32* %27, align 4
  %122 = icmp slt i32 %121, 4
  br i1 %122, label %123, label %194

123:                                              ; preds = %120
  %124 = load i32, i32* %24, align 4
  %125 = load i32, i32* %27, align 4
  %126 = load i32, i32* %25, align 4
  %127 = mul nsw i32 %125, %126
  %128 = add nsw i32 %124, %127
  store i32 %128, i32* %32, align 4
  %129 = load i32, i32* %32, align 4
  %130 = call i32 (...) @rnd()
  %131 = load i32, i32* %23, align 4
  %132 = and i32 %130, %131
  store i32 %132, i32* %34, align 4
  %133 = call i32 @setpx(i32 %129, i32 0, i32 %132)
  %134 = load i32, i32* %32, align 4
  %135 = load i32, i32* %34, align 4
  store i32 %135, i32* %33, align 4
  %136 = load i32*, i32** %17, align 8
  %137 = load i32, i32* %12, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = ashr i32 %140, 2
  %142 = call i32 @setsx(i32 %134, i32 -1, i32 %135, i32 %141)
  store i32 1, i32* %28, align 4
  br label %143

143:                                              ; preds = %166, %123
  %144 = load i32, i32* %28, align 4
  %145 = icmp slt i32 %144, 4
  br i1 %145, label %146, label %169

146:                                              ; preds = %143
  %147 = load i32, i32* %32, align 4
  %148 = load i32, i32* %28, align 4
  %149 = sub nsw i32 -1, %148
  %150 = load i32, i32* %33, align 4
  %151 = load i32*, i32** %18, align 8
  %152 = load i32, i32* %12, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @setsx(i32 %147, i32 %149, i32 %150, i32 %155)
  %157 = load i32, i32* %32, align 4
  %158 = load i32, i32* %28, align 4
  %159 = load i32, i32* %34, align 4
  %160 = load i32*, i32** %18, align 8
  %161 = load i32, i32* %12, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @setsx(i32 %157, i32 %158, i32 %159, i32 %164)
  br label %166

166:                                              ; preds = %146
  %167 = load i32, i32* %28, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %28, align 4
  br label %143

169:                                              ; preds = %143
  store i32 4, i32* %28, align 4
  br label %170

170:                                              ; preds = %187, %169
  %171 = load i32, i32* %28, align 4
  %172 = icmp slt i32 %171, 8
  br i1 %172, label %173, label %190

173:                                              ; preds = %170
  %174 = load i32, i32* %32, align 4
  %175 = load i32, i32* %28, align 4
  %176 = sub nsw i32 -1, %175
  %177 = call i32 (...) @rnd()
  %178 = load i32, i32* %23, align 4
  %179 = and i32 %177, %178
  %180 = call i32 @setpx(i32 %174, i32 %176, i32 %179)
  %181 = load i32, i32* %32, align 4
  %182 = load i32, i32* %28, align 4
  %183 = call i32 (...) @rnd()
  %184 = load i32, i32* %23, align 4
  %185 = and i32 %183, %184
  %186 = call i32 @setpx(i32 %181, i32 %182, i32 %185)
  br label %187

187:                                              ; preds = %173
  %188 = load i32, i32* %28, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %28, align 4
  br label %170

190:                                              ; preds = %170
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %27, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %27, align 4
  br label %120

194:                                              ; preds = %120
  store i32 4, i32* %27, align 4
  br label %195

195:                                              ; preds = %287, %194
  %196 = load i32, i32* %27, align 4
  %197 = icmp slt i32 %196, 6
  br i1 %197, label %198, label %290

198:                                              ; preds = %195
  %199 = load i32, i32* %24, align 4
  %200 = load i32, i32* %27, align 4
  %201 = load i32, i32* %25, align 4
  %202 = mul nsw i32 %200, %201
  %203 = add nsw i32 %199, %202
  store i32 %203, i32* %35, align 4
  %204 = load i32, i32* %35, align 4
  %205 = call i32 (...) @rnd()
  %206 = load i32, i32* %23, align 4
  %207 = and i32 %205, %206
  store i32 %207, i32* %39, align 4
  %208 = call i32 @setpx(i32 %204, i32 0, i32 %207)
  %209 = load i32, i32* %35, align 4
  %210 = load i32, i32* %39, align 4
  store i32 %210, i32* %40, align 4
  %211 = load i32*, i32** %20, align 8
  %212 = load i32, i32* %12, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @setsx(i32 %209, i32 1, i32 %210, i32 %215)
  %217 = load i32, i32* %35, align 4
  %218 = load i32, i32* %40, align 4
  store i32 %218, i32* %41, align 4
  %219 = load i32*, i32** %20, align 8
  %220 = load i32, i32* %12, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @setsx(i32 %217, i32 2, i32 %218, i32 %223)
  %225 = load i32, i32* %35, align 4
  %226 = load i32, i32* %41, align 4
  %227 = load i32*, i32** %20, align 8
  %228 = load i32, i32* %12, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @setsx(i32 %225, i32 3, i32 %226, i32 %231)
  %233 = load i32, i32* %35, align 4
  %234 = load i32, i32* %39, align 4
  store i32 %234, i32* %38, align 4
  %235 = load i32*, i32** %17, align 8
  %236 = load i32, i32* %12, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = ashr i32 %239, 2
  %241 = call i32 @setsx(i32 %233, i32 -1, i32 %234, i32 %240)
  %242 = load i32, i32* %35, align 4
  %243 = load i32, i32* %38, align 4
  store i32 %243, i32* %37, align 4
  %244 = load i32*, i32** %20, align 8
  %245 = load i32, i32* %12, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @setsx(i32 %242, i32 -2, i32 %243, i32 %248)
  %250 = load i32, i32* %35, align 4
  %251 = load i32, i32* %37, align 4
  store i32 %251, i32* %36, align 4
  %252 = load i32*, i32** %20, align 8
  %253 = load i32, i32* %12, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @setsx(i32 %250, i32 -3, i32 %251, i32 %256)
  %258 = load i32, i32* %35, align 4
  %259 = load i32, i32* %36, align 4
  %260 = load i32*, i32** %20, align 8
  %261 = load i32, i32* %12, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %260, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @setsx(i32 %258, i32 -4, i32 %259, i32 %264)
  store i32 4, i32* %28, align 4
  br label %266

266:                                              ; preds = %283, %198
  %267 = load i32, i32* %28, align 4
  %268 = icmp slt i32 %267, 8
  br i1 %268, label %269, label %286

269:                                              ; preds = %266
  %270 = load i32, i32* %35, align 4
  %271 = load i32, i32* %28, align 4
  %272 = sub nsw i32 -1, %271
  %273 = call i32 (...) @rnd()
  %274 = load i32, i32* %23, align 4
  %275 = and i32 %273, %274
  %276 = call i32 @setpx(i32 %270, i32 %272, i32 %275)
  %277 = load i32, i32* %35, align 4
  %278 = load i32, i32* %28, align 4
  %279 = call i32 (...) @rnd()
  %280 = load i32, i32* %23, align 4
  %281 = and i32 %279, %280
  %282 = call i32 @setpx(i32 %277, i32 %278, i32 %281)
  br label %283

283:                                              ; preds = %269
  %284 = load i32, i32* %28, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %28, align 4
  br label %266

286:                                              ; preds = %266
  br label %287

287:                                              ; preds = %286
  %288 = load i32, i32* %27, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %27, align 4
  br label %195

290:                                              ; preds = %195
  store i32 6, i32* %27, align 4
  br label %291

291:                                              ; preds = %321, %290
  %292 = load i32, i32* %27, align 4
  %293 = icmp slt i32 %292, 8
  br i1 %293, label %294, label %324

294:                                              ; preds = %291
  %295 = load i32, i32* %24, align 4
  %296 = load i32, i32* %27, align 4
  %297 = load i32, i32* %25, align 4
  %298 = mul nsw i32 %296, %297
  %299 = add nsw i32 %295, %298
  store i32 %299, i32* %42, align 4
  store i32 0, i32* %28, align 4
  br label %300

300:                                              ; preds = %317, %294
  %301 = load i32, i32* %28, align 4
  %302 = icmp slt i32 %301, 8
  br i1 %302, label %303, label %320

303:                                              ; preds = %300
  %304 = load i32, i32* %42, align 4
  %305 = load i32, i32* %28, align 4
  %306 = sub nsw i32 -1, %305
  %307 = call i32 (...) @rnd()
  %308 = load i32, i32* %23, align 4
  %309 = and i32 %307, %308
  %310 = call i32 @setpx(i32 %304, i32 %306, i32 %309)
  %311 = load i32, i32* %42, align 4
  %312 = load i32, i32* %28, align 4
  %313 = call i32 (...) @rnd()
  %314 = load i32, i32* %23, align 4
  %315 = and i32 %313, %314
  %316 = call i32 @setpx(i32 %311, i32 %312, i32 %315)
  br label %317

317:                                              ; preds = %303
  %318 = load i32, i32* %28, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %28, align 4
  br label %300

320:                                              ; preds = %300
  br label %321

321:                                              ; preds = %320
  %322 = load i32, i32* %27, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %27, align 4
  br label %291

324:                                              ; preds = %291
  ret void
}

declare dso_local i32 @setpx(i32, i32, i32) #1

declare dso_local i32 @rnd(...) #1

declare dso_local i32 @setsx(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

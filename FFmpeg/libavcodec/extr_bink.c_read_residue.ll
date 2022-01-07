; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_bink.c_read_residue.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_bink.c_read_residue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bink_scan = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64*, i32)* @read_residue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_residue(i32* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [128 x i32], align 16
  %9 = alloca [128 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [64 x i32], align 16
  %19 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 64, i32* %15, align 4
  store i32 64, i32* %16, align 4
  store i32 0, i32* %19, align 4
  %20 = load i32, i32* %16, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [128 x i32], [128 x i32]* %8, i64 0, i64 %21
  store i32 4, i32* %22, align 4
  %23 = load i32, i32* %16, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %16, align 4
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 %25
  store i32 0, i32* %26, align 4
  %27 = load i32, i32* %16, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [128 x i32], [128 x i32]* %8, i64 0, i64 %28
  store i32 24, i32* %29, align 4
  %30 = load i32, i32* %16, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %16, align 4
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 %32
  store i32 0, i32* %33, align 4
  %34 = load i32, i32* %16, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [128 x i32], [128 x i32]* %8, i64 0, i64 %35
  store i32 44, i32* %36, align 4
  %37 = load i32, i32* %16, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %16, align 4
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 %39
  store i32 0, i32* %40, align 4
  %41 = load i32, i32* %16, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [128 x i32], [128 x i32]* %8, i64 0, i64 %42
  store i32 0, i32* %43, align 4
  %44 = load i32, i32* %16, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %16, align 4
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 %46
  store i32 2, i32* %47, align 4
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @get_bits(i32* %48, i32 3)
  %50 = shl i32 1, %49
  store i32 %50, i32* %12, align 4
  br label %51

51:                                               ; preds = %283, %3
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %286

54:                                               ; preds = %51
  store i32 0, i32* %10, align 4
  br label %55

55:                                               ; preds = %105, %54
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %19, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %108

59:                                               ; preds = %55
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @get_bits1(i32* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  br label %105

64:                                               ; preds = %59
  %65 = load i64*, i64** %6, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %65, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %64
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = load i64*, i64** %6, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %77, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %84, %76
  store i64 %85, i64* %83, align 8
  br label %98

86:                                               ; preds = %64
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = load i64*, i64** %6, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %89, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %96, %88
  store i64 %97, i64* %95, align 8
  br label %98

98:                                               ; preds = %86, %74
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  store i32 0, i32* %4, align 4
  br label %287

104:                                              ; preds = %98
  br label %105

105:                                              ; preds = %104, %63
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %10, align 4
  br label %55

108:                                              ; preds = %55
  %109 = load i32, i32* %15, align 4
  store i32 %109, i32* %17, align 4
  br label %110

110:                                              ; preds = %281, %129, %108
  %111 = load i32, i32* %17, align 4
  %112 = load i32, i32* %16, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %282

114:                                              ; preds = %110
  %115 = load i32, i32* %17, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [128 x i32], [128 x i32]* %8, i64 0, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %17, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %118, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %114
  %126 = load i32*, i32** %5, align 8
  %127 = call i32 @get_bits1(i32* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %125, %114
  %130 = load i32, i32* %17, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %17, align 4
  br label %110

132:                                              ; preds = %125
  %133 = load i32, i32* %17, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [128 x i32], [128 x i32]* %8, i64 0, i64 %134
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* %13, align 4
  %137 = load i32, i32* %17, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 %138
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %14, align 4
  %141 = load i32, i32* %14, align 4
  switch i32 %141, label %281 [
    i32 0, label %142
    i32 2, label %151
    i32 1, label %219
    i32 3, label %241
  ]

142:                                              ; preds = %132
  %143 = load i32, i32* %13, align 4
  %144 = add nsw i32 %143, 4
  %145 = load i32, i32* %17, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [128 x i32], [128 x i32]* %8, i64 0, i64 %146
  store i32 %144, i32* %147, align 4
  %148 = load i32, i32* %17, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 %149
  store i32 1, i32* %150, align 4
  br label %151

151:                                              ; preds = %132, %142
  %152 = load i32, i32* %14, align 4
  %153 = icmp eq i32 %152, 2
  br i1 %153, label %154, label %162

154:                                              ; preds = %151
  %155 = load i32, i32* %17, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [128 x i32], [128 x i32]* %8, i64 0, i64 %156
  store i32 0, i32* %157, align 4
  %158 = load i32, i32* %17, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %17, align 4
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 %160
  store i32 0, i32* %161, align 4
  br label %162

162:                                              ; preds = %154, %151
  store i32 0, i32* %10, align 4
  br label %163

163:                                              ; preds = %213, %162
  %164 = load i32, i32* %10, align 4
  %165 = icmp slt i32 %164, 4
  br i1 %165, label %166, label %218

166:                                              ; preds = %163
  %167 = load i32*, i32** %5, align 8
  %168 = call i32 @get_bits1(i32* %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %179

170:                                              ; preds = %166
  %171 = load i32, i32* %13, align 4
  %172 = load i32, i32* %15, align 4
  %173 = add nsw i32 %172, -1
  store i32 %173, i32* %15, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [128 x i32], [128 x i32]* %8, i64 0, i64 %174
  store i32 %171, i32* %175, align 4
  %176 = load i32, i32* %15, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 %177
  store i32 3, i32* %178, align 4
  br label %212

179:                                              ; preds = %166
  %180 = load i64*, i64** @bink_scan, align 8
  %181 = load i32, i32* %13, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i64, i64* %180, i64 %182
  %184 = load i64, i64* %183, align 8
  %185 = trunc i64 %184 to i32
  %186 = load i32, i32* %19, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %19, align 4
  %188 = sext i32 %186 to i64
  %189 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 %188
  store i32 %185, i32* %189, align 4
  %190 = load i32*, i32** %5, align 8
  %191 = call i32 @get_bits1(i32* %190)
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %11, align 4
  %193 = load i32, i32* %12, align 4
  %194 = load i32, i32* %11, align 4
  %195 = xor i32 %193, %194
  %196 = load i32, i32* %11, align 4
  %197 = sub nsw i32 %195, %196
  %198 = sext i32 %197 to i64
  %199 = load i64*, i64** %6, align 8
  %200 = load i64*, i64** @bink_scan, align 8
  %201 = load i32, i32* %13, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i64, i64* %200, i64 %202
  %204 = load i64, i64* %203, align 8
  %205 = getelementptr inbounds i64, i64* %199, i64 %204
  store i64 %198, i64* %205, align 8
  %206 = load i32, i32* %7, align 4
  %207 = add nsw i32 %206, -1
  store i32 %207, i32* %7, align 4
  %208 = load i32, i32* %7, align 4
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %179
  store i32 0, i32* %4, align 4
  br label %287

211:                                              ; preds = %179
  br label %212

212:                                              ; preds = %211, %170
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %10, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %10, align 4
  %216 = load i32, i32* %13, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %13, align 4
  br label %163

218:                                              ; preds = %163
  br label %281

219:                                              ; preds = %132
  %220 = load i32, i32* %17, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 %221
  store i32 2, i32* %222, align 4
  store i32 0, i32* %10, align 4
  br label %223

223:                                              ; preds = %237, %219
  %224 = load i32, i32* %10, align 4
  %225 = icmp slt i32 %224, 3
  br i1 %225, label %226, label %240

226:                                              ; preds = %223
  %227 = load i32, i32* %13, align 4
  %228 = add nsw i32 %227, 4
  store i32 %228, i32* %13, align 4
  %229 = load i32, i32* %13, align 4
  %230 = load i32, i32* %16, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds [128 x i32], [128 x i32]* %8, i64 0, i64 %231
  store i32 %229, i32* %232, align 4
  %233 = load i32, i32* %16, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %16, align 4
  %235 = sext i32 %233 to i64
  %236 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 %235
  store i32 2, i32* %236, align 4
  br label %237

237:                                              ; preds = %226
  %238 = load i32, i32* %10, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %10, align 4
  br label %223

240:                                              ; preds = %223
  br label %281

241:                                              ; preds = %132
  %242 = load i64*, i64** @bink_scan, align 8
  %243 = load i32, i32* %13, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i64, i64* %242, i64 %244
  %246 = load i64, i64* %245, align 8
  %247 = trunc i64 %246 to i32
  %248 = load i32, i32* %19, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %19, align 4
  %250 = sext i32 %248 to i64
  %251 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 %250
  store i32 %247, i32* %251, align 4
  %252 = load i32*, i32** %5, align 8
  %253 = call i32 @get_bits1(i32* %252)
  %254 = sub nsw i32 0, %253
  store i32 %254, i32* %11, align 4
  %255 = load i32, i32* %12, align 4
  %256 = load i32, i32* %11, align 4
  %257 = xor i32 %255, %256
  %258 = load i32, i32* %11, align 4
  %259 = sub nsw i32 %257, %258
  %260 = sext i32 %259 to i64
  %261 = load i64*, i64** %6, align 8
  %262 = load i64*, i64** @bink_scan, align 8
  %263 = load i32, i32* %13, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i64, i64* %262, i64 %264
  %266 = load i64, i64* %265, align 8
  %267 = getelementptr inbounds i64, i64* %261, i64 %266
  store i64 %260, i64* %267, align 8
  %268 = load i32, i32* %17, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds [128 x i32], [128 x i32]* %8, i64 0, i64 %269
  store i32 0, i32* %270, align 4
  %271 = load i32, i32* %17, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %17, align 4
  %273 = sext i32 %271 to i64
  %274 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 %273
  store i32 0, i32* %274, align 4
  %275 = load i32, i32* %7, align 4
  %276 = add nsw i32 %275, -1
  store i32 %276, i32* %7, align 4
  %277 = load i32, i32* %7, align 4
  %278 = icmp slt i32 %277, 0
  br i1 %278, label %279, label %280

279:                                              ; preds = %241
  store i32 0, i32* %4, align 4
  br label %287

280:                                              ; preds = %241
  br label %281

281:                                              ; preds = %132, %280, %240, %218
  br label %110

282:                                              ; preds = %110
  br label %283

283:                                              ; preds = %282
  %284 = load i32, i32* %12, align 4
  %285 = ashr i32 %284, 1
  store i32 %285, i32* %12, align 4
  br label %51

286:                                              ; preds = %51
  store i32 0, i32* %4, align 4
  br label %287

287:                                              ; preds = %286, %279, %210, %103
  %288 = load i32, i32* %4, align 4
  ret i32 %288
}

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @get_bits1(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

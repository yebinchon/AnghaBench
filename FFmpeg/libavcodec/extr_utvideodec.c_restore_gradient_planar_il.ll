; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_utvideodec.c_restore_gradient_planar_il.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_utvideodec.c_restore_gradient_planar_il.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (i32*, i32*, i32, i32)*, i32 (i32*, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*, i32, i32, i32, i32, i32)* @restore_gradient_planar_il to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restore_gradient_planar_il(%struct.TYPE_5__* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32*, align 8
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
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 3, i32 1
  %31 = xor i32 %30, -1
  store i32 %31, i32* %24, align 4
  %32 = load i32, i32* %10, align 4
  %33 = shl i32 %32, 1
  store i32 %33, i32* %25, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @FFMIN(i32 %34, i32 32)
  store i32 %35, i32* %26, align 4
  store i32 0, i32* %17, align 4
  br label %36

36:                                               ; preds = %282, %7
  %37 = load i32, i32* %17, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %285

40:                                               ; preds = %36
  %41 = load i32, i32* %17, align 4
  %42 = load i32, i32* %12, align 4
  %43 = mul nsw i32 %41, %42
  %44 = load i32, i32* %13, align 4
  %45 = sdiv i32 %43, %44
  %46 = load i32, i32* %24, align 4
  %47 = and i32 %45, %46
  store i32 %47, i32* %22, align 4
  %48 = load i32, i32* %17, align 4
  %49 = add nsw i32 %48, 1
  %50 = load i32, i32* %12, align 4
  %51 = mul nsw i32 %49, %50
  %52 = load i32, i32* %13, align 4
  %53 = sdiv i32 %51, %52
  %54 = load i32, i32* %24, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* %22, align 4
  %57 = sub nsw i32 %55, %56
  store i32 %57, i32* %23, align 4
  %58 = load i32, i32* %23, align 4
  %59 = ashr i32 %58, 1
  store i32 %59, i32* %23, align 4
  %60 = load i32, i32* %23, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %40
  br label %282

63:                                               ; preds = %40
  %64 = load i32*, i32** %9, align 8
  %65 = load i32, i32* %22, align 4
  %66 = load i32, i32* %10, align 4
  %67 = mul nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %64, i64 %68
  store i32* %69, i32** %21, align 8
  %70 = load i32*, i32** %21, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 128
  store i32 %73, i32* %71, align 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32 (i32*, i32*, i32, i32)*, i32 (i32*, i32*, i32, i32)** %76, align 8
  %78 = load i32*, i32** %21, align 8
  %79 = load i32*, i32** %21, align 8
  %80 = load i32, i32* %11, align 4
  %81 = call i32 %77(i32* %78, i32* %79, i32 %80, i32 0)
  store i32 %81, i32* %18, align 4
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32 (i32*, i32*, i32, i32)*, i32 (i32*, i32*, i32, i32)** %84, align 8
  %86 = load i32*, i32** %21, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32*, i32** %21, align 8
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %18, align 4
  %96 = call i32 %85(i32* %89, i32* %93, i32 %94, i32 %95)
  %97 = load i32, i32* %25, align 4
  %98 = load i32*, i32** %21, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  store i32* %100, i32** %21, align 8
  %101 = load i32, i32* %23, align 4
  %102 = icmp sle i32 %101, 1
  br i1 %102, label %103, label %104

103:                                              ; preds = %63
  br label %282

104:                                              ; preds = %63
  store i32 1, i32* %16, align 4
  br label %105

105:                                              ; preds = %278, %104
  %106 = load i32, i32* %16, align 4
  %107 = load i32, i32* %23, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %281

109:                                              ; preds = %105
  %110 = load i32*, i32** %21, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %21, align 8
  %114 = load i32, i32* %25, align 4
  %115 = sub nsw i32 0, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %113, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %112, %118
  %120 = and i32 %119, 255
  %121 = load i32*, i32** %21, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  store i32 %120, i32* %122, align 4
  store i32 1, i32* %15, align 4
  br label %123

123:                                              ; preds = %165, %109
  %124 = load i32, i32* %15, align 4
  %125 = load i32, i32* %26, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %168

127:                                              ; preds = %123
  %128 = load i32*, i32** %21, align 8
  %129 = load i32, i32* %15, align 4
  %130 = load i32, i32* %25, align 4
  %131 = sub nsw i32 %129, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %128, i64 %132
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %18, align 4
  %135 = load i32*, i32** %21, align 8
  %136 = load i32, i32* %15, align 4
  %137 = load i32, i32* %25, align 4
  %138 = add nsw i32 %137, 1
  %139 = sub nsw i32 %136, %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %135, i64 %140
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %19, align 4
  %143 = load i32*, i32** %21, align 8
  %144 = load i32, i32* %15, align 4
  %145 = sub nsw i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %143, i64 %146
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %20, align 4
  %149 = load i32, i32* %18, align 4
  %150 = load i32, i32* %19, align 4
  %151 = sub nsw i32 %149, %150
  %152 = load i32, i32* %20, align 4
  %153 = add nsw i32 %151, %152
  %154 = load i32*, i32** %21, align 8
  %155 = load i32, i32* %15, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %153, %158
  %160 = and i32 %159, 255
  %161 = load i32*, i32** %21, align 8
  %162 = load i32, i32* %15, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  store i32 %160, i32* %164, align 4
  br label %165

165:                                              ; preds = %127
  %166 = load i32, i32* %15, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %15, align 4
  br label %123

168:                                              ; preds = %123
  %169 = load i32, i32* %11, align 4
  %170 = icmp sgt i32 %169, 32
  br i1 %170, label %171, label %182

171:                                              ; preds = %168
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 1
  %175 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %174, align 8
  %176 = load i32*, i32** %21, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 32
  %178 = load i32, i32* %25, align 4
  %179 = load i32, i32* %11, align 4
  %180 = sub nsw i32 %179, 32
  %181 = call i32 %175(i32* %177, i32 %178, i32 %180)
  br label %182

182:                                              ; preds = %171, %168
  %183 = load i32*, i32** %21, align 8
  %184 = load i32, i32* %10, align 4
  %185 = sub nsw i32 0, %184
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %183, i64 %186
  %188 = load i32, i32* %187, align 4
  store i32 %188, i32* %18, align 4
  %189 = load i32*, i32** %21, align 8
  %190 = load i32, i32* %10, align 4
  %191 = add nsw i32 1, %190
  %192 = load i32, i32* %10, align 4
  %193 = add nsw i32 %191, %192
  %194 = load i32, i32* %11, align 4
  %195 = sub nsw i32 %193, %194
  %196 = sub nsw i32 0, %195
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %189, i64 %197
  %199 = load i32, i32* %198, align 4
  store i32 %199, i32* %19, align 4
  %200 = load i32*, i32** %21, align 8
  %201 = load i32, i32* %11, align 4
  %202 = sub nsw i32 %201, 1
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %200, i64 %203
  %205 = load i32, i32* %204, align 4
  store i32 %205, i32* %20, align 4
  %206 = load i32, i32* %18, align 4
  %207 = load i32, i32* %19, align 4
  %208 = sub nsw i32 %206, %207
  %209 = load i32, i32* %20, align 4
  %210 = add nsw i32 %208, %209
  %211 = load i32*, i32** %21, align 8
  %212 = load i32, i32* %10, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = add nsw i32 %210, %215
  %217 = and i32 %216, 255
  %218 = load i32*, i32** %21, align 8
  %219 = load i32, i32* %10, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  store i32 %217, i32* %221, align 4
  store i32 1, i32* %15, align 4
  br label %222

222:                                              ; preds = %270, %182
  %223 = load i32, i32* %15, align 4
  %224 = load i32, i32* %11, align 4
  %225 = icmp slt i32 %223, %224
  br i1 %225, label %226, label %273

226:                                              ; preds = %222
  %227 = load i32*, i32** %21, align 8
  %228 = load i32, i32* %15, align 4
  %229 = load i32, i32* %10, align 4
  %230 = sub nsw i32 %228, %229
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %227, i64 %231
  %233 = load i32, i32* %232, align 4
  store i32 %233, i32* %18, align 4
  %234 = load i32*, i32** %21, align 8
  %235 = load i32, i32* %15, align 4
  %236 = load i32, i32* %10, align 4
  %237 = add nsw i32 1, %236
  %238 = sub nsw i32 %235, %237
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %234, i64 %239
  %241 = load i32, i32* %240, align 4
  store i32 %241, i32* %19, align 4
  %242 = load i32*, i32** %21, align 8
  %243 = load i32, i32* %15, align 4
  %244 = sub nsw i32 %243, 1
  %245 = load i32, i32* %10, align 4
  %246 = add nsw i32 %244, %245
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %242, i64 %247
  %249 = load i32, i32* %248, align 4
  store i32 %249, i32* %20, align 4
  %250 = load i32, i32* %18, align 4
  %251 = load i32, i32* %19, align 4
  %252 = sub nsw i32 %250, %251
  %253 = load i32, i32* %20, align 4
  %254 = add nsw i32 %252, %253
  %255 = load i32*, i32** %21, align 8
  %256 = load i32, i32* %15, align 4
  %257 = load i32, i32* %10, align 4
  %258 = add nsw i32 %256, %257
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %255, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = add nsw i32 %254, %261
  %263 = and i32 %262, 255
  %264 = load i32*, i32** %21, align 8
  %265 = load i32, i32* %15, align 4
  %266 = load i32, i32* %10, align 4
  %267 = add nsw i32 %265, %266
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %264, i64 %268
  store i32 %263, i32* %269, align 4
  br label %270

270:                                              ; preds = %226
  %271 = load i32, i32* %15, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %15, align 4
  br label %222

273:                                              ; preds = %222
  %274 = load i32, i32* %25, align 4
  %275 = load i32*, i32** %21, align 8
  %276 = sext i32 %274 to i64
  %277 = getelementptr inbounds i32, i32* %275, i64 %276
  store i32* %277, i32** %21, align 8
  br label %278

278:                                              ; preds = %273
  %279 = load i32, i32* %16, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %16, align 4
  br label %105

281:                                              ; preds = %105
  br label %282

282:                                              ; preds = %281, %103, %62
  %283 = load i32, i32* %17, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %17, align 4
  br label %36

285:                                              ; preds = %36
  ret void
}

declare dso_local i32 @FFMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

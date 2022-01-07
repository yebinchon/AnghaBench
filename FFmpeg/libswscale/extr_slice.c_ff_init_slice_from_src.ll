; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_slice.c_ff_init_slice_from_src.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_slice.c_ff_init_slice_from_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_init_slice_from_src(%struct.TYPE_5__* %0, i32** %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [4 x i32], align 16
  %21 = alloca [4 x i32], align 16
  %22 = alloca [4 x i32*], align 16
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %10, align 8
  store i32** %1, i32*** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 0
  %29 = load i32, i32* %14, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds i32, i32* %28, i64 1
  %31 = load i32, i32* %16, align 4
  store i32 %31, i32* %30, align 4
  %32 = getelementptr inbounds i32, i32* %30, i64 1
  %33 = load i32, i32* %16, align 4
  store i32 %33, i32* %32, align 4
  %34 = getelementptr inbounds i32, i32* %32, i64 1
  %35 = load i32, i32* %14, align 4
  store i32 %35, i32* %34, align 4
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* %15, align 4
  %39 = add nsw i32 %37, %38
  store i32 %39, i32* %36, align 4
  %40 = getelementptr inbounds i32, i32* %36, i64 1
  %41 = load i32, i32* %16, align 4
  %42 = load i32, i32* %17, align 4
  %43 = add nsw i32 %41, %42
  store i32 %43, i32* %40, align 4
  %44 = getelementptr inbounds i32, i32* %40, i64 1
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* %17, align 4
  %47 = add nsw i32 %45, %46
  store i32 %47, i32* %44, align 4
  %48 = getelementptr inbounds i32, i32* %44, i64 1
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %15, align 4
  %51 = add nsw i32 %49, %50
  store i32 %51, i32* %48, align 4
  %52 = getelementptr inbounds [4 x i32*], [4 x i32*]* %22, i64 0, i64 0
  %53 = load i32**, i32*** %11, align 8
  %54 = getelementptr inbounds i32*, i32** %53, i64 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %18, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %9
  br label %62

59:                                               ; preds = %9
  %60 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 0
  %61 = load i32, i32* %60, align 16
  br label %62

62:                                               ; preds = %59, %58
  %63 = phi i32 [ 0, %58 ], [ %61, %59 ]
  %64 = load i32*, i32** %12, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %63, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %55, i64 %68
  store i32* %69, i32** %52, align 8
  %70 = getelementptr inbounds i32*, i32** %52, i64 1
  %71 = load i32**, i32*** %11, align 8
  %72 = getelementptr inbounds i32*, i32** %71, i64 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %18, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %62
  br label %80

77:                                               ; preds = %62
  %78 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 1
  %79 = load i32, i32* %78, align 4
  br label %80

80:                                               ; preds = %77, %76
  %81 = phi i32 [ 0, %76 ], [ %79, %77 ]
  %82 = load i32*, i32** %12, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 %81, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %73, i64 %86
  store i32* %87, i32** %70, align 8
  %88 = getelementptr inbounds i32*, i32** %70, i64 1
  %89 = load i32**, i32*** %11, align 8
  %90 = getelementptr inbounds i32*, i32** %89, i64 2
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %18, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %80
  br label %98

95:                                               ; preds = %80
  %96 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 2
  %97 = load i32, i32* %96, align 8
  br label %98

98:                                               ; preds = %95, %94
  %99 = phi i32 [ 0, %94 ], [ %97, %95 ]
  %100 = load i32*, i32** %12, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 2
  %102 = load i32, i32* %101, align 4
  %103 = mul nsw i32 %99, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %91, i64 %104
  store i32* %105, i32** %88, align 8
  %106 = getelementptr inbounds i32*, i32** %88, i64 1
  %107 = load i32**, i32*** %11, align 8
  %108 = getelementptr inbounds i32*, i32** %107, i64 3
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %18, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %98
  br label %116

113:                                              ; preds = %98
  %114 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 3
  %115 = load i32, i32* %114, align 4
  br label %116

116:                                              ; preds = %113, %112
  %117 = phi i32 [ 0, %112 ], [ %115, %113 ]
  %118 = load i32*, i32** %12, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 3
  %120 = load i32, i32* %119, align 4
  %121 = mul nsw i32 %117, %120
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %109, i64 %122
  store i32* %123, i32** %106, align 8
  %124 = load i32, i32* %13, align 4
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  store i32 0, i32* %19, align 4
  br label %127

127:                                              ; preds = %293, %116
  %128 = load i32, i32* %19, align 4
  %129 = icmp slt i32 %128, 4
  br i1 %129, label %130, label %296

130:                                              ; preds = %127
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = load i32, i32* %19, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  store i32 %138, i32* %24, align 4
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = load i32, i32* %19, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  store i32 %146, i32* %25, align 4
  %147 = load i32, i32* %19, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %19, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = sub nsw i32 %150, %154
  store i32 %155, i32* %26, align 4
  %156 = load i32, i32* %19, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %24, align 4
  %161 = sub nsw i32 %159, %160
  store i32 %161, i32* %27, align 4
  %162 = load i32, i32* %19, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %24, align 4
  %167 = icmp sge i32 %165, %166
  br i1 %167, label %168, label %230

168:                                              ; preds = %130
  %169 = load i32, i32* %25, align 4
  %170 = load i32, i32* %27, align 4
  %171 = icmp sge i32 %169, %170
  br i1 %171, label %172, label %230

172:                                              ; preds = %168
  %173 = load i32, i32* %27, align 4
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %175, align 8
  %177 = load i32, i32* %19, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @FFMAX(i32 %173, i32 %181)
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 1
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %184, align 8
  %186 = load i32, i32* %19, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 2
  store i32 %182, i32* %189, align 8
  store i32 0, i32* %23, align 4
  br label %190

190:                                              ; preds = %226, %172
  %191 = load i32, i32* %23, align 4
  %192 = load i32, i32* %26, align 4
  %193 = icmp slt i32 %191, %192
  br i1 %193, label %194, label %229

194:                                              ; preds = %190
  %195 = load i32, i32* %19, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [4 x i32*], [4 x i32*]* %22, i64 0, i64 %196
  %198 = load i32*, i32** %197, align 8
  %199 = load i32, i32* %23, align 4
  %200 = load i32*, i32** %12, align 8
  %201 = load i32, i32* %19, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = mul nsw i32 %199, %204
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %198, i64 %206
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 1
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** %209, align 8
  %211 = load i32, i32* %19, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 3
  %215 = load i32**, i32*** %214, align 8
  %216 = load i32, i32* %19, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* %24, align 4
  %221 = sub nsw i32 %219, %220
  %222 = load i32, i32* %23, align 4
  %223 = add nsw i32 %221, %222
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32*, i32** %215, i64 %224
  store i32* %207, i32** %225, align 8
  br label %226

226:                                              ; preds = %194
  %227 = load i32, i32* %23, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %23, align 4
  br label %190

229:                                              ; preds = %190
  br label %292

230:                                              ; preds = %168, %130
  %231 = load i32, i32* %19, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 1
  %237 = load %struct.TYPE_4__*, %struct.TYPE_4__** %236, align 8
  %238 = load i32, i32* %19, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 0
  store i32 %234, i32* %241, align 8
  %242 = load i32, i32* %26, align 4
  %243 = load i32, i32* %25, align 4
  %244 = icmp sgt i32 %242, %243
  br i1 %244, label %245, label %247

245:                                              ; preds = %230
  %246 = load i32, i32* %25, align 4
  br label %249

247:                                              ; preds = %230
  %248 = load i32, i32* %26, align 4
  br label %249

249:                                              ; preds = %247, %245
  %250 = phi i32 [ %246, %245 ], [ %248, %247 ]
  store i32 %250, i32* %26, align 4
  %251 = load i32, i32* %26, align 4
  %252 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 1
  %254 = load %struct.TYPE_4__*, %struct.TYPE_4__** %253, align 8
  %255 = load i32, i32* %19, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %254, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i32 0, i32 2
  store i32 %251, i32* %258, align 8
  store i32 0, i32* %23, align 4
  br label %259

259:                                              ; preds = %288, %249
  %260 = load i32, i32* %23, align 4
  %261 = load i32, i32* %26, align 4
  %262 = icmp slt i32 %260, %261
  br i1 %262, label %263, label %291

263:                                              ; preds = %259
  %264 = load i32, i32* %19, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [4 x i32*], [4 x i32*]* %22, i64 0, i64 %265
  %267 = load i32*, i32** %266, align 8
  %268 = load i32, i32* %23, align 4
  %269 = load i32*, i32** %12, align 8
  %270 = load i32, i32* %19, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %269, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = mul nsw i32 %268, %273
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %267, i64 %275
  %277 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %278 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %277, i32 0, i32 1
  %279 = load %struct.TYPE_4__*, %struct.TYPE_4__** %278, align 8
  %280 = load i32, i32* %19, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %279, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %282, i32 0, i32 3
  %284 = load i32**, i32*** %283, align 8
  %285 = load i32, i32* %23, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32*, i32** %284, i64 %286
  store i32* %276, i32** %287, align 8
  br label %288

288:                                              ; preds = %263
  %289 = load i32, i32* %23, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %23, align 4
  br label %259

291:                                              ; preds = %259
  br label %292

292:                                              ; preds = %291, %229
  br label %293

293:                                              ; preds = %292
  %294 = load i32, i32* %19, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %19, align 4
  br label %127

296:                                              ; preds = %127
  ret i32 0
}

declare dso_local i32 @FFMAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

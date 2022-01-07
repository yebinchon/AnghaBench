; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_eedi2.c_eedi2_post_process_corner.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_eedi2.c_eedi2_post_process_corner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eedi2_post_process_corner(i32* %0, i32* %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7, i32 %8, i32 %9, i32 %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store i32* %0, i32** %12, align 8
  store i32* %1, i32** %13, align 8
  store i32* %2, i32** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32* %4, i32** %16, align 8
  store i32 %5, i32* %17, align 4
  store i32* %6, i32** %18, align 8
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store i32 %10, i32* %22, align 4
  %32 = load i32, i32* %22, align 4
  %33 = sub nsw i32 8, %32
  %34 = load i32, i32* %17, align 4
  %35 = mul nsw i32 %33, %34
  %36 = load i32*, i32** %16, align 8
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32* %38, i32** %16, align 8
  %39 = load i32, i32* %22, align 4
  %40 = sub nsw i32 8, %39
  %41 = load i32, i32* %19, align 4
  %42 = mul nsw i32 %40, %41
  %43 = load i32*, i32** %18, align 8
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32* %45, i32** %18, align 8
  %46 = load i32*, i32** %18, align 8
  %47 = load i32, i32* %19, align 4
  %48 = sext i32 %47 to i64
  %49 = sub i64 0, %48
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = bitcast i32* %50 to i8*
  store i8* %51, i8** %23, align 8
  %52 = load i32*, i32** %18, align 8
  %53 = load i32, i32* %19, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = bitcast i32* %55 to i8*
  store i8* %56, i8** %24, align 8
  %57 = load i32, i32* %15, align 4
  %58 = mul nsw i32 %57, 3
  %59 = load i32*, i32** %12, align 8
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  store i32* %61, i32** %12, align 8
  %62 = load i32, i32* %15, align 4
  %63 = mul nsw i32 %62, 3
  %64 = load i32*, i32** %13, align 8
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  store i32* %66, i32** %13, align 8
  %67 = load i32, i32* %15, align 4
  %68 = mul nsw i32 %67, 3
  %69 = load i32*, i32** %14, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  store i32* %71, i32** %14, align 8
  %72 = load i32*, i32** %12, align 8
  %73 = load i32, i32* %15, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32* %75, i32** %25, align 8
  %76 = load i32*, i32** %13, align 8
  %77 = load i32, i32* %15, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32* %79, i32** %26, align 8
  %80 = load i32*, i32** %14, align 8
  %81 = load i32, i32* %15, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32* %83, i32** %27, align 8
  %84 = load i32, i32* %22, align 4
  %85 = sub nsw i32 8, %84
  store i32 %85, i32* %29, align 4
  br label %86

86:                                               ; preds = %291, %11
  %87 = load i32, i32* %29, align 4
  %88 = load i32, i32* %20, align 4
  %89 = sub nsw i32 %88, 7
  %90 = icmp slt i32 %87, %89
  br i1 %90, label %91, label %294

91:                                               ; preds = %86
  store i32 4, i32* %28, align 4
  br label %92

92:                                               ; preds = %243, %91
  %93 = load i32, i32* %28, align 4
  %94 = load i32, i32* %21, align 4
  %95 = sub nsw i32 %94, 4
  %96 = icmp slt i32 %93, %95
  br i1 %96, label %97, label %246

97:                                               ; preds = %92
  %98 = load i32*, i32** %16, align 8
  %99 = load i32, i32* %28, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, 255
  br i1 %103, label %111, label %104

104:                                              ; preds = %97
  %105 = load i32*, i32** %16, align 8
  %106 = load i32, i32* %28, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %109, 128
  br i1 %110, label %111, label %112

111:                                              ; preds = %104, %97
  br label %243

112:                                              ; preds = %104
  %113 = load i32*, i32** %12, align 8
  %114 = load i32, i32* %28, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load i32*, i32** %13, align 8
  %119 = load i32, i32* %28, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = mul nsw i32 %117, %122
  %124 = load i32*, i32** %14, align 8
  %125 = load i32, i32* %28, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = load i32*, i32** %14, align 8
  %130 = load i32, i32* %28, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = mul nsw i32 %128, %133
  %135 = sub nsw i32 %123, %134
  %136 = sitofp i32 %135 to double
  %137 = load i32*, i32** %12, align 8
  %138 = load i32, i32* %28, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load i32*, i32** %13, align 8
  %143 = load i32, i32* %28, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %141, %146
  %148 = sitofp i32 %147 to double
  %149 = fmul double 0x3FB70A3D70A3D70A, %148
  %150 = load i32*, i32** %12, align 8
  %151 = load i32, i32* %28, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = load i32*, i32** %13, align 8
  %156 = load i32, i32* %28, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %154, %159
  %161 = sitofp i32 %160 to double
  %162 = fmul double %149, %161
  %163 = fsub double %136, %162
  %164 = fptosi double %163 to i32
  store i32 %164, i32* %30, align 4
  %165 = load i32*, i32** %25, align 8
  %166 = load i32, i32* %28, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = load i32*, i32** %26, align 8
  %171 = load i32, i32* %28, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = mul nsw i32 %169, %174
  %176 = load i32*, i32** %27, align 8
  %177 = load i32, i32* %28, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = load i32*, i32** %27, align 8
  %182 = load i32, i32* %28, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = mul nsw i32 %180, %185
  %187 = sub nsw i32 %175, %186
  %188 = sitofp i32 %187 to double
  %189 = load i32*, i32** %25, align 8
  %190 = load i32, i32* %28, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = load i32*, i32** %26, align 8
  %195 = load i32, i32* %28, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = add nsw i32 %193, %198
  %200 = sitofp i32 %199 to double
  %201 = fmul double 0x3FB70A3D70A3D70A, %200
  %202 = load i32*, i32** %25, align 8
  %203 = load i32, i32* %28, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = load i32*, i32** %26, align 8
  %208 = load i32, i32* %28, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = add nsw i32 %206, %211
  %213 = sitofp i32 %212 to double
  %214 = fmul double %201, %213
  %215 = fsub double %188, %214
  %216 = fptosi double %215 to i32
  store i32 %216, i32* %31, align 4
  %217 = load i32, i32* %30, align 4
  %218 = icmp sgt i32 %217, 775
  br i1 %218, label %222, label %219

219:                                              ; preds = %112
  %220 = load i32, i32* %31, align 4
  %221 = icmp sgt i32 %220, 775
  br i1 %221, label %222, label %242

222:                                              ; preds = %219, %112
  %223 = load i8*, i8** %23, align 8
  %224 = load i32, i32* %28, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i8, i8* %223, i64 %225
  %227 = load i8, i8* %226, align 1
  %228 = zext i8 %227 to i32
  %229 = load i8*, i8** %24, align 8
  %230 = load i32, i32* %28, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i8, i8* %229, i64 %231
  %233 = load i8, i8* %232, align 1
  %234 = zext i8 %233 to i32
  %235 = add nsw i32 %228, %234
  %236 = add nsw i32 %235, 1
  %237 = ashr i32 %236, 1
  %238 = load i32*, i32** %18, align 8
  %239 = load i32, i32* %28, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %238, i64 %240
  store i32 %237, i32* %241, align 4
  br label %242

242:                                              ; preds = %222, %219
  br label %243

243:                                              ; preds = %242, %111
  %244 = load i32, i32* %28, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %28, align 4
  br label %92

246:                                              ; preds = %92
  %247 = load i32, i32* %17, align 4
  %248 = mul nsw i32 %247, 2
  %249 = load i32*, i32** %16, align 8
  %250 = sext i32 %248 to i64
  %251 = getelementptr inbounds i32, i32* %249, i64 %250
  store i32* %251, i32** %16, align 8
  %252 = load i32, i32* %19, align 4
  %253 = mul nsw i32 %252, 2
  %254 = load i8*, i8** %23, align 8
  %255 = sext i32 %253 to i64
  %256 = getelementptr inbounds i8, i8* %254, i64 %255
  store i8* %256, i8** %23, align 8
  %257 = load i32, i32* %19, align 4
  %258 = mul nsw i32 %257, 2
  %259 = load i32*, i32** %18, align 8
  %260 = sext i32 %258 to i64
  %261 = getelementptr inbounds i32, i32* %259, i64 %260
  store i32* %261, i32** %18, align 8
  %262 = load i32, i32* %19, align 4
  %263 = mul nsw i32 %262, 2
  %264 = load i8*, i8** %24, align 8
  %265 = sext i32 %263 to i64
  %266 = getelementptr inbounds i8, i8* %264, i64 %265
  store i8* %266, i8** %24, align 8
  %267 = load i32, i32* %15, align 4
  %268 = load i32*, i32** %12, align 8
  %269 = sext i32 %267 to i64
  %270 = getelementptr inbounds i32, i32* %268, i64 %269
  store i32* %270, i32** %12, align 8
  %271 = load i32, i32* %15, align 4
  %272 = load i32*, i32** %25, align 8
  %273 = sext i32 %271 to i64
  %274 = getelementptr inbounds i32, i32* %272, i64 %273
  store i32* %274, i32** %25, align 8
  %275 = load i32, i32* %15, align 4
  %276 = load i32*, i32** %13, align 8
  %277 = sext i32 %275 to i64
  %278 = getelementptr inbounds i32, i32* %276, i64 %277
  store i32* %278, i32** %13, align 8
  %279 = load i32, i32* %15, align 4
  %280 = load i32*, i32** %26, align 8
  %281 = sext i32 %279 to i64
  %282 = getelementptr inbounds i32, i32* %280, i64 %281
  store i32* %282, i32** %26, align 8
  %283 = load i32, i32* %15, align 4
  %284 = load i32*, i32** %14, align 8
  %285 = sext i32 %283 to i64
  %286 = getelementptr inbounds i32, i32* %284, i64 %285
  store i32* %286, i32** %14, align 8
  %287 = load i32, i32* %15, align 4
  %288 = load i32*, i32** %27, align 8
  %289 = sext i32 %287 to i64
  %290 = getelementptr inbounds i32, i32* %288, i64 %289
  store i32* %290, i32** %27, align 8
  br label %291

291:                                              ; preds = %246
  %292 = load i32, i32* %29, align 4
  %293 = add nsw i32 %292, 2
  store i32 %293, i32* %29, align 4
  br label %86

294:                                              ; preds = %86
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

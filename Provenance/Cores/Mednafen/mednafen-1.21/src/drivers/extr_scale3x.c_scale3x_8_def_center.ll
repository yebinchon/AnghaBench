; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/drivers/extr_scale3x.c_scale3x_8_def_center.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/drivers/extr_scale3x.c_scale3x_8_def_center.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64*, i64*, i64*, i32)* @scale3x_8_def_center to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scale3x_8_def_center(i64* noalias %0, i64* noalias %1, i64* noalias %2, i64* noalias %3, i32 %4) #0 {
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  store i64* %0, i64** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %10, align 4
  %12 = icmp uge i32 %11, 2
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i64*, i64** %8, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64*, i64** %6, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  store i64 %17, i64* %19, align 8
  %20 = load i64*, i64** %8, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64*, i64** %6, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 1
  store i64 %22, i64* %24, align 8
  %25 = load i64*, i64** %7, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64*, i64** %9, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %27, %30
  br i1 %31, label %32, label %76

32:                                               ; preds = %5
  %33 = load i64*, i64** %8, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64*, i64** %7, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %35, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %32
  %41 = load i64*, i64** %8, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64*, i64** %9, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %43, %46
  br i1 %47, label %64, label %48

48:                                               ; preds = %40, %32
  %49 = load i64*, i64** %8, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64*, i64** %9, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %51, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %48
  %57 = load i64*, i64** %8, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64*, i64** %7, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %59, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %56, %40
  %65 = load i64*, i64** %8, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 1
  %67 = load i64, i64* %66, align 8
  br label %72

68:                                               ; preds = %56, %48
  %69 = load i64*, i64** %8, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 0
  %71 = load i64, i64* %70, align 8
  br label %72

72:                                               ; preds = %68, %64
  %73 = phi i64 [ %67, %64 ], [ %71, %68 ]
  %74 = load i64*, i64** %6, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 2
  store i64 %73, i64* %75, align 8
  br label %82

76:                                               ; preds = %5
  %77 = load i64*, i64** %8, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64*, i64** %6, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 2
  store i64 %79, i64* %81, align 8
  br label %82

82:                                               ; preds = %76, %72
  %83 = load i64*, i64** %7, align 8
  %84 = getelementptr inbounds i64, i64* %83, i32 1
  store i64* %84, i64** %7, align 8
  %85 = load i64*, i64** %8, align 8
  %86 = getelementptr inbounds i64, i64* %85, i32 1
  store i64* %86, i64** %8, align 8
  %87 = load i64*, i64** %9, align 8
  %88 = getelementptr inbounds i64, i64* %87, i32 1
  store i64* %88, i64** %9, align 8
  %89 = load i64*, i64** %6, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 3
  store i64* %90, i64** %6, align 8
  %91 = load i32, i32* %10, align 4
  %92 = sub i32 %91, 2
  store i32 %92, i32* %10, align 4
  br label %93

93:                                               ; preds = %220, %82
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %231

96:                                               ; preds = %93
  %97 = load i64*, i64** %7, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64*, i64** %9, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %99, %102
  br i1 %103, label %104, label %204

104:                                              ; preds = %96
  %105 = load i64*, i64** %8, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 -1
  %107 = load i64, i64* %106, align 8
  %108 = load i64*, i64** %8, align 8
  %109 = getelementptr inbounds i64, i64* %108, i64 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %107, %110
  br i1 %111, label %112, label %204

112:                                              ; preds = %104
  %113 = load i64*, i64** %8, align 8
  %114 = getelementptr inbounds i64, i64* %113, i64 -1
  %115 = load i64, i64* %114, align 8
  %116 = load i64*, i64** %7, align 8
  %117 = getelementptr inbounds i64, i64* %116, i64 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp eq i64 %115, %118
  br i1 %119, label %120, label %128

120:                                              ; preds = %112
  %121 = load i64*, i64** %8, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64*, i64** %9, align 8
  %125 = getelementptr inbounds i64, i64* %124, i64 -1
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %123, %126
  br i1 %127, label %144, label %128

128:                                              ; preds = %120, %112
  %129 = load i64*, i64** %8, align 8
  %130 = getelementptr inbounds i64, i64* %129, i64 -1
  %131 = load i64, i64* %130, align 8
  %132 = load i64*, i64** %9, align 8
  %133 = getelementptr inbounds i64, i64* %132, i64 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp eq i64 %131, %134
  br i1 %135, label %136, label %148

136:                                              ; preds = %128
  %137 = load i64*, i64** %8, align 8
  %138 = getelementptr inbounds i64, i64* %137, i64 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64*, i64** %7, align 8
  %141 = getelementptr inbounds i64, i64* %140, i64 -1
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %139, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %136, %120
  %145 = load i64*, i64** %8, align 8
  %146 = getelementptr inbounds i64, i64* %145, i64 -1
  %147 = load i64, i64* %146, align 8
  br label %152

148:                                              ; preds = %136, %128
  %149 = load i64*, i64** %8, align 8
  %150 = getelementptr inbounds i64, i64* %149, i64 0
  %151 = load i64, i64* %150, align 8
  br label %152

152:                                              ; preds = %148, %144
  %153 = phi i64 [ %147, %144 ], [ %151, %148 ]
  %154 = load i64*, i64** %6, align 8
  %155 = getelementptr inbounds i64, i64* %154, i64 0
  store i64 %153, i64* %155, align 8
  %156 = load i64*, i64** %8, align 8
  %157 = getelementptr inbounds i64, i64* %156, i64 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64*, i64** %6, align 8
  %160 = getelementptr inbounds i64, i64* %159, i64 1
  store i64 %158, i64* %160, align 8
  %161 = load i64*, i64** %8, align 8
  %162 = getelementptr inbounds i64, i64* %161, i64 1
  %163 = load i64, i64* %162, align 8
  %164 = load i64*, i64** %7, align 8
  %165 = getelementptr inbounds i64, i64* %164, i64 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp eq i64 %163, %166
  br i1 %167, label %168, label %176

168:                                              ; preds = %152
  %169 = load i64*, i64** %8, align 8
  %170 = getelementptr inbounds i64, i64* %169, i64 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64*, i64** %9, align 8
  %173 = getelementptr inbounds i64, i64* %172, i64 1
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %171, %174
  br i1 %175, label %192, label %176

176:                                              ; preds = %168, %152
  %177 = load i64*, i64** %8, align 8
  %178 = getelementptr inbounds i64, i64* %177, i64 1
  %179 = load i64, i64* %178, align 8
  %180 = load i64*, i64** %9, align 8
  %181 = getelementptr inbounds i64, i64* %180, i64 0
  %182 = load i64, i64* %181, align 8
  %183 = icmp eq i64 %179, %182
  br i1 %183, label %184, label %196

184:                                              ; preds = %176
  %185 = load i64*, i64** %8, align 8
  %186 = getelementptr inbounds i64, i64* %185, i64 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64*, i64** %7, align 8
  %189 = getelementptr inbounds i64, i64* %188, i64 1
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %187, %190
  br i1 %191, label %192, label %196

192:                                              ; preds = %184, %168
  %193 = load i64*, i64** %8, align 8
  %194 = getelementptr inbounds i64, i64* %193, i64 1
  %195 = load i64, i64* %194, align 8
  br label %200

196:                                              ; preds = %184, %176
  %197 = load i64*, i64** %8, align 8
  %198 = getelementptr inbounds i64, i64* %197, i64 0
  %199 = load i64, i64* %198, align 8
  br label %200

200:                                              ; preds = %196, %192
  %201 = phi i64 [ %195, %192 ], [ %199, %196 ]
  %202 = load i64*, i64** %6, align 8
  %203 = getelementptr inbounds i64, i64* %202, i64 2
  store i64 %201, i64* %203, align 8
  br label %220

204:                                              ; preds = %104, %96
  %205 = load i64*, i64** %8, align 8
  %206 = getelementptr inbounds i64, i64* %205, i64 0
  %207 = load i64, i64* %206, align 8
  %208 = load i64*, i64** %6, align 8
  %209 = getelementptr inbounds i64, i64* %208, i64 0
  store i64 %207, i64* %209, align 8
  %210 = load i64*, i64** %8, align 8
  %211 = getelementptr inbounds i64, i64* %210, i64 0
  %212 = load i64, i64* %211, align 8
  %213 = load i64*, i64** %6, align 8
  %214 = getelementptr inbounds i64, i64* %213, i64 1
  store i64 %212, i64* %214, align 8
  %215 = load i64*, i64** %8, align 8
  %216 = getelementptr inbounds i64, i64* %215, i64 0
  %217 = load i64, i64* %216, align 8
  %218 = load i64*, i64** %6, align 8
  %219 = getelementptr inbounds i64, i64* %218, i64 2
  store i64 %217, i64* %219, align 8
  br label %220

220:                                              ; preds = %204, %200
  %221 = load i64*, i64** %7, align 8
  %222 = getelementptr inbounds i64, i64* %221, i32 1
  store i64* %222, i64** %7, align 8
  %223 = load i64*, i64** %8, align 8
  %224 = getelementptr inbounds i64, i64* %223, i32 1
  store i64* %224, i64** %8, align 8
  %225 = load i64*, i64** %9, align 8
  %226 = getelementptr inbounds i64, i64* %225, i32 1
  store i64* %226, i64** %9, align 8
  %227 = load i64*, i64** %6, align 8
  %228 = getelementptr inbounds i64, i64* %227, i64 3
  store i64* %228, i64** %6, align 8
  %229 = load i32, i32* %10, align 4
  %230 = add i32 %229, -1
  store i32 %230, i32* %10, align 4
  br label %93

231:                                              ; preds = %93
  %232 = load i64*, i64** %7, align 8
  %233 = getelementptr inbounds i64, i64* %232, i64 0
  %234 = load i64, i64* %233, align 8
  %235 = load i64*, i64** %9, align 8
  %236 = getelementptr inbounds i64, i64* %235, i64 0
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %234, %237
  br i1 %238, label %239, label %283

239:                                              ; preds = %231
  %240 = load i64*, i64** %8, align 8
  %241 = getelementptr inbounds i64, i64* %240, i64 -1
  %242 = load i64, i64* %241, align 8
  %243 = load i64*, i64** %7, align 8
  %244 = getelementptr inbounds i64, i64* %243, i64 0
  %245 = load i64, i64* %244, align 8
  %246 = icmp eq i64 %242, %245
  br i1 %246, label %247, label %255

247:                                              ; preds = %239
  %248 = load i64*, i64** %8, align 8
  %249 = getelementptr inbounds i64, i64* %248, i64 0
  %250 = load i64, i64* %249, align 8
  %251 = load i64*, i64** %9, align 8
  %252 = getelementptr inbounds i64, i64* %251, i64 -1
  %253 = load i64, i64* %252, align 8
  %254 = icmp ne i64 %250, %253
  br i1 %254, label %271, label %255

255:                                              ; preds = %247, %239
  %256 = load i64*, i64** %8, align 8
  %257 = getelementptr inbounds i64, i64* %256, i64 -1
  %258 = load i64, i64* %257, align 8
  %259 = load i64*, i64** %9, align 8
  %260 = getelementptr inbounds i64, i64* %259, i64 0
  %261 = load i64, i64* %260, align 8
  %262 = icmp eq i64 %258, %261
  br i1 %262, label %263, label %275

263:                                              ; preds = %255
  %264 = load i64*, i64** %8, align 8
  %265 = getelementptr inbounds i64, i64* %264, i64 0
  %266 = load i64, i64* %265, align 8
  %267 = load i64*, i64** %7, align 8
  %268 = getelementptr inbounds i64, i64* %267, i64 -1
  %269 = load i64, i64* %268, align 8
  %270 = icmp ne i64 %266, %269
  br i1 %270, label %271, label %275

271:                                              ; preds = %263, %247
  %272 = load i64*, i64** %8, align 8
  %273 = getelementptr inbounds i64, i64* %272, i64 -1
  %274 = load i64, i64* %273, align 8
  br label %279

275:                                              ; preds = %263, %255
  %276 = load i64*, i64** %8, align 8
  %277 = getelementptr inbounds i64, i64* %276, i64 0
  %278 = load i64, i64* %277, align 8
  br label %279

279:                                              ; preds = %275, %271
  %280 = phi i64 [ %274, %271 ], [ %278, %275 ]
  %281 = load i64*, i64** %6, align 8
  %282 = getelementptr inbounds i64, i64* %281, i64 0
  store i64 %280, i64* %282, align 8
  br label %289

283:                                              ; preds = %231
  %284 = load i64*, i64** %8, align 8
  %285 = getelementptr inbounds i64, i64* %284, i64 0
  %286 = load i64, i64* %285, align 8
  %287 = load i64*, i64** %6, align 8
  %288 = getelementptr inbounds i64, i64* %287, i64 0
  store i64 %286, i64* %288, align 8
  br label %289

289:                                              ; preds = %283, %279
  %290 = load i64*, i64** %8, align 8
  %291 = getelementptr inbounds i64, i64* %290, i64 0
  %292 = load i64, i64* %291, align 8
  %293 = load i64*, i64** %6, align 8
  %294 = getelementptr inbounds i64, i64* %293, i64 1
  store i64 %292, i64* %294, align 8
  %295 = load i64*, i64** %8, align 8
  %296 = getelementptr inbounds i64, i64* %295, i64 0
  %297 = load i64, i64* %296, align 8
  %298 = load i64*, i64** %6, align 8
  %299 = getelementptr inbounds i64, i64* %298, i64 2
  store i64 %297, i64* %299, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

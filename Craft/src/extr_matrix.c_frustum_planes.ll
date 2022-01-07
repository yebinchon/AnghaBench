; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_matrix.c_frustum_planes.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_matrix.c_frustum_planes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @frustum_planes([4 x float]* %0, i32 %1, float* %2) #0 {
  %4 = alloca [4 x float]*, align 8
  %5 = alloca i32, align 4
  %6 = alloca float*, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float*, align 8
  store [4 x float]* %0, [4 x float]** %4, align 8
  store i32 %1, i32* %5, align 4
  store float* %2, float** %6, align 8
  store float 1.250000e-01, float* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = mul nsw i32 %10, 32
  %12 = add nsw i32 %11, 64
  %13 = sitofp i32 %12 to float
  store float %13, float* %8, align 4
  %14 = load float*, float** %6, align 8
  store float* %14, float** %9, align 8
  %15 = load float*, float** %9, align 8
  %16 = getelementptr inbounds float, float* %15, i64 3
  %17 = load float, float* %16, align 4
  %18 = load float*, float** %9, align 8
  %19 = getelementptr inbounds float, float* %18, i64 0
  %20 = load float, float* %19, align 4
  %21 = fadd float %17, %20
  %22 = load [4 x float]*, [4 x float]** %4, align 8
  %23 = getelementptr inbounds [4 x float], [4 x float]* %22, i64 0
  %24 = getelementptr inbounds [4 x float], [4 x float]* %23, i64 0, i64 0
  store float %21, float* %24, align 4
  %25 = load float*, float** %9, align 8
  %26 = getelementptr inbounds float, float* %25, i64 7
  %27 = load float, float* %26, align 4
  %28 = load float*, float** %9, align 8
  %29 = getelementptr inbounds float, float* %28, i64 4
  %30 = load float, float* %29, align 4
  %31 = fadd float %27, %30
  %32 = load [4 x float]*, [4 x float]** %4, align 8
  %33 = getelementptr inbounds [4 x float], [4 x float]* %32, i64 0
  %34 = getelementptr inbounds [4 x float], [4 x float]* %33, i64 0, i64 1
  store float %31, float* %34, align 4
  %35 = load float*, float** %9, align 8
  %36 = getelementptr inbounds float, float* %35, i64 11
  %37 = load float, float* %36, align 4
  %38 = load float*, float** %9, align 8
  %39 = getelementptr inbounds float, float* %38, i64 8
  %40 = load float, float* %39, align 4
  %41 = fadd float %37, %40
  %42 = load [4 x float]*, [4 x float]** %4, align 8
  %43 = getelementptr inbounds [4 x float], [4 x float]* %42, i64 0
  %44 = getelementptr inbounds [4 x float], [4 x float]* %43, i64 0, i64 2
  store float %41, float* %44, align 4
  %45 = load float*, float** %9, align 8
  %46 = getelementptr inbounds float, float* %45, i64 15
  %47 = load float, float* %46, align 4
  %48 = load float*, float** %9, align 8
  %49 = getelementptr inbounds float, float* %48, i64 12
  %50 = load float, float* %49, align 4
  %51 = fadd float %47, %50
  %52 = load [4 x float]*, [4 x float]** %4, align 8
  %53 = getelementptr inbounds [4 x float], [4 x float]* %52, i64 0
  %54 = getelementptr inbounds [4 x float], [4 x float]* %53, i64 0, i64 3
  store float %51, float* %54, align 4
  %55 = load float*, float** %9, align 8
  %56 = getelementptr inbounds float, float* %55, i64 3
  %57 = load float, float* %56, align 4
  %58 = load float*, float** %9, align 8
  %59 = getelementptr inbounds float, float* %58, i64 0
  %60 = load float, float* %59, align 4
  %61 = fsub float %57, %60
  %62 = load [4 x float]*, [4 x float]** %4, align 8
  %63 = getelementptr inbounds [4 x float], [4 x float]* %62, i64 1
  %64 = getelementptr inbounds [4 x float], [4 x float]* %63, i64 0, i64 0
  store float %61, float* %64, align 4
  %65 = load float*, float** %9, align 8
  %66 = getelementptr inbounds float, float* %65, i64 7
  %67 = load float, float* %66, align 4
  %68 = load float*, float** %9, align 8
  %69 = getelementptr inbounds float, float* %68, i64 4
  %70 = load float, float* %69, align 4
  %71 = fsub float %67, %70
  %72 = load [4 x float]*, [4 x float]** %4, align 8
  %73 = getelementptr inbounds [4 x float], [4 x float]* %72, i64 1
  %74 = getelementptr inbounds [4 x float], [4 x float]* %73, i64 0, i64 1
  store float %71, float* %74, align 4
  %75 = load float*, float** %9, align 8
  %76 = getelementptr inbounds float, float* %75, i64 11
  %77 = load float, float* %76, align 4
  %78 = load float*, float** %9, align 8
  %79 = getelementptr inbounds float, float* %78, i64 8
  %80 = load float, float* %79, align 4
  %81 = fsub float %77, %80
  %82 = load [4 x float]*, [4 x float]** %4, align 8
  %83 = getelementptr inbounds [4 x float], [4 x float]* %82, i64 1
  %84 = getelementptr inbounds [4 x float], [4 x float]* %83, i64 0, i64 2
  store float %81, float* %84, align 4
  %85 = load float*, float** %9, align 8
  %86 = getelementptr inbounds float, float* %85, i64 15
  %87 = load float, float* %86, align 4
  %88 = load float*, float** %9, align 8
  %89 = getelementptr inbounds float, float* %88, i64 12
  %90 = load float, float* %89, align 4
  %91 = fsub float %87, %90
  %92 = load [4 x float]*, [4 x float]** %4, align 8
  %93 = getelementptr inbounds [4 x float], [4 x float]* %92, i64 1
  %94 = getelementptr inbounds [4 x float], [4 x float]* %93, i64 0, i64 3
  store float %91, float* %94, align 4
  %95 = load float*, float** %9, align 8
  %96 = getelementptr inbounds float, float* %95, i64 3
  %97 = load float, float* %96, align 4
  %98 = load float*, float** %9, align 8
  %99 = getelementptr inbounds float, float* %98, i64 1
  %100 = load float, float* %99, align 4
  %101 = fadd float %97, %100
  %102 = load [4 x float]*, [4 x float]** %4, align 8
  %103 = getelementptr inbounds [4 x float], [4 x float]* %102, i64 2
  %104 = getelementptr inbounds [4 x float], [4 x float]* %103, i64 0, i64 0
  store float %101, float* %104, align 4
  %105 = load float*, float** %9, align 8
  %106 = getelementptr inbounds float, float* %105, i64 7
  %107 = load float, float* %106, align 4
  %108 = load float*, float** %9, align 8
  %109 = getelementptr inbounds float, float* %108, i64 5
  %110 = load float, float* %109, align 4
  %111 = fadd float %107, %110
  %112 = load [4 x float]*, [4 x float]** %4, align 8
  %113 = getelementptr inbounds [4 x float], [4 x float]* %112, i64 2
  %114 = getelementptr inbounds [4 x float], [4 x float]* %113, i64 0, i64 1
  store float %111, float* %114, align 4
  %115 = load float*, float** %9, align 8
  %116 = getelementptr inbounds float, float* %115, i64 11
  %117 = load float, float* %116, align 4
  %118 = load float*, float** %9, align 8
  %119 = getelementptr inbounds float, float* %118, i64 9
  %120 = load float, float* %119, align 4
  %121 = fadd float %117, %120
  %122 = load [4 x float]*, [4 x float]** %4, align 8
  %123 = getelementptr inbounds [4 x float], [4 x float]* %122, i64 2
  %124 = getelementptr inbounds [4 x float], [4 x float]* %123, i64 0, i64 2
  store float %121, float* %124, align 4
  %125 = load float*, float** %9, align 8
  %126 = getelementptr inbounds float, float* %125, i64 15
  %127 = load float, float* %126, align 4
  %128 = load float*, float** %9, align 8
  %129 = getelementptr inbounds float, float* %128, i64 13
  %130 = load float, float* %129, align 4
  %131 = fadd float %127, %130
  %132 = load [4 x float]*, [4 x float]** %4, align 8
  %133 = getelementptr inbounds [4 x float], [4 x float]* %132, i64 2
  %134 = getelementptr inbounds [4 x float], [4 x float]* %133, i64 0, i64 3
  store float %131, float* %134, align 4
  %135 = load float*, float** %9, align 8
  %136 = getelementptr inbounds float, float* %135, i64 3
  %137 = load float, float* %136, align 4
  %138 = load float*, float** %9, align 8
  %139 = getelementptr inbounds float, float* %138, i64 1
  %140 = load float, float* %139, align 4
  %141 = fsub float %137, %140
  %142 = load [4 x float]*, [4 x float]** %4, align 8
  %143 = getelementptr inbounds [4 x float], [4 x float]* %142, i64 3
  %144 = getelementptr inbounds [4 x float], [4 x float]* %143, i64 0, i64 0
  store float %141, float* %144, align 4
  %145 = load float*, float** %9, align 8
  %146 = getelementptr inbounds float, float* %145, i64 7
  %147 = load float, float* %146, align 4
  %148 = load float*, float** %9, align 8
  %149 = getelementptr inbounds float, float* %148, i64 5
  %150 = load float, float* %149, align 4
  %151 = fsub float %147, %150
  %152 = load [4 x float]*, [4 x float]** %4, align 8
  %153 = getelementptr inbounds [4 x float], [4 x float]* %152, i64 3
  %154 = getelementptr inbounds [4 x float], [4 x float]* %153, i64 0, i64 1
  store float %151, float* %154, align 4
  %155 = load float*, float** %9, align 8
  %156 = getelementptr inbounds float, float* %155, i64 11
  %157 = load float, float* %156, align 4
  %158 = load float*, float** %9, align 8
  %159 = getelementptr inbounds float, float* %158, i64 9
  %160 = load float, float* %159, align 4
  %161 = fsub float %157, %160
  %162 = load [4 x float]*, [4 x float]** %4, align 8
  %163 = getelementptr inbounds [4 x float], [4 x float]* %162, i64 3
  %164 = getelementptr inbounds [4 x float], [4 x float]* %163, i64 0, i64 2
  store float %161, float* %164, align 4
  %165 = load float*, float** %9, align 8
  %166 = getelementptr inbounds float, float* %165, i64 15
  %167 = load float, float* %166, align 4
  %168 = load float*, float** %9, align 8
  %169 = getelementptr inbounds float, float* %168, i64 13
  %170 = load float, float* %169, align 4
  %171 = fsub float %167, %170
  %172 = load [4 x float]*, [4 x float]** %4, align 8
  %173 = getelementptr inbounds [4 x float], [4 x float]* %172, i64 3
  %174 = getelementptr inbounds [4 x float], [4 x float]* %173, i64 0, i64 3
  store float %171, float* %174, align 4
  %175 = load float, float* %7, align 4
  %176 = load float*, float** %9, align 8
  %177 = getelementptr inbounds float, float* %176, i64 3
  %178 = load float, float* %177, align 4
  %179 = fmul float %175, %178
  %180 = load float*, float** %9, align 8
  %181 = getelementptr inbounds float, float* %180, i64 2
  %182 = load float, float* %181, align 4
  %183 = fadd float %179, %182
  %184 = load [4 x float]*, [4 x float]** %4, align 8
  %185 = getelementptr inbounds [4 x float], [4 x float]* %184, i64 4
  %186 = getelementptr inbounds [4 x float], [4 x float]* %185, i64 0, i64 0
  store float %183, float* %186, align 4
  %187 = load float, float* %7, align 4
  %188 = load float*, float** %9, align 8
  %189 = getelementptr inbounds float, float* %188, i64 7
  %190 = load float, float* %189, align 4
  %191 = fmul float %187, %190
  %192 = load float*, float** %9, align 8
  %193 = getelementptr inbounds float, float* %192, i64 6
  %194 = load float, float* %193, align 4
  %195 = fadd float %191, %194
  %196 = load [4 x float]*, [4 x float]** %4, align 8
  %197 = getelementptr inbounds [4 x float], [4 x float]* %196, i64 4
  %198 = getelementptr inbounds [4 x float], [4 x float]* %197, i64 0, i64 1
  store float %195, float* %198, align 4
  %199 = load float, float* %7, align 4
  %200 = load float*, float** %9, align 8
  %201 = getelementptr inbounds float, float* %200, i64 11
  %202 = load float, float* %201, align 4
  %203 = fmul float %199, %202
  %204 = load float*, float** %9, align 8
  %205 = getelementptr inbounds float, float* %204, i64 10
  %206 = load float, float* %205, align 4
  %207 = fadd float %203, %206
  %208 = load [4 x float]*, [4 x float]** %4, align 8
  %209 = getelementptr inbounds [4 x float], [4 x float]* %208, i64 4
  %210 = getelementptr inbounds [4 x float], [4 x float]* %209, i64 0, i64 2
  store float %207, float* %210, align 4
  %211 = load float, float* %7, align 4
  %212 = load float*, float** %9, align 8
  %213 = getelementptr inbounds float, float* %212, i64 15
  %214 = load float, float* %213, align 4
  %215 = fmul float %211, %214
  %216 = load float*, float** %9, align 8
  %217 = getelementptr inbounds float, float* %216, i64 14
  %218 = load float, float* %217, align 4
  %219 = fadd float %215, %218
  %220 = load [4 x float]*, [4 x float]** %4, align 8
  %221 = getelementptr inbounds [4 x float], [4 x float]* %220, i64 4
  %222 = getelementptr inbounds [4 x float], [4 x float]* %221, i64 0, i64 3
  store float %219, float* %222, align 4
  %223 = load float, float* %8, align 4
  %224 = load float*, float** %9, align 8
  %225 = getelementptr inbounds float, float* %224, i64 3
  %226 = load float, float* %225, align 4
  %227 = fmul float %223, %226
  %228 = load float*, float** %9, align 8
  %229 = getelementptr inbounds float, float* %228, i64 2
  %230 = load float, float* %229, align 4
  %231 = fsub float %227, %230
  %232 = load [4 x float]*, [4 x float]** %4, align 8
  %233 = getelementptr inbounds [4 x float], [4 x float]* %232, i64 5
  %234 = getelementptr inbounds [4 x float], [4 x float]* %233, i64 0, i64 0
  store float %231, float* %234, align 4
  %235 = load float, float* %8, align 4
  %236 = load float*, float** %9, align 8
  %237 = getelementptr inbounds float, float* %236, i64 7
  %238 = load float, float* %237, align 4
  %239 = fmul float %235, %238
  %240 = load float*, float** %9, align 8
  %241 = getelementptr inbounds float, float* %240, i64 6
  %242 = load float, float* %241, align 4
  %243 = fsub float %239, %242
  %244 = load [4 x float]*, [4 x float]** %4, align 8
  %245 = getelementptr inbounds [4 x float], [4 x float]* %244, i64 5
  %246 = getelementptr inbounds [4 x float], [4 x float]* %245, i64 0, i64 1
  store float %243, float* %246, align 4
  %247 = load float, float* %8, align 4
  %248 = load float*, float** %9, align 8
  %249 = getelementptr inbounds float, float* %248, i64 11
  %250 = load float, float* %249, align 4
  %251 = fmul float %247, %250
  %252 = load float*, float** %9, align 8
  %253 = getelementptr inbounds float, float* %252, i64 10
  %254 = load float, float* %253, align 4
  %255 = fsub float %251, %254
  %256 = load [4 x float]*, [4 x float]** %4, align 8
  %257 = getelementptr inbounds [4 x float], [4 x float]* %256, i64 5
  %258 = getelementptr inbounds [4 x float], [4 x float]* %257, i64 0, i64 2
  store float %255, float* %258, align 4
  %259 = load float, float* %8, align 4
  %260 = load float*, float** %9, align 8
  %261 = getelementptr inbounds float, float* %260, i64 15
  %262 = load float, float* %261, align 4
  %263 = fmul float %259, %262
  %264 = load float*, float** %9, align 8
  %265 = getelementptr inbounds float, float* %264, i64 14
  %266 = load float, float* %265, align 4
  %267 = fsub float %263, %266
  %268 = load [4 x float]*, [4 x float]** %4, align 8
  %269 = getelementptr inbounds [4 x float], [4 x float]* %268, i64 5
  %270 = getelementptr inbounds [4 x float], [4 x float]* %269, i64 0, i64 3
  store float %267, float* %270, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

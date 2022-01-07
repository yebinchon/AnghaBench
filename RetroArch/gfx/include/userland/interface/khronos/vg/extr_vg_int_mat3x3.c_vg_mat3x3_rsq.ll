; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/vg/extr_vg_int_mat3x3.c_vg_mat3x3_rsq.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/vg/extr_vg_int_mat3x3.c_vg_mat3x3_rsq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float** }

@EPS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vg_mat3x3_rsq(%struct.TYPE_3__* %0, float* %1, float* %2, float* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store float* %1, float** %6, align 8
  store float* %2, float** %7, align 8
  store float* %3, float** %8, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load float**, float*** %19, align 8
  %21 = getelementptr inbounds float*, float** %20, i64 0
  %22 = load float*, float** %21, align 8
  %23 = getelementptr inbounds float, float* %22, i64 0
  %24 = load float, float* %23, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load float**, float*** %26, align 8
  %28 = getelementptr inbounds float*, float** %27, i64 0
  %29 = load float*, float** %28, align 8
  %30 = getelementptr inbounds float, float* %29, i64 0
  %31 = load float, float* %30, align 4
  %32 = fmul float %24, %31
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load float**, float*** %34, align 8
  %36 = getelementptr inbounds float*, float** %35, i64 0
  %37 = load float*, float** %36, align 8
  %38 = getelementptr inbounds float, float* %37, i64 1
  %39 = load float, float* %38, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load float**, float*** %41, align 8
  %43 = getelementptr inbounds float*, float** %42, i64 0
  %44 = load float*, float** %43, align 8
  %45 = getelementptr inbounds float, float* %44, i64 1
  %46 = load float, float* %45, align 4
  %47 = fmul float %39, %46
  %48 = fadd float %32, %47
  store float %48, float* %9, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load float**, float*** %50, align 8
  %52 = getelementptr inbounds float*, float** %51, i64 0
  %53 = load float*, float** %52, align 8
  %54 = getelementptr inbounds float, float* %53, i64 0
  %55 = load float, float* %54, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load float**, float*** %57, align 8
  %59 = getelementptr inbounds float*, float** %58, i64 1
  %60 = load float*, float** %59, align 8
  %61 = getelementptr inbounds float, float* %60, i64 0
  %62 = load float, float* %61, align 4
  %63 = fmul float %55, %62
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load float**, float*** %65, align 8
  %67 = getelementptr inbounds float*, float** %66, i64 0
  %68 = load float*, float** %67, align 8
  %69 = getelementptr inbounds float, float* %68, i64 1
  %70 = load float, float* %69, align 4
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load float**, float*** %72, align 8
  %74 = getelementptr inbounds float*, float** %73, i64 1
  %75 = load float*, float** %74, align 8
  %76 = getelementptr inbounds float, float* %75, i64 1
  %77 = load float, float* %76, align 4
  %78 = fmul float %70, %77
  %79 = fadd float %63, %78
  store float %79, float* %10, align 4
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load float**, float*** %81, align 8
  %83 = getelementptr inbounds float*, float** %82, i64 1
  %84 = load float*, float** %83, align 8
  %85 = getelementptr inbounds float, float* %84, i64 0
  %86 = load float, float* %85, align 4
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load float**, float*** %88, align 8
  %90 = getelementptr inbounds float*, float** %89, i64 1
  %91 = load float*, float** %90, align 8
  %92 = getelementptr inbounds float, float* %91, i64 0
  %93 = load float, float* %92, align 4
  %94 = fmul float %86, %93
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load float**, float*** %96, align 8
  %98 = getelementptr inbounds float*, float** %97, i64 1
  %99 = load float*, float** %98, align 8
  %100 = getelementptr inbounds float, float* %99, i64 1
  %101 = load float, float* %100, align 4
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load float**, float*** %103, align 8
  %105 = getelementptr inbounds float*, float** %104, i64 1
  %106 = load float*, float** %105, align 8
  %107 = getelementptr inbounds float, float* %106, i64 1
  %108 = load float, float* %107, align 4
  %109 = fmul float %101, %108
  %110 = fadd float %94, %109
  store float %110, float* %11, align 4
  %111 = load float, float* %9, align 4
  %112 = load float, float* %11, align 4
  %113 = fadd float %111, %112
  store float %113, float* %12, align 4
  %114 = load float, float* %9, align 4
  %115 = load float, float* %11, align 4
  %116 = fsub float %114, %115
  store float %116, float* %13, align 4
  %117 = load float, float* %13, align 4
  %118 = load float, float* %13, align 4
  %119 = fmul float %117, %118
  %120 = load float, float* %10, align 4
  %121 = fmul float 4.000000e+00, %120
  %122 = load float, float* %10, align 4
  %123 = fmul float %121, %122
  %124 = fadd float %119, %123
  %125 = call float @sqrt_(float %124)
  store float %125, float* %14, align 4
  %126 = load float, float* %12, align 4
  %127 = load float, float* %14, align 4
  %128 = fadd float %126, %127
  %129 = fmul float %128, 5.000000e-01
  store float %129, float* %15, align 4
  %130 = load float*, float** %7, align 8
  %131 = icmp ne float* %130, null
  br i1 %131, label %132, label %136

132:                                              ; preds = %4
  %133 = load float, float* %15, align 4
  %134 = call float @sqrt_(float %133)
  %135 = load float*, float** %7, align 8
  store float %134, float* %135, align 4
  br label %136

136:                                              ; preds = %132, %4
  %137 = load float*, float** %8, align 8
  %138 = icmp ne float* %137, null
  br i1 %138, label %139, label %147

139:                                              ; preds = %136
  %140 = load float, float* %12, align 4
  %141 = load float, float* %14, align 4
  %142 = fsub float %140, %141
  %143 = call float @_maxf(float %142, float 0.000000e+00)
  %144 = fmul float %143, 5.000000e-01
  %145 = call float @sqrt_(float %144)
  %146 = load float*, float** %8, align 8
  store float %145, float* %146, align 4
  br label %147

147:                                              ; preds = %139, %136
  %148 = load float*, float** %6, align 8
  %149 = icmp ne float* %148, null
  br i1 %149, label %150, label %178

150:                                              ; preds = %147
  %151 = load float, float* %15, align 4
  %152 = load float, float* %11, align 4
  %153 = fsub float %151, %152
  %154 = load float, float* %10, align 4
  %155 = fadd float %153, %154
  store float %155, float* %16, align 4
  %156 = load float, float* %15, align 4
  %157 = load float, float* %9, align 4
  %158 = fsub float %156, %157
  %159 = load float, float* %10, align 4
  %160 = fadd float %158, %159
  store float %160, float* %17, align 4
  %161 = load float, float* %16, align 4
  %162 = call i64 @absf_(float %161)
  %163 = load i64, i64* @EPS, align 8
  %164 = icmp slt i64 %162, %163
  br i1 %164, label %165, label %171

165:                                              ; preds = %150
  %166 = load float, float* %17, align 4
  %167 = call i64 @absf_(float %166)
  %168 = load i64, i64* @EPS, align 8
  %169 = icmp slt i64 %167, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %165
  br label %175

171:                                              ; preds = %165, %150
  %172 = load float, float* %17, align 4
  %173 = load float, float* %16, align 4
  %174 = call float @atan2_(float %172, float %173)
  br label %175

175:                                              ; preds = %171, %170
  %176 = phi float [ 0.000000e+00, %170 ], [ %174, %171 ]
  %177 = load float*, float** %6, align 8
  store float %176, float* %177, align 4
  br label %178

178:                                              ; preds = %175, %147
  ret void
}

declare dso_local float @sqrt_(float) #1

declare dso_local float @_maxf(float, float) #1

declare dso_local i64 @absf_(float) #1

declare dso_local float @atan2_(float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

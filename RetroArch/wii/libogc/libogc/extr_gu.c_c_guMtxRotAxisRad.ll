; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gu.c_c_guMtxRotAxisRad.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gu.c_c_guMtxRotAxisRad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { float, float, float }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c_guMtxRotAxisRad(float** %0, %struct.TYPE_4__* %1, float %2) #0 {
  %4 = alloca float**, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  store float** %0, float*** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store float %2, float* %6, align 4
  %16 = load float, float* %6, align 4
  %17 = call float @sinf(float %16) #3
  store float %17, float* %7, align 4
  %18 = load float, float* %6, align 4
  %19 = call float @cosf(float %18) #3
  store float %19, float* %8, align 4
  %20 = load float, float* %8, align 4
  %21 = fsub float 1.000000e+00, %20
  store float %21, float* %9, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %23 = call i32 @c_guVecNormalize(%struct.TYPE_4__* %22)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load float, float* %25, align 4
  store float %26, float* %10, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load float, float* %28, align 4
  store float %29, float* %11, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load float, float* %31, align 4
  store float %32, float* %12, align 4
  %33 = load float, float* %10, align 4
  %34 = load float, float* %10, align 4
  %35 = fmul float %33, %34
  store float %35, float* %13, align 4
  %36 = load float, float* %11, align 4
  %37 = load float, float* %11, align 4
  %38 = fmul float %36, %37
  store float %38, float* %14, align 4
  %39 = load float, float* %12, align 4
  %40 = load float, float* %12, align 4
  %41 = fmul float %39, %40
  store float %41, float* %15, align 4
  %42 = load float, float* %9, align 4
  %43 = load float, float* %13, align 4
  %44 = fmul float %42, %43
  %45 = load float, float* %8, align 4
  %46 = fadd float %44, %45
  %47 = load float**, float*** %4, align 8
  %48 = getelementptr inbounds float*, float** %47, i64 0
  %49 = load float*, float** %48, align 8
  %50 = getelementptr inbounds float, float* %49, i64 0
  store float %46, float* %50, align 4
  %51 = load float, float* %9, align 4
  %52 = load float, float* %10, align 4
  %53 = fmul float %51, %52
  %54 = load float, float* %11, align 4
  %55 = fmul float %53, %54
  %56 = load float, float* %7, align 4
  %57 = load float, float* %12, align 4
  %58 = fmul float %56, %57
  %59 = fsub float %55, %58
  %60 = load float**, float*** %4, align 8
  %61 = getelementptr inbounds float*, float** %60, i64 0
  %62 = load float*, float** %61, align 8
  %63 = getelementptr inbounds float, float* %62, i64 1
  store float %59, float* %63, align 4
  %64 = load float, float* %9, align 4
  %65 = load float, float* %10, align 4
  %66 = fmul float %64, %65
  %67 = load float, float* %12, align 4
  %68 = fmul float %66, %67
  %69 = load float, float* %7, align 4
  %70 = load float, float* %11, align 4
  %71 = fmul float %69, %70
  %72 = fadd float %68, %71
  %73 = load float**, float*** %4, align 8
  %74 = getelementptr inbounds float*, float** %73, i64 0
  %75 = load float*, float** %74, align 8
  %76 = getelementptr inbounds float, float* %75, i64 2
  store float %72, float* %76, align 4
  %77 = load float**, float*** %4, align 8
  %78 = getelementptr inbounds float*, float** %77, i64 0
  %79 = load float*, float** %78, align 8
  %80 = getelementptr inbounds float, float* %79, i64 3
  store float 0.000000e+00, float* %80, align 4
  %81 = load float, float* %9, align 4
  %82 = load float, float* %10, align 4
  %83 = fmul float %81, %82
  %84 = load float, float* %11, align 4
  %85 = fmul float %83, %84
  %86 = load float, float* %7, align 4
  %87 = load float, float* %12, align 4
  %88 = fmul float %86, %87
  %89 = fadd float %85, %88
  %90 = load float**, float*** %4, align 8
  %91 = getelementptr inbounds float*, float** %90, i64 1
  %92 = load float*, float** %91, align 8
  %93 = getelementptr inbounds float, float* %92, i64 0
  store float %89, float* %93, align 4
  %94 = load float, float* %9, align 4
  %95 = load float, float* %14, align 4
  %96 = fmul float %94, %95
  %97 = load float, float* %8, align 4
  %98 = fadd float %96, %97
  %99 = load float**, float*** %4, align 8
  %100 = getelementptr inbounds float*, float** %99, i64 1
  %101 = load float*, float** %100, align 8
  %102 = getelementptr inbounds float, float* %101, i64 1
  store float %98, float* %102, align 4
  %103 = load float, float* %9, align 4
  %104 = load float, float* %11, align 4
  %105 = fmul float %103, %104
  %106 = load float, float* %12, align 4
  %107 = fmul float %105, %106
  %108 = load float, float* %7, align 4
  %109 = load float, float* %10, align 4
  %110 = fmul float %108, %109
  %111 = fsub float %107, %110
  %112 = load float**, float*** %4, align 8
  %113 = getelementptr inbounds float*, float** %112, i64 1
  %114 = load float*, float** %113, align 8
  %115 = getelementptr inbounds float, float* %114, i64 2
  store float %111, float* %115, align 4
  %116 = load float**, float*** %4, align 8
  %117 = getelementptr inbounds float*, float** %116, i64 1
  %118 = load float*, float** %117, align 8
  %119 = getelementptr inbounds float, float* %118, i64 3
  store float 0.000000e+00, float* %119, align 4
  %120 = load float, float* %9, align 4
  %121 = load float, float* %10, align 4
  %122 = fmul float %120, %121
  %123 = load float, float* %12, align 4
  %124 = fmul float %122, %123
  %125 = load float, float* %7, align 4
  %126 = load float, float* %11, align 4
  %127 = fmul float %125, %126
  %128 = fsub float %124, %127
  %129 = load float**, float*** %4, align 8
  %130 = getelementptr inbounds float*, float** %129, i64 2
  %131 = load float*, float** %130, align 8
  %132 = getelementptr inbounds float, float* %131, i64 0
  store float %128, float* %132, align 4
  %133 = load float, float* %9, align 4
  %134 = load float, float* %11, align 4
  %135 = fmul float %133, %134
  %136 = load float, float* %12, align 4
  %137 = fmul float %135, %136
  %138 = load float, float* %7, align 4
  %139 = load float, float* %10, align 4
  %140 = fmul float %138, %139
  %141 = fadd float %137, %140
  %142 = load float**, float*** %4, align 8
  %143 = getelementptr inbounds float*, float** %142, i64 2
  %144 = load float*, float** %143, align 8
  %145 = getelementptr inbounds float, float* %144, i64 1
  store float %141, float* %145, align 4
  %146 = load float, float* %9, align 4
  %147 = load float, float* %15, align 4
  %148 = fmul float %146, %147
  %149 = load float, float* %8, align 4
  %150 = fadd float %148, %149
  %151 = load float**, float*** %4, align 8
  %152 = getelementptr inbounds float*, float** %151, i64 2
  %153 = load float*, float** %152, align 8
  %154 = getelementptr inbounds float, float* %153, i64 2
  store float %150, float* %154, align 4
  %155 = load float**, float*** %4, align 8
  %156 = getelementptr inbounds float*, float** %155, i64 2
  %157 = load float*, float** %156, align 8
  %158 = getelementptr inbounds float, float* %157, i64 3
  store float 0.000000e+00, float* %158, align 4
  ret void
}

; Function Attrs: nounwind
declare dso_local float @sinf(float) #1

; Function Attrs: nounwind
declare dso_local float @cosf(float) #1

declare dso_local i32 @c_guVecNormalize(%struct.TYPE_4__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
